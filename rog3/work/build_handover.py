#!/usr/bin/env python3
"""從解壓根目錄建置 ROG 309；僅同簽章 APK 可選擇更新安裝。"""
import argparse
import os
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]
EXPECTED_CERT = "d4de1028a9b7c6ca8af055d4a96ee4b11ef2ee87239df067b966c25ec8b8377c"

def run(args, capture=False):
    result = subprocess.run([str(a) for a in args], check=True, text=True,
                            stdout=subprocess.PIPE if capture else None)
    return result.stdout if capture else None

def main():
    p = argparse.ArgumentParser()
    p.add_argument("--java-home", type=Path, required=True)
    p.add_argument("--android-sdk", type=Path, required=True)
    p.add_argument("--build-tools", default="35.0.0")
    p.add_argument("--platform", default="android-35")
    p.add_argument("--keystore", type=Path)
    p.add_argument("--alias", default="androiddebugkey")
    p.add_argument("--serial", help="只有同簽章驗證成功後才可更新安裝")
    args = p.parse_args()
    if args.serial and not args.keystore:
        p.error("更新安裝需要原簽章檔，不能使用其他電腦的新 debug key")
    java, javac = (args.java_home / "bin" / x for x in ("java", "javac"))
    sdk_tools = args.android_sdk / "build-tools" / args.build_tools
    android = args.android_sdk / "platforms" / args.platform / "android.jar"
    apktool = ROOT / "tools" / "apktool.jar"
    scratch = ROOT / "work" / "handover-build"
    classes, dex, stubs = (scratch / x for x in ("classes", "dex", "stubs/com/pikminx/helper"))
    for folder in (classes, dex, stubs): folder.mkdir(parents=True, exist_ok=True)
    (stubs / "PetalAccessibilityService.java").write_text(
        "package com.pikminx.helper; public abstract class PetalAccessibilityService extends android.accessibilityservice.AccessibilityService {public void handoverStartPlanting(){} public void handoverStartShortFeed(){}}")
    (stubs / "PetalCatalog.java").write_text(
        "package com.pikminx.helper; class PetalCatalog {static String canonicalName(String s){return s;}}")
    (stubs / "PetalMatcher.java").write_text(
        "package com.pikminx.helper; class PetalMatcher {record Token(String text,int left,int top,int right,int bottom){int centerX(){return (left+right)/2;}}}")
    (stubs / "FeedScreenAnalyzer.java").write_text(
        "package com.pikminx.helper; class FeedScreenAnalyzer {static java.util.List<String> allRecognizedFlowers(){return java.util.List.of();}}")
    (stubs / "ExpeditionScreenAnalyzer.java").write_text(
        "package com.pikminx.helper; class ExpeditionScreenAnalyzer {record Point(int x,int y){}}")
    sources = list((ROOT / "java/com/pikminx/helper").glob("Rog*.java"))
    run([javac, "-source", "17", "-target", "17", "-cp", android, "-d", classes,
         *stubs.glob("*.java"), *sources])
    # 編譯 stub 只供型別檢查，絕不打包以免覆蓋既有服務／目錄。
    run([java, "-cp", sdk_tools / "lib/d8.jar", "com.android.tools.r8.D8", "--lib", android,
         "--min-api", "30", "--output", dex, *classes.glob("com/pikminx/helper/Rog*.class")])
    disassemble = scratch / "Disassemble.java"
    disassemble.write_text('''import java.nio.file.*; import java.io.File;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.baksmali.Baksmali;
import com.android.tools.smali.baksmali.BaksmaliOptions;
public class Disassemble { public static void main(String[] a)throws Exception {
BaksmaliOptions o=new BaksmaliOptions();o.localsDirective=true;o.parameterRegisters=true;
Baksmali.disassembleDexFile(new DexBackedDexFile(new Opcodes(30,-1),Files.readAllBytes(Path.of(a[0])),0),new File(a[1]),2,o);}}''')
    run([javac, "-cp", apktool, "-d", classes, disassemble])
    run([java, "-cp", str(classes)+os.pathsep+str(apktool), "Disassemble", dex / "classes.dex",
         ROOT / "work/rog_src/smali_classes4"])
    unsigned = scratch / "PikminX-ROG3-maintenance-unsigned.apk"
    run([java, "-jar", apktool, "b", ROOT / "work/rog_src", "-p", scratch / "framework", "-o", unsigned])
    print("未簽署建置成功：", unsigned)
    if not args.keystore: return
    for env in ("PIKMINX_KEYSTORE_PASSWORD", "PIKMINX_KEY_PASSWORD"):
        if not os.environ.get(env): p.error("請透過環境變數設定 " + env + "；不要把密碼寫入公開腳本")
    aligned = scratch / "aligned.apk"
    run([sdk_tools / "zipalign", "-f", "-p", "4", unsigned, aligned])
    out = ROOT / "outputs/PikminX-ROG3-maintenance.apk"
    out.parent.mkdir(exist_ok=True)
    signer = [java, "-jar", sdk_tools / "lib/apksigner.jar"]
    run([*signer, "sign", "--ks", args.keystore, "--ks-key-alias", args.alias,
         "--ks-pass", "env:PIKMINX_KEYSTORE_PASSWORD", "--key-pass", "env:PIKMINX_KEY_PASSWORD",
         "--out", out, aligned])
    details = run([*signer, "verify", "--verbose", "--print-certs", out], capture=True)
    fingerprint = re.search(r"certificate SHA-256 digest: ([0-9a-f]+)", details)
    if not fingerprint or fingerprint.group(1) != EXPECTED_CERT:
        out.unlink(missing_ok=True)
        raise RuntimeError("簽章與手機現有版本不同；已移除不相容輸出，未安裝")
    run([sdk_tools / "zipalign", "-c", "4", out])
    print("同簽章及對齊驗證成功：", out)
    if args.serial:
        adb = args.android_sdk / "platform-tools/adb"
        run([adb, "-s", args.serial, "install", "-r", out])

if __name__ == "__main__": main()
