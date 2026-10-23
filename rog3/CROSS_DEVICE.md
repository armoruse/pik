# 跨裝置接續開發與同步

GitHub 分支是公開程式與交接進度的共同來源。每台裝置另行設定 Git 推送權限、Java 17 JDK、Python 3.9 以上、Android SDK 與 ADB。私人移機包、原簽章、手機授權及模擬器登入不會隨 Git 自動搬移。

## 新裝置第一次

```sh
git -c core.longpaths=true clone --branch codex/rog3-handover-20261014 https://github.com/armoruse/pik.git
cd pik
git config core.longpaths true
python3 rog3/tools/sync_progress.py start
```

Windows 可用 `py -3` 替代 `python3`。確認 Git 的 user.name、user.email 與 GitHub 推送權限已設定；請透過正常憑證管理器或 SSH 授權，不要把 token 寫進腳本或遠端網址。

將 HANDOFF_PROMPT.md 的提示詞貼給新裝置的開發代理。它會讀 AGENTS.md 及 CURRENT_STATUS.md，才能接續最新進度。僅打開舊聊天室或舊 APK，不會自動帶入 GitHub 的新進度。

## 每次開始與結束

開始前，乾淨工作區執行 `python3 rog3/tools/sync_progress.py start`；工具僅快轉更新，不會覆蓋未提交修改。

結束前：

1. 更新 CURRENT_STATUS.md 並跑與本次改動相符的測試。
2. `git diff` 審查內容及敏感資料；`git add <已審查檔案>` 明確暫存，包含 CURRENT_STATUS.md。
3. `python3 rog3/tools/sync_progress.py finish --message "本次修改"`。
4. 看見「GitHub 同步已確認」及 SHA，才算同步完成。

工具不會盲目 git add、不會強推，也不會替你處理衝突。若其他裝置先推進，保留本地提交，檢查遠端差異，整合後重新測試再推送。共用同一分支時，最好等前一台裝置推送完成，再換另一台開始。

「自動同步」由根目錄 AGENTS.md 要求開發代理在每次結束執行，並附可驗證的工具；不是常駐程式。代理未讀規則、裝置離線、沒有推送權限或關機時，不能保證自動上傳。沒有部署定時工作或雲端讀取私人檔案。

## 可重跑的測試

```sh
python3 -m venv .venv
# macOS / Linux
.venv/bin/python -m pip install -r rog3/tools/mushroom_finder/requirements.txt
.venv/bin/python rog3/tools/run_checks.py --java-home /path/to/jdk17
# Windows 對應執行檔為 .venv\Scripts\python.exe，JDK 路徑需改成本機路徑
```

25 個 Python 測試與 4 組純 Java 檢查不需要手機。Android APK 建置仍需 SDK build-tools 35.0.0、platform android-35、Java 17。看 `python3 rog3/work/build_handover.py --help`。

## 手機目前版本的最小修正重建

舊交接來源與目前手機 APK 有其他功能差異。先從已授權手機取得目前 APK 到本機，再執行以下步驟（所有占位路徑必須自行替換）：

```sh
python3 rog3/work/build_handover.py --java-home JDK17 --android-sdk ANDROID_SDK
java -jar rog3/tools/apktool.jar d -p LOCAL_FRAMEWORK -o PHONE_SRC CURRENT_PHONE_APK
python3 rog3/work/patch_phone_fixes.py PHONE_SRC rog3/work/rog_src/smali_classes4/com/pikminx/helper
java -jar rog3/tools/apktool.jar b PHONE_SRC -p LOCAL_FRAMEWORK -o FIX_UNSIGNED_APK
```

PHONE_SRC、LOCAL_FRAMEWORK、CURRENT_PHONE_APK 及 FIX_UNSIGNED_APK 應放在忽略的本機工作目錄中；不要把完整手機 APK 或個人資料提交到 Git。修正版需使用原簽章，驗證指紋後才能 `adb -s DEVICE_SERIAL install -r`。候選版本為 rog1.0.3-test / versionCode 311，不等於已部署版本。

## 不會自動搬到新裝置的內容

- GitHub 推送憑證與原 APK 簽章私鑰。
- 手機的 USB 偵錯授權、個人設定及私人證據。
- Android AVD、SDK 安裝及遊戲登入。模擬器顯示與實體手機可能不同。
- 原電腦輸出目錄中的未簽署 APK。公開 release 仍依舊交接提供的下載位置，不能當成最新修正已簽署。
