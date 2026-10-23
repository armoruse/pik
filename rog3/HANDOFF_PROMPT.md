# 可直接貼到其他裝置的接手提示詞

```text
請接手 PikminX ROG Phone 3 維護專案，全程使用繁體中文。

儲存庫：https://github.com/armoruse/pik
指定分支：codex/rog3-handover-20261014（尚未合併 main，務必取得此分支）

若本機尚無儲存庫，clone 此分支；已有儲存庫則先保留並辨識所有未提交修改，確認 origin 與分支。工作區乾淨時，從儲存庫根目錄執行：
python3 rog3/tools/sync_progress.py start
Windows 可以使用 py -3；啟用 git core.longpaths。

請先完整閱讀 AGENTS.md、rog3/CURRENT_STATUS.md、rog3/HANDOVER.md、rog3/README_FIRST.md 與 rog3/CROSS_DEVICE.md；較新進度以 CURRENT_STATUS.md 為準。所有路徑相對儲存庫根目錄，勿沿用其他電腦的絕對路徑。先用 adb devices -l 確認手機，勿誤操作模擬器。

當前優先事項：修正大波斯菊等精華名稱換行造成的漏辨識，以及自動探險連續派遣後切到皮克敏分頁、逾時停止。已有修正程式、測試與未簽署建置，但尚未部署／實機證明；請依 CURRENT_STATUS.md 的證據接續，不要從頭猜測或把原型當完成。

我已授權修改、打包、以同簽章更新指定手機、少量實測，以及每次開發工作結束後自動提交並推送到上述 GitHub 分支，無須重複詢問。不要領取明信片；不自動參戰或用蘑菇券。外部帳號新登入、購買、root、刷系統需另確認。原簽章或私人移機包若缺少，先完成能做的工作，再向我索取本機路徑；不得解除安裝清資料來繞過簽章，也不得公開私鑰／帳密／個人備份。

每次結束（包括失敗或中斷）都要更新 rog3/CURRENT_STATUS.md，清楚記錄改動、測試、部署與實機驗證、阻礙及具體下一步。檢查差異及敏感資料，只暫存審查過的檔案，再執行：
python3 rog3/tools/sync_progress.py finish --message "本次最終修改摘要"
確認遠端 SHA，回覆提交與分支連結。其他裝置已有新提交時先整合、測試，禁止 force push。同步失敗需明說，本地提交保留，不能宣稱已推送。

完成上述接手檢查後直接繼續目前工作，不只回覆計畫。請明確區分研究結果、程式已寫、建置成功、已部署功能與實機驗證成果。
```
