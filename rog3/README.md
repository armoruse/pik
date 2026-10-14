# PikminX ROG Phone 3 維護版

這是 PikminX 的 ROG Phone 3 餵食辨識修正與跨電腦接手工作區。先閱讀 [接手說明](HANDOVER.md) 和 [新電腦準備方式](README_FIRST.md)。

目前修正版會以精華面板的黃、紅、藍篩選列定位搜尋圖示，適應抽屜不同高度；也加入搜尋前的卡片關閉判斷、有限重試與 700ms 的部分重試間隔。3 個色彩 predicate 在每次辨識時重用。

最新 APK 已完成重組、對齊及 v3 簽章驗證。先前版本的實機短測試看到精華由 287 減到 271；完整收花瓣與完成狀態，以及最新效能改善版的實測仍待接手完成。

## 取得 APK 與完整接手資料

請到本儲存庫的 Releases 下載：

- `PikminX-ROG3-feeding-vision-final.apk`：最新已簽署 APK，尚未部署實測。
- `PikminX-ROG3-feeding-vision.apk`：先前已安裝並做過部分實測的版本。
- `PikminX-public-handover.zip`：完整來源、工具、研究文件與實機接手資料。

APK 和大型移機包以 Release 附件保存。程式碼可直接 clone 到另一台電腦，原始碼位置為 `work/rog_src`。

## 新電腦重組

需要 Java 17；Windows ADB 已附於 `tools/platform-tools`。其他系統請使用對應的 Google Platform-Tools。從儲存庫 clone 後，先進入 `rog3` 資料夾再執行以下指令；移機包則直接以解壓根目錄執行。

```powershell
java -jar './tools/apktool.jar' b './work/rog_src' -o './work/repacked-unsigned.apk'
```

Release 已簽署的 APK 可直接更新安裝。後續改碼重簽需要原簽章金鑰，儲存庫不包含私鑰。

## 研究與待辦

[資源研究報告](outputs/PikminX-資源與部署研究.md) 包含大花果實窗口、大菇資料權限與時效、限定金盆、官方條件及雙時區。資料查核日期為 2026-10-13。

待完成：完整餵食實測、種花功能入口與自動換花瓣驗證、Android 12 孵盆可行方案，以及座標資料與時區整合。詳細狀態、設定還原事項和證據見 HANDOVER.md。

## 來源與授權

本維護版參考 [azusakawa/PikminX](https://github.com/azusakawa/PikminX)，原專案為原始碼公開、非商業使用授權。上游授權與聲明見 LICENSE、LICENSE.md；本儲存庫的維護補丁不取代上游授權。
