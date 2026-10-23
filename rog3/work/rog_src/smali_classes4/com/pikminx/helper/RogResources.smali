.class public final Lcom/pikminx/helper/RogResources;
.super Ljava/lang/Object;
.source "RogResources.java"


# static fields
.field private static final EXAMPLE:Ljava/lang/String; = "[{\"kind\":\"BIG_FLOWER\",\"name\":\"\u82b1\u540d\",\"lat\":25.0,\"lng\":121.0,\"zone\":\"Asia/Taipei\",\"bloom_at\":\"2026-10-14T06:00:00Z\",\"observed_at\":\"2026-10-14T06:05:00Z\",\"source\":\"https://example.org/report\"}]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5927\u82b1\u8def\u7dda\u30fb\u67e5\u83c7\u56de\u5831\u30fb\u7279\u6b8a\u5730\u9ede"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 35
    new-instance v1, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method static synthetic lambda$attach$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/pikminx/helper/RogResources;->show(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$show$1(Lorg/json/JSONObject;)J
    .locals 2

    .line 74
    const-string v0, "_deadline"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$show$2(Landroid/widget/EditText;[Ljava/lang/String;[JLandroid/widget/TextView;Landroid/content/Context;Landroid/view/View;)V
    .locals 17

    .line 53
    move-object/from16 v1, p3

    const-string v0, "\n"

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_206

    .line 55
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_20e

    const-string v10, "source"

    const-string v11, "kind"

    const-string v12, "zone"

    const-string v13, "lng"

    const-string v14, "lat"

    const-string v15, "_deadline"

    const-string v2, "expires_at"

    if-ge v7, v9, :cond_d0

    .line 57
    :try_start_38
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 58
    move-object/from16 p0, v3

    move-object/from16 v16, v4

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Lcom/pikminx/helper/RogReportPolicy;->validateCoordinate(DD)V

    .line 59
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/pikminx/helper/RogReportPolicy;->dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c8

    .line 61
    const-string v3, "observed_at"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v3

    .line 62
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v2

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    .line 64
    :goto_7a
    const-string v4, "BIG_FLOWER"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 65
    const-string v4, "bloom_at"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v4

    .line 66
    invoke-static {v4, v3, v2, v5}, Lcom/pikminx/helper/RogReportPolicy;->canGenerateFruit(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;)Z

    move-result v3

    .line 67
    invoke-static {v4, v2}, Lcom/pikminx/helper/RogReportPolicy;->fruitDeadline(Ljava/time/Instant;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    invoke-virtual {v9, v15, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    goto :goto_b8

    .line 69
    :cond_a0
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0xf

    invoke-static {v4, v3, v2, v5, v10}, Lcom/pikminx/helper/RogReportPolicy;->freshMushroom(Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;I)Z

    move-result v2

    .line 70
    const-wide/16 v10, 0x384

    invoke-virtual {v3, v10, v11}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v9, v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v3, v2

    .line 72
    :goto_b8
    if-eqz v3, :cond_be

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :cond_be
    add-int/lit8 v8, v8, 0x1

    .line 56
    :goto_c0
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    goto/16 :goto_24

    .line 60
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6bcf\u7b46\u56de\u5831\u9700\u4fdd\u7559\u4f86\u6e90"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_d0
    move-object/from16 p0, v3

    new-instance v3, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6709\u6548 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u7b46\uff1b\u6392\u9664\u904e\u671f\uff0f\u672a\u77e5\u985e\u578b "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u7b46\u3002\n\u8def\u7dda\u4f9d\u5269\u9918\u7a97\u53e3\u6392\u5e8f\uff0c\u4ecd\u9700\u6838\u5c0d\u904a\u6232\u756b\u9762\u8207\u5230\u9054\u6642\u9593\u3002\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_113
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_117} :catch_20e

    if-eqz v8, :cond_1c2

    :try_start_119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v16, v7

    const-string v7, "name"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    move-object v9, v6

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pikminx/helper/RogReportPolicy;->dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n\u7a97\u53e3\u622a\u6b62\uff1a\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pikminx/helper/RogReportPolicy;->dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n\u4f86\u6e90\uff1a"

    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    const-string v1, "\u63a2\u96aa\uff0f\u56de\u5831\u5230\u671f\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1a0
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    move-object/from16 v1, p3

    move-object v6, v9

    move-object/from16 v7, v16

    goto/16 :goto_113

    .line 86
    :cond_1c2
    move-object v9, v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d3

    const-wide/16 v4, 0x0

    goto :goto_1dd

    :cond_1d3
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_1dd
    const/4 v1, 0x0

    aput-wide v4, p2, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_1e4} :catch_202

    move-object/from16 v1, p3

    :try_start_1e6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v0, "pikminx_settings"

    move-object/from16 v2, p4

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "field_reports"

    move-object/from16 v3, p0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    goto :goto_22e

    :catch_202
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_20f

    .line 54
    :cond_206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6bcf\u6b21\u6700\u591a\u532f\u5165 200 \u7b46\u56de\u5831"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_20e} :catch_20e

    .line 88
    :catch_20e
    move-exception v0

    :goto_20f
    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u532f\u5165\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_22e
    return-void
.end method

.method static synthetic lambda$show$3([Ljava/lang/String;[JLandroid/widget/TextView;Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 91
    const/4 p4, 0x0

    aget-object v0, p0, p4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    aget-wide v2, p1, p4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_14

    goto :goto_28

    .line 92
    :cond_14
    const-string p1, "clipboard"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, "PikminX \u8def\u7dda"

    aget-object p0, p0, p4

    invoke-static {p2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 93
    return-void

    .line 91
    :cond_28
    :goto_28
    const-string p0, "\u8acb\u5148\u6574\u7406\u6709\u6548\u56de\u5831\u3002\u904e\u671f\u9ede\u4e0d\u53ef\u8907\u88fd\u6210\u65b0\u8def\u7dda\u3002"

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$show$4(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 11

    .line 96
    const-string p2, "zone"

    const-string v0, "starts_at"

    const-string v1, "ends_at"

    const-string v2, "\n"

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "rog3-special-spots.json"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_131

    .line 97
    :try_start_12
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 98
    :goto_1b
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_27

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 99
    :cond_27
    new-instance v4, Lorg/json/JSONArray;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u8cc7\u6599\u67e5\u6838 2026/10/14\uff1b\u6240\u6709\u9818\u53d6\u9ede\u5c1a\u672a\u5be6\u6a5f\u9a57\u8b49\u3002\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    .line 102
    nop

    :goto_42
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v7, v6, :cond_118

    .line 103
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v8

    if-eqz v8, :cond_62

    goto/16 :goto_114

    .line 105
    :cond_62
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v8

    if-nez v8, :cond_78

    goto/16 :goto_114

    .line 106
    :cond_78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lat"

    .line 107
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lng"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "coordinate_source"

    .line 108
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "reward"

    .line 109
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff1b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "conditions"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 110
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/pikminx/helper/RogReportPolicy;->dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "official_url"

    .line 111
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_114

    const-string v8, "\u6d3b\u52d5\u7d50\u675f\uff1a\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pikminx/helper/RogReportPolicy;->timestamp(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/pikminx/helper/RogReportPolicy;->dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_114
    :goto_114
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_42

    .line 114
    :cond_118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_11f
    .catchall {:try_start_12 .. :try_end_11f} :catchall_125

    .line 115
    if-eqz p0, :cond_14c

    :try_start_121
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_131

    goto :goto_14c

    .line 96
    :catchall_125
    move-exception p2

    if-eqz p0, :cond_130

    :try_start_128
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_130

    :catchall_12c
    move-exception p0

    :try_start_12d
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_130
    :goto_130
    throw p2
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_131} :catch_131

    .line 115
    :catch_131
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5730\u9ede\u6e05\u55ae\u7121\u6cd5\u8b80\u53d6\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_14c
    :goto_14c
    return-void
.end method

.method private static show(Landroid/content/Context;)V
    .locals 13

    .line 38
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 39
    const-string v2, "\u8611\u83c7\u5ea7\u6a19 API \u76ee\u524d\u9700\u8981\u7db2\u7ad9\u6b63\u5e38\u6388\u6b0a\uff1b\u6b64\u7248\u63a5\u53d7\u6709\u6b0a\u4f7f\u7528\u7684\u4eba\u5de5 JSON \u56de\u5831\u3002\u5927\u82b1\u4ee5\u5be6\u969b\u958b\u82b1\u6642\u9593\u8a08\u7b97 1 \u5c0f\u6642\u53d6\u5f97\u7a97\u53e3\uff0c\u679c\u5be6\u63a2\u96aa\u671f\u9650\u53e6\u5217\u3002\u67e5\u83c7\u56de\u5831\u8d85\u904e 15 \u5206\u9418\u9700\u91cd\u65b0\u78ba\u8a8d\u3002"

    invoke-static {p0, v2}, Lcom/pikminx/helper/RogResources;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    const-string v2, "\u5730\u6a19\u8207\u65b0\u9bae\u56de\u5831\u9700\u5206\u958b\u78ba\u8a8d\uff1a\nhttps://liuxvuse.github.io/pikmin-bloom-map/\nhttps://treelazy.com/pikmushroom\nhttps://mush.odyliao.cc/\n\u67e5\u6838 2026/10/14\uff1a\u5de8\u5927\u842c\u8056\u7bc0\u83c7\u4e0b\u4e00\u6bb5\u70ba\u7576\u5730 10/17\u201318\uff0c\u53e6\u6709 10/24\u201325\u300110/28\u201331\uff1b\u820a\u56de\u5831\u4ecd\u9700\u91cd\u67e5\u3002\nhttps://pikminbloom.com/zh_hant/news/oct26-halloweenevent"

    invoke-static {p0, v2}, Lcom/pikminx/helper/RogResources;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 42
    const v2, 0x20001

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 43
    const-string v2, "[{\"kind\":\"BIG_FLOWER\",\"name\":\"\u82b1\u540d\",\"lat\":25.0,\"lng\":121.0,\"zone\":\"Asia/Taipei\",\"bloom_at\":\"2026-10-14T06:00:00Z\",\"observed_at\":\"2026-10-14T06:05:00Z\",\"source\":\"https://example.org/report\"}]"

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    const-string v2, "pikminx_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "field_reports"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    const-string v2, "\u83c7 kind \u586b LARGE_ELEMENTAL \u6216 GIANT_EVENT\uff0c\u4e26\u586b observed_at\u3002\u6642\u9593\u8981\u542b Z \u6216\u6642\u5340 offset\uff1b\u53ef\u9078 expires_at\u3002\u6c92\u6709\u5ea7\u6a19\u6216\u6642\u9593\u7684\u56de\u5831\u4e0d\u6703\u6392\u5165\u8def\u7dda\u3002"

    invoke-static {p0, v2}, Lcom/pikminx/helper/RogResources;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-static {p0, v6}, Lcom/pikminx/helper/RogResources;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6574\u7406\u5927\u82b1\u8def\u7dda\uff0f\u7be9\u9078\u5927\u5143\u7d20\u83c7\u8207\u5de8\u6d3b\u52d5\u83c7"

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u8907\u88fd\u6709\u6548\u5ea7\u6a19\u6e05\u55ae"

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    .line 50
    new-array v1, v1, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v3

    .line 51
    new-instance v12, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda1;

    move-object v3, v12

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;[Ljava/lang/String;[JLandroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v3, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda2;

    invoke-direct {v3, v11, v1, v2, p0}, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;[JLandroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5b98\u65b9\u689d\u4ef6\u8207\u7279\u6b8a\u5730\u9ede\u6e05\u55ae"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v3, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/pikminx/helper/RogResources$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u8def\u7dda\u8207\u96d9\u6642\u5340"

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u95dc\u9589"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 120
    return-void
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x8

    const/16 p1, 0xc

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 31
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method
