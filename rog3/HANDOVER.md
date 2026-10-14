> 公開版本說明：手機序號與本機使用者路徑已去識別化。文中的 DEVICE_SERIAL 需以 adb devices 的實際結果取代。
> 實測截圖、原始 shared preferences 備份及 API 回應快照未放入公開儲存庫或公開 Release。
> 文中 work/settings-before-test.xml 與截圖路徑是原私人移機包中的證據位置；接手時若需要完整個人設定備份，請向使用者取得私人移機包。公開的 work/settings-template.xml 只供少量短測試。

# 跨電腦接手：先讀 README_FIRST.md

# PikminX 接手工作說明

你現在接手 PikminX 的維護與實機驗證。請使用繁體中文與台灣自然用語，直接完成已授權的修改、打包、部署和測試，避免重複詢問是否可以繼續。所有完成狀態都必須有證據；程式碼存在、APK 能安裝、截圖看起來正常，不等於整個流程已通過。

## 先閱讀這些資料

1. 原始完整交接文件：
   `docs/AI_HANDOVER_GUIDE-original.md`
2. 本次完整工作區：
   `<本接手包的解壓根目錄>`
3. 已完成的研究報告：工作區下 `outputs\PikminX-資源與部署研究.md`。報告查核日期是 2026-10-13；接手時請依目前日期更新時效。
4. 上游原始碼：`https://github.com/azusakawa/PikminX`，本次讀取的 main commit 為 `ed33523d329a262ef464369bf68a6648903c553f`，README 標示 3.2.0／versionCode 376。手機客製版是 309，不能直接假設程式完全相同。

## 使用者的完整需求

- 修好餵食卡片關閉、精華搜尋和面板收合重試造成的發燙，重組 APK 並部署驗證。
- 掃描所有精華數量，以由多到少或由少到多自動產生餵食清單；本次先測由多到少。
- 點擊位置盡量由畫面辨識取得，能適應精華抽屜不同高度。
- 研究這台手機如何設定／部署，讓花苗更快孵出來。
- 找大花果實的座標／路線來源，處理回報時效與採果期限。
- 研究大元素菇、巨活動菇的自動搜尋及座標來源，顯示所在地時間、台灣時間與時差。
- 找限定金盆／特殊地點，以及地區飾品花苗的座標和領取條件。
- 花瓣用完或低於門檻時，自動換下一種並繼續走／種花。先確認既有功能的實際入口與可用程度，再補缺失。

後面幾項目前主要完成研究，還沒有完成新的查菇系統、孵盆部署或自動換花瓣實機驗證。

## 設備與工具

- ASUS ROG Phone 3／ASUS_I003D，1080×2340，Android 12，非 root（`su` 不存在）。
- ADB serial：`DEVICE_SERIAL`。
- 遊戲：`com.nianticlabs.pikmin`，最近查到版本 155.0。
- 遊戲實際 Activity：`com.nianticproject.ichigo.IchigoUnityPlayerActivity`。曾猜錯 Activity，也曾用 MAIN/LAUNCHER 無法解析，請使用已核實入口。
- 修正版套件：`com.pikminx.rog.v309`，versionCode 309，versionName `rog1.0.1`。
- helper Activity：`com.pikminx.helper.MainActivity`。
- helper service：`com.pikminx.helper.PetalAccessibilityService`。
- ADB：`tools/platform-tools/adb.exe（Windows）`
- Java：`java（新電腦另安裝 Java 17）`
- Apktool：`tools/apktool.jar`
- Signer：`tools/uber-apk-signer.jar`
- APK 簽章：使用既有 `原電腦的 debug.keystore（私鑰未包含在包內）`，保留同一簽章才能更新而不移除資料。

本環境的 ADB daemon、apktool 的暫存執行檔和 signer 曾在 sandbox 失敗；實際成功操作使用 `exec_command` 的 `require_escalated`。這是工具執行權限流程，使用者已授權部署。外部 `.gemini` 目錄寫入亦需額外權限。不要先卸載 App。

## 原始碼與已完成修改

本接手包 `work/rog_src` 是最新來源。舊電腦外部 rog_src 只同步了早期四項修正；新電腦直接延續包內來源即可。

主要檔案均位於 `work\rog_src\smali_classes3\com\pikminx\helper`：

- `PetalAccessibilityService.smali`
- `CardHighlight.smali`

早期修改：

- `closeFeedPikminDetailIfOpen` 改成 0.50w／0.128h，fallback 540／300；手動實機點 `(540,300)` 已確認能關卡片。
- `findNeutralDarkControl` 原固定區間曾改為 0.03h～0.4h。
- `openFeedNectarSearch` 固定 fallback 曾改成 0.042h。
- `waitForFeedNectarPanelClose` 其中 500ms 的重試間隔改為 700ms。

後續已找到更深的問題：單純放寬暗色偵測範圍會把草地誤當放大鏡。離線圖像檢查中，背景暗區分數約 5403／5842，真正圖示只有約 455／448。

最新修改已參考上游做法：

- 新增 `findPetalSelectorY`，以黃／紅／藍篩選圓點的最長連續列作為錨點，搜索 0.03h～0.8h。
- `findNeutralDarkControl` 新簽章接受 requestedStartY、requestedEndY，由錨點推算搜尋範圍。
- `findPetalSearchButton` 在篩選列附近尋找右側深灰圖示。
- `findPetalSearchCloseButton` 在篩選列上方尋找左側放大鏡，再定位右側 X。
- 精華搜尋找不到目標時，取消固定座標盲點擊，700ms 後返回開抽屜流程；缺失次數累積到 3 就停止。
- `handleFeedTokens` 的開搜尋分支加上 `closeFeedPikminDetailIfOpen(tokens)` guard。
- 3 個無狀態色彩 predicate 已移到 `findPetalSelectorY` 迴圈外建立重用，以降低物件配置；未加入全域快取。

修改腳本：`work\patch_feeding.py`、`work\patch_search_anchor.py`。後者是一次性精準替換腳本，**不要在已套過的新來源上直接重跑**。

原始兩個 Smali 備份在 `work\original-smali`。`work\create_patch.py` 已改成使用這份備份，並重新產生 `outputs\PikminX-feeding-fix.patch`，包含本次完整修改（418 行）。

## APK 與驗證狀態

- `outputs\PikminX-ROG3-feeding-vision.apk`：篩選列錨點修正版，已簽名、安裝，簽章 v3 驗證成功。SHA256：`9b2f34b005265cc37ad585a52dfddeac7f3ec46bc8571ec1c1ee9950487a8cd6`。
- `outputs\PikminX-ROG3-feeding-vision-final.apk`：含 predicate 重用改善的最新來源已成功重組及簽署，zipalign 和 v3 簽章均驗證成功，**尚未部署或實機驗證此最後版本**。SHA256：`1519eebb48202549d5f04e333ae07d0b95b5ffd645aa26581435ba036c347c39`。

不要使用 signer `--overwrite` 直接覆寫 unsigned：之前 sandbox 失敗曾損壞輸入檔。成功流程是先 apktool build，再 signer `--allowResign --out <新目錄>`，確認 zipalign／signature verified，最後 `adb install -r`。

離線等價像素檢查：完整抽屜搜尋點 `(982,305)`，半開抽屜 `(982,839)`；其他 21 張截圖未找到 selector。這個版本已能適應不同抽屜高度，不應把交接指南中的 y=98 視為所有畫面的固定正解。

實機曾完成精華庫存掃描，產生 34 項排序清單；早期餵食停在「無法開啟精華搜尋欄」。修正版的一輪測試最後看到：

- `work\pikminx-feed-running.png`：狀態為「正在開啟精華搜尋欄」，鍵盤已出現。
- `work\pikminx-feed-result.png`：精華由 287 降為 271，部分皮克敏有花，卡片仍開著，懸浮圖示沒有顯示成功狀態。

這證明發生餵食消耗，**尚未核對成功狀態、完整面板收合及收花瓣結果，不能宣稱整輪已完全通過**。應先看現況、服務與記錄再繼續。

溫度曾讀到 40.5°C；最近 CPU 樣本是遊戲 180%（多核心計算），沒有有效 helper CPU 樣本。尚未證明長時間發燙問題已解決。

## 最優先：測試設定與服務尚待還原

為了限制消耗，本次暫時將 helper preferences 改為：

- `flowers = 白色精華`
- `feeds_per_squad = 1`
- `max_squad_switches = 0`

原始完整設定備份在 `work\settings-before-test.xml`；測試檔在 `work\settings-test.xml`。原本為 34 項精華清單、每隊 5 輪、換隊最多 20 次、精華最低限制 0、花瓣上限 600、種花 threshold 50。

Android shared preferences 檔：`shared_prefs/pikminx_settings.xml`，本套件可用 `adb shell run-as com.pikminx.rog.v309` 存取。App 會快取設定，檔案修改後需要重新載入；若 force-stop helper，需重新確認無障礙服務與懸浮窗狀態，不能只看 secure 設定名單。

測試期間，目前最後一次設定只啟用：

`com.pikminx.rog.v309/com.pikminx.helper.PetalAccessibilityService`

另外兩項被暫停，測試結束應恢復：

- `app.pikminbloom.gps/.nectar.NectarAccessibilityService`
- `com.gpsgo.app.debug/com.gpsgo.app.scan.ScanGestureService`

更早也有 `com.gpsgo.app.debug/com.pikminx.helper.PetalAccessibilityService`，是另一個套件裡的同名 helper。已替換成 ROG 修正版，請避免兩個 PikminX helper 同時自動點擊。讀取現況後決定服務切換，不要抹掉其他後續新增服務。

使用者先前已確認當時沒有操作手機，允許繼續實測；現在已跨日，開始點擊前務必重讀最新畫面。之前 MainActivity 的 task 中殘留系統設定頁，普通 am start 沒有回到 root；使用 `am start -f 0x14000000 -n <已核實 component>` 才回到正確畫面。重新建立 MainActivity 時風險確認 checkbox 會歸零。

## 新功能研究的已知結論

1. 自動換花邏輯已存在於 `handlePlantingMonitorSelection`、`PlantingFlowPolicy`、`SwitchGuard`：低於門檻、連續 2 次確認、30 秒切換冷卻，按 allowedFlowers 順序前進，最後一種低於門檻則停止。舊 `SwitchGuard` 是 remaining < threshold，threshold=0 不會觸發。建議先保留 50。但目前 ROG 懸浮窗只看到餵食／探險／領取／清盆四頁，**種花功能入口是否被客製版隱藏還要查**；不能只憑核心程式就說使用者可直接用。精華掃描清單是否與種花清單共用，也要核對名稱轉換與設定隔離。

2. 原交接指南「遊戲不讀硬體計步器、只要向 Google Fit 注入即可孵盆」已不適合作為可靠結論。官方目前提供手機計步與 Health Connect，後者在 Pikmin Bloom 要 Android 14+；Google Fit API 正在淘汰，手動填的 Fit 步數不算。手機是 Android 12，已安裝 `app.pikminbloom.gps` 1.6.0／versionCode 8、Google Fit 及 Health Connect，但巡花 App 的步數寫入功能本身也要求 Android 14+。模擬 GPS 移動不代表花苗一定獲得步數。需確認遊戲步數來源、實際同步，再提出可部署方案。官方種花成長加成最高 30%，特殊培育槽成長快 30%，花苗每天反映步數上限 50,000。不要未驗證就安裝 DeFit 或改 OS／root。

3. 大花果實窗口目前官方為開花後 1 小時內在附近種花；已產生的果實探險在大花恢復葉子時消失，通常約 23 小時。兩個期限要分清楚。

4. `mush.odyliao.cc/api/mushrooms?limit=10` 實際 HTTP 200，但未授權回應為 lat/lng=null、gps_access.authorized=false。可以研究格式，不能繞過座標權限。`work\mushrooms.json` 有樣本。網站的掃描器要求 root／Magisk／Zygisk，本台非 root，不能直接部署同等 scanner。

5. `https://mush.odyliao.cc/api/event-spots` 可取得公開特殊地點資料，樣本在 `work\eventspots.json`。有部分舊獎勵或領取頻率；研究報告已用官方資料校正，例如香港 nsew 每天 1 次、Nintendo 店目前紅色照片鈕扣徽章且每 30 天一次。社群座標不能冒充官方或實機成功點。

6. 研究報告已附花菇社群地圖、Treelazy、限定金盆點位、當前巨大萬聖節菇日期、官方條件與雙時區。海洋博公園的官方 Google My Maps KML 在 `work\ocean-expo-official.kml`。特殊地點可能有位置驗證、活動日期、票券與到場條件，不能保證改定位就能領取。

關鍵來源：

- PikminX：`https://github.com/azusakawa/PikminX`
- 巡花 App：`https://github.com/SmailDot/Pikmin-Bloom-GPS`
- 官方步數：`https://scopelyexplore.helpshift.com/hc/en/11-pikmin-bloom/faq/2603-health-connect/`
- 官方花苗：`https://scopelyexplore.helpshift.com/hc/en/11-pikmin-bloom/faq/2204-faq-about-seedlings/`
- 官方種花：`https://scopelyexplore.helpshift.com/hc/en/11-pikmin-bloom/faq/2145-planting-flowers/`
- 官方特殊點：`https://niantic.helpshift.com/hc/en/23-pikmin-bloom/faq/3623-special-spot/`

## 建議接手順序

1. 讀完資料，核對最新來源／APK、ADB 設備、遊戲與 helper 實際狀態。
2. 先處理未還原的測試 preferences 和其他自動服務，避免意外進入原本 5 輪／20 換隊的大量餵食。
3. 部署已簽署的 predicate 重用版；以少量精華確認開抽屜、搜尋、選精華、面板收合、餵食與收花瓣，取得完成狀態，針對具體失敗再修。
4. 確認實際種花入口和換花瓣流程，做到可設定順序、低量切換、繼續種花、全部用完停止；用小範圍測試，勿任意耗用稀有花瓣。
5. 完成這台 Android 12 可行的孵盆方案評估與必要部署；研究方案、已部署功能、實機證據分別說清楚。
6. 依研究報告落實可用的座標匯入／特殊地點清單／雙時區與過期資訊。若即時蘑菇資料仍需帳號授權，先完成可檢閱的整合與限制說明，再向使用者詢問真正缺少的資訊。
7. 在本接手包的 work/rog_src 延續修改，產出最終 APK 與實測記錄到 outputs；中間檔放 work。交付時只宣稱已驗證的成果。

使用者已授權本機修改、打包、安裝指定手機和實測。登入外部帳號、對外發文／傳訊、購買、root、刷系統等沒有自動包含在授權內。遇到需要確認的操作，先把能完成的程式和研究做成可檢閱結果，再說清楚具體缺什麼。
