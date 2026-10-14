# PikminX 跨電腦接手包

解壓縮到新電腦上的獨立工作資料夾後，先完整閱讀 `HANDOVER.md`，再看 `outputs/PikminX-資源與部署研究.md`。所有工作路徑都以本資料夾為根目錄。`docs/AI_HANDOVER_GUIDE-original.md` 保留舊交接文件作為歷史參考，其中的舊電腦路徑不適用於新電腦。

## 包含內容

- `work/rog_src/`：最新完整 Smali 工作區；已排除可重建的 build/dist。
- `work/original-smali/`：本次修改前的兩個 Smali 原始備份。
- `work/*.py`：修改與差異產生腳本；patch 腳本只供追溯，來源已套用，勿直接重跑。
- `outputs/PikminX-ROG3-feeding-vision.apk`：先前已安裝及部分實測的版本。
- `outputs/PikminX-ROG3-feeding-vision-final.apk`：最新效能改善版，已簽署但尚未部署驗證。
- `outputs/PikminX-feeding-fix.patch`：完整 Smali 差異。
- `tools/apktool.jar`、`tools/uber-apk-signer.jar`。
- `tools/platform-tools/`：Windows ADB 與必要 DLL。其他作業系統請用 Google 官方 Platform-Tools。
- `MANIFEST.sha256`：包內每個檔案的 SHA256。

## 新電腦的必要準備

Windows 建議解壓到較短的路徑，例如 `C:\dev\pikminx`。若以 Git 取得來源，請啟用長路徑支援：

```powershell
git -c core.longpaths=true clone --branch codex/rog3-handover-20261014 https://github.com/armoruse/pik.git
git -C pik config core.longpaths true
```

1. 安裝 Java 17 執行環境。Python 3 僅在執行輔助腳本時需要；像素分析另外需要 Pillow 與 NumPy。
2. 用 USB 連接 ASUS ROG Phone 3，在手機確認這台新電腦的 USB 偵錯授權；預期 serial 為 `DEVICE_SERIAL`。
3. 在解壓根目錄核對：

```powershell
java -version
& '.\tools\platform-tools\adb.exe' devices -l
```

4. 先讀取實際手機畫面、PikminX 設定與無障礙服務狀態。測試設定與服務在舊電腦工作中尚未還原，詳細值見 HANDOVER.md。

## 打包與更新範例

```powershell
java -jar '.\tools\apktool.jar' b '.\work\rog_src' -o '.\work\repacked-unsigned.apk'
& '.\tools\platform-tools\adb.exe' -s DEVICE_SERIAL install -r '.\outputs\PikminX-ROG3-feeding-vision-final.apk'
```

已附的兩個 APK 都沿用手機上現有的簽章，可以直接更新安裝，不需要私鑰。後續若修改並重新打包，必須使用相同簽章才能 `install -r`；原電腦的 `debug.keystore` 未包含在本包，需由使用者另行安全移交。不能使用新電腦自動生成的 debug key 假裝是相同簽章，也不要為了安裝而先卸載、清資料。

此公開包提供 work/settings-template.xml 作為短測試範本；實測截圖和個人設定備份保留在使用者的私人移機包。DEVICE_SERIAL 需以 adb devices 查到的裝置序號取代。本包沒有外部帳號 token、簽章私鑰或完整遊戲資料。手機上的花苗、精華和遊戲進度不需要隨電腦搬移。
