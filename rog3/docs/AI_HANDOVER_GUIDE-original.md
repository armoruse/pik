# PikminX (ROG Phone 3) 專案完全接手與除錯維護手冊

> **文檔目的**：提供給任何接手的 AI 助手或工程師，包含所有環境路徑、設備參數、已排查之根本原因、Smali 補丁與步數工具操作指南。

---

## 1. 執行環境與檔案架構

### 1.1 設備資訊
* **型號**：ASUS ROG Phone 3 (`ASUS_I003D`)
* **ADB Serial**：`DEVICE_SERIAL`
* **螢幕解析度**：`1080 x 2340` (寬 1080, 高 2340)
* **系統架構**：Android 12, arm64-v8a

### 1.2 工具與路徑清單
| 元件 | 絕對路徑 | 說明 |
| :--- | :--- | :--- |
| **ADB** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\platform-tools\adb.exe` | 設備除錯控制工具 |
| **Java JRE** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\jre17\jdk-17.0.12+7-jre\bin\java.exe` | Java 17 執行環境 |
| **Apktool** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\apktool.jar` | 反編譯與 Smali 重組工具 |
| **Uber Signer** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\uber-apk-signer.jar` | APK 對齊與 v1/v2 簽名工具 |
| **Smali 工作區** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\rog_src` | 當前修改中的反編譯目錄（主要修改位置） |
| **Java 原始庫** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\PikminX\java\com\pikminx\helper` | 開源參考代碼 |
| **Jadx 反編譯參考** | `<原電腦使用者目錄>\.gemini\antigravity\scratch\decompiled_307\sources` | v307 版本 Java 反編譯碼（邏輯完全可讀） |

### 1.3 標準打包與部屬指令 (PowerShell)
```powershell
# 1. 編譯 Smali
& "<原電腦使用者目錄>\.gemini\antigravity\scratch\jre17\jdk-17.0.12+7-jre\bin\java.exe" -jar "<原電腦使用者目錄>\.gemini\antigravity\scratch\apktool.jar" b "<原電腦使用者目錄>\.gemini\antigravity\scratch\rog_src" -o "<原電腦使用者目錄>\.gemini\antigravity\scratch\repacked.apk"

# 2. 簽名 APK
& "<原電腦使用者目錄>\.gemini\antigravity\scratch\jre17\jdk-17.0.12+7-jre\bin\java.exe" -jar "<原電腦使用者目錄>\.gemini\antigravity\scratch\uber-apk-signer.jar" -a "<原電腦使用者目錄>\.gemini\antigravity\scratch\repacked.apk" --allowResign --overwrite

# 3. 安裝至手機
& "<原電腦使用者目錄>\.gemini\antigravity\scratch\platform-tools\adb.exe" -s DEVICE_SERIAL install -r "<原電腦使用者目錄>\.gemini\antigravity\scratch\repacked-aligned-debugSigned.apk"
```

---

## 2. 自動餵食「一直挫（畫面抖動重試）」與「手機發燙」根本原因深度剖析

### 2.1 核心症狀
1. 自動餵食點擊搜尋後，無法正確選取搜尋出來的精華。
2. 畫面不斷在「確認中」、「重試」之間瘋狂切換抖動（俗稱「一直挫」）。
3. 手機在 2~3 分鐘內溫度飆升滾燙，CPU 滿載。

### 2.2 根本原因一：皮克敏卡片關閉座標完全打歪
* **機制**：精華抽屜在點擊或展開時，若稍微偏移容易誤點到背景的花園 3D 皮克敏，畫面會彈出「皮克敏詳細資料卡片」（例如「已收集的花瓣 0/6」）。
* **Bug 所在**：
  在 `rog_src\smali_classes3\com\pikminx\helper\PetalAccessibilityService.smali` 中的 `closeFeedPikminDetailIfOpen`：
  舊邏輯計算出的點擊座標為 `x = 0.20f * 1080 = 216`，`y = 0.18f * 2340 = 421`。
  **在 ROG Phone 3 上，(216, 421) 正好打在皮克敏卡片邊緣或卡片本體內**，導致卡片根本關不掉！
* **已實機驗證之正解**：點擊卡片上方的空白草地區域 **`(x = 540, y = 300)`**，可 100% 瞬即關閉卡片。

### 2.3 根本原因二：無降頻防抖的高頻 OCR 截圖死循環（發燙主因）
* **機制**：
  當皮克敏卡片關不掉時，狀態機在 `WAITING_NECTAR_PANEL_CLOSE` 與 `SELECTING_NECTAR` 之間以極短間隔（180ms ~ 300ms）瘋狂迴圈：
  每次迴圈皆調用 `screencap` 抓取 1080x2340 完整點陣圖，並送入 ML Kit / OCR 進行全螢幕 Token 文字辨識。
* **後果**：每秒執行 3~5 次全螢幕 OCR，直接將手機 CPU 8 核心全部榨乾拉到 100%，導致手機劇烈發燙與嚴重掉幀卡頓。
* **修復方案**：
  重試時必須加入 `schedule(600ms ~ 800ms)` 的 Throttle，並在重試達 3 次未果時主動進行全局復位（點擊空白處關閉卡片再重新開抽屜），而非死循環。

### 2.4 根本原因三：放大鏡搜尋按鈕 Y 軸範圍偵測失效
* **機制**：
  在 `CardHighlight.smali` 的 `findNeutralDarkControl` 中，原算法將搜尋按鈕的垂直範圍鎖死在 `startY = 0.11f * height (257)` 到 `endY = 0.24f * height (561)`。
  但 ROG Phone 3 上精華抽屜全開時，放大鏡圖標位於頂部 **`y = 98` (`0.042f * height`)**，落在 `257` 之上，導致影像辨識永遠返回 `null`。
  返回 `null` 後，`PetalAccessibilityService.smali` fallback 到 `x = 983, y = 351`（0.15f），點擊了右側白色空白處，錯過放大鏡！

---

## 3. Smali 精確修改指引

### 補丁 1：修正卡片關閉座標 (`PetalAccessibilityService.smali`)
搜尋 `.method private closeFeedPikminDetailIfOpen`：
將計算點擊座標的係數：
```smali
# 原代碼：
const v2, 0x3e4ccccd    # 0.2f
...
const v4, 0x3e3851ec    # 0.18f

# 改為：
const v2, 0x3f000000    # 0.5f  (x = 540)
...
const v4, 0x3e03126f    # 0.128f (y = 300)
```

### 補丁 2：擴大放大鏡搜尋按鈕偵測範圍 (`CardHighlight.smali`)
搜尋 `.method static findNeutralDarkControl`：
```smali
# 原代碼：
const v5, 0x3de147ae    # 0.11f  (startY = 257)
...
const v6, 0x3e75c28f    # 0.24f  (endY = 561)

# 改為：
const v5, 0x3cf5c28f    # 0.03f  (startY = 70，覆蓋頂部 y=98)
...
const v6, 0x3ecccccd    # 0.40f  (endY = 936，覆蓋半高 y=355 及全高)
```

### 補丁 3：搜尋按鈕 Fallback 座標修正 (`PetalAccessibilityService.smali`)
搜尋 `openFeedNectarSearch` 中的 fallback：
```smali
# 原代碼：
const v3, 0x3e19999a    # 0.15f (y = 351)

# 改為：
const v3, 0x3d2a7efa    # 0.042f (y = 98)
```

---

## 4. 行走步數修改工具指南 (Walk / Step Adjustment)

### 4.1 Pikmin Bloom 的步數獲取架構
Pikmin Bloom **並不直接存取手機硬體計步器**，而是經由 Android 系統的：
1. **Google 健身 (Google Fit)** API (`com.google.android.apps.fitness`)
2. **Health Connect (健康連線)**

因此，**只需向 Google Fit 注入步數數據，Pikmin Bloom 開啟時便會自動同步並孵化花苗與產出金苗**。

### 4.2 推薦工具
* **首選工具：DeFit (Debugger of Fitness)**
  * **套件名稱**：`org.superbug.defit`
  * **特點**：專為 AR 遊戲開發者設計的健身數據調試工具。登入與 Pikmin Bloom 相同的 Google 帳號後，開啟「同步健身數據」，可自由設定行走速度（例如 4 km/h ~ 10.5 km/h，遊戲不超速的安全速度）與每小時增加步數。
* **備選工具：Pokewalk / FitAs**
  * 支援直接輸入指定目標步數（例如一次性增加 5,000 步）。

### 4.3 快速安裝與啟用步驟 (透過 ADB)
1. 下載 DeFit APK（或至 Google Play 搜尋 `DeFit` 下載）。
2. 使用 ADB 安裝：
   ```powershell
   & "<原電腦使用者目錄>\.gemini\antigravity\scratch\platform-tools\adb.exe" -s DEVICE_SERIAL install defit.apk
   ```
3. 打開 DeFit，登入與皮克敏遊戲相同的 Google 帳戶。
4. 在 DeFit 中將速度條滑至 **9.5 km/h**，打開同步開關即可背景自動增加步數。
