.class public final Lcom/pikminx/helper/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final BACKGROUND:I

.field private static final BORDER:I

.field private static final COMMUNITY_URL:Ljava/lang/String; = "https://line.me/ti/g2/kBeFvQzEdGSJ3J48e9tkkEljK2wq0Mxb_FauOA?utm_source=invitation&utm_medium=link_copy&utm_campaign=default"

.field private static final GITHUB_API_LATEST:Ljava/lang/String; = "https://api.github.com/repos/armoruse/pik/releases/latest"

.field private static final GITHUB_RELEASES_URL:Ljava/lang/String; = "https://github.com/armoruse/pik/releases"

.field private static final MUTED:I

.field private static final PRIMARY:I

.field private static final PRIMARY_DARK:I

.field private static final SPONSOR_URL:Ljava/lang/String; = "https://payment.opay.tw/Broadcaster/Donate/0CB6EDA6EAB8577A8D33F1E8E346BC2A"

.field private static final SURFACE:I = -0x1

.field private static final TEXT:I

.field private static final WARNING_BACKGROUND:I

.field private static final WARNING_TEXT:I


# instance fields
.field private overlayToggle:Landroid/widget/Button;

.field private serviceStatus:Landroid/widget/TextView;

.field private settings:Lcom/pikminx/helper/SettingsStore;


# direct methods
.method public static synthetic $r8$lambda$38fOIMVbuuxdn31J_WLkyj8zzZI(Lcom/pikminx/helper/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->lambda$checkForUpdates$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$AwKO-k4GAMEDfSljBXmHwvSbOGU(Lcom/pikminx/helper/MainActivity;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/MainActivity;->lambda$buildScreen$0(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIbjo0UCFLp7nKXyjCY7dsMI-qE(Lcom/pikminx/helper/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/MainActivity;->lambda$checkForUpdates$8(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GEL7W0rRbgb6RbA7f-36AGP2uW4(Lcom/pikminx/helper/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->lambda$checkForUpdates$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lnvhg73segC_GzxfWilyKSym83w(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$buildScreen$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ms-LUyMD_jJ7BFq7Hn9oqRbNpN8(Lcom/pikminx/helper/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->lambda$checkForUpdates$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$NsJpHERuQGiRNz7h-5J4yXWh-v0(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$buildScreen$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgW3NVf5qHtsvcTDLMfhdEHbaZc(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$versionCard$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEr7D-gdntim9n8eI5H_bn0s3ec(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$versionCard$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDrGEhh9OsPPKfMvbJ2KD67QTRg(Lcom/pikminx/helper/MainActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/MainActivity;->lambda$checkForUpdates$7(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8Ys2ERAmH8X8Y1Ljo2ZsLT_XgQ(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$buildScreen$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pfYgHQcpfrC1dsKpzwProWC6J0I(Lcom/pikminx/helper/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->lambda$buildScreen$3(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 29
    const/16 v0, 0xf6

    const/16 v1, 0xf9

    const/16 v2, 0xf4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->BACKGROUND:I

    .line 31
    const/16 v0, 0x63

    const/16 v1, 0x3e

    const/16 v3, 0x25

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->PRIMARY:I

    .line 32
    const/16 v0, 0x48

    const/16 v1, 0x2b

    const/16 v3, 0x19

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->PRIMARY_DARK:I

    .line 33
    const/16 v0, 0x30

    const/16 v1, 0x26

    const/16 v3, 0x20

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->TEXT:I

    .line 34
    const/16 v0, 0x6c

    const/16 v1, 0x60

    const/16 v3, 0x5c

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->MUTED:I

    .line 35
    const/16 v0, 0xd6

    const/16 v1, 0xd3

    const/16 v3, 0xe0

    invoke-static {v1, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->BORDER:I

    .line 36
    const/16 v0, 0xff

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->WARNING_BACKGROUND:I

    .line 37
    const/16 v0, 0x4f

    const/16 v1, 0x11

    const/16 v2, 0x7b

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pikminx/helper/MainActivity;->WARNING_TEXT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addSpace(Landroid/widget/LinearLayout;I)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "height"    # I

    .line 414
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "space":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-void
.end method

.method private buildScreen()Landroid/view/View;
    .locals 13

    .line 75
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "scroll":Landroid/widget/ScrollView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 77
    sget v2, Lcom/pikminx/helper/MainActivity;->BACKGROUND:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 79
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/pikminx/helper/MainActivity;->verticalLayout(IIII)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 80
    .local v2, "content":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/pikminx/helper/MainActivity;->verticalLayout(IIII)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 84
    .local v4, "header":Landroid/widget/LinearLayout;
    sget v5, Lcom/pikminx/helper/R$string;->main_title:I

    invoke-virtual {p0, v5}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    sget v7, Lcom/pikminx/helper/MainActivity;->PRIMARY_DARK:I

    invoke-direct {p0, v5, v6, v7}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    .line 85
    .local v5, "title":Landroid/widget/TextView;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/16 v1, 0x12

    invoke-direct {p0, v2, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 90
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->warningCard()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/16 v1, 0xe

    invoke-direct {p0, v2, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 93
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 94
    .local v6, "service":Landroid/widget/LinearLayout;
    sget v7, Lcom/pikminx/helper/R$string;->main_service_title:I

    invoke-direct {p0, v7}, Lcom/pikminx/helper/MainActivity;->sectionTitle(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    sget v7, Lcom/pikminx/helper/R$string;->main_service_description:I

    invoke-direct {p0, v7}, Lcom/pikminx/helper/MainActivity;->sectionDescription(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const/16 v7, 0xc

    invoke-direct {p0, v6, v7}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 98
    const/16 v8, 0xf

    sget v9, Lcom/pikminx/helper/MainActivity;->MUTED:I

    const-string v10, ""

    invoke-direct {p0, v10, v8, v9}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    .line 99
    iget-object v8, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    sget v9, Lcom/pikminx/helper/R$string;->main_service_status_description:I

    invoke-virtual {p0, v9}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v8, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v8, 0xa

    invoke-direct {p0, v6, v8}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 103
    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 104
    .local v8, "riskAccepted":Landroid/widget/CheckBox;
    sget v9, Lcom/pikminx/helper/R$string;->main_risk_acknowledgement:I

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setText(I)V

    .line 105
    sget v9, Lcom/pikminx/helper/MainActivity;->TEXT:I

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 106
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 107
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/16 v3, 0x8

    invoke-direct {p0, v6, v3}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 110
    sget v9, Lcom/pikminx/helper/R$string;->main_open_accessibility:I

    invoke-direct {p0, v9}, Lcom/pikminx/helper/MainActivity;->secondaryButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 111
    .local v9, "accessibility":Landroid/widget/Button;
    new-instance v10, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v10, p0, v8}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/pikminx/helper/MainActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-direct {p0, v6, v3}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 121
    sget v10, Lcom/pikminx/helper/R$string;->main_show_overlay:I

    invoke-direct {p0, v10}, Lcom/pikminx/helper/MainActivity;->secondaryButton(I)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, p0, Lcom/pikminx/helper/MainActivity;->overlayToggle:Landroid/widget/Button;

    .line 122
    iget-object v10, p0, Lcom/pikminx/helper/MainActivity;->overlayToggle:Landroid/widget/Button;

    new-instance v11, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v11, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v10, p0, Lcom/pikminx/helper/MainActivity;->overlayToggle:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-direct {p0, v6, v3}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 126
    sget v10, Lcom/pikminx/helper/R$string;->main_open_game:I

    invoke-direct {p0, v10}, Lcom/pikminx/helper/MainActivity;->secondaryButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 127
    .local v10, "openGame":Landroid/widget/Button;
    new-instance v11, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v11, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-direct {p0, v2, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 132
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->versionCard()Landroid/view/View;

    move-result-object v11

    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0, v2, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 135
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v11

    .line 136
    .local v11, "links":Landroid/widget/LinearLayout;
    sget v12, Lcom/pikminx/helper/R$string;->main_links_title:I

    invoke-direct {p0, v12}, Lcom/pikminx/helper/MainActivity;->sectionTitle(I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, v11, v7}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 139
    sget v7, Lcom/pikminx/helper/R$string;->main_open_community:I

    invoke-direct {p0, v7}, Lcom/pikminx/helper/MainActivity;->secondaryButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 140
    .local v7, "community":Landroid/widget/Button;
    new-instance v12, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v12, Lcom/pikminx/helper/R$string;->main_links_description_community:I

    invoke-direct {p0, v12}, Lcom/pikminx/helper/MainActivity;->sectionDescription(I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0, v11, v3}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 145
    sget v3, Lcom/pikminx/helper/R$string;->main_open_sponsor:I

    invoke-direct {p0, v3}, Lcom/pikminx/helper/MainActivity;->primaryButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 146
    .local v3, "sponsor":Landroid/widget/Button;
    new-instance v12, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v12, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v12, Lcom/pikminx/helper/R$string;->main_links_description_sponso:I

    invoke-direct {p0, v12}, Lcom/pikminx/helper/MainActivity;->sectionDescription(I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-direct {p0, v2, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 152
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 153
    .local v1, "help":Landroid/widget/LinearLayout;
    sget v12, Lcom/pikminx/helper/R$string;->main_help_title:I

    invoke-direct {p0, v12}, Lcom/pikminx/helper/MainActivity;->sectionTitle(I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    sget v12, Lcom/pikminx/helper/R$string;->main_help_description:I

    invoke-direct {p0, v12}, Lcom/pikminx/helper/MainActivity;->sectionDescription(I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->matchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-object v0
.end method

.method private button(Ljava/lang/String;II)Landroid/widget/Button;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # I
    .param p3, "textColor"    # I

    .line 379
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 382
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 384
    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 385
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 387
    sget v1, Lcom/pikminx/helper/MainActivity;->BORDER:I

    const/16 v2, 0xc

    invoke-direct {p0, p2, v1, v2}, Lcom/pikminx/helper/MainActivity;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    return-object v0
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 5

    .line 338
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/pikminx/helper/MainActivity;->verticalLayout(IIII)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 339
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, -0x1

    sget v3, Lcom/pikminx/helper/MainActivity;->BORDER:I

    invoke-direct {p0, v1, v3, v2}, Lcom/pikminx/helper/MainActivity;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-object v0
.end method

.method private checkForUpdates()V
    .locals 0

    return-void
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 427
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/pikminx/helper/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static isCurrentOrNewer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "current"    # Ljava/lang/String;
    .param p1, "remoteTag"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "r":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    return v0

    .line 265
    :cond_1
    const-string v3, "1.0.1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "rog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    :cond_2
    return v0

    .line 268
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 258
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "r":Ljava/lang/String;
    :cond_4
    :goto_0
    return v0
.end method

.method private isServiceEnabled()Z
    .locals 10

    .line 317
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 318
    return v1

    .line 320
    :cond_0
    nop

    .line 321
    invoke-virtual {p0}, Lcom/pikminx/helper/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    const-string v2, "enabled_accessibility_services"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "enabled":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 326
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v3, "expected":Landroid/content/ComponentName;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 328
    .local v7, "flattenedName":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 329
    .local v8, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 330
    return v1

    .line 327
    .end local v7    # "flattenedName":Ljava/lang/String;
    .end local v8    # "component":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 333
    :cond_3
    return v2

    .line 323
    .end local v3    # "expected":Landroid/content/ComponentName;
    :cond_4
    :goto_1
    return v2
.end method

.method private synthetic lambda$buildScreen$0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 2
    .param p1, "riskAccepted"    # Landroid/widget/CheckBox;
    .param p2, "view"    # Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget v0, Lcom/pikminx/helper/R$string;->main_accept_risk_first:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private synthetic lambda$buildScreen$1(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 122
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->toggleOverlay()V

    return-void
.end method

.method private synthetic lambda$buildScreen$2(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 127
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->openGame()V

    return-void
.end method

.method private synthetic lambda$buildScreen$3(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 140
    const-string v0, "https://line.me/ti/g2/kBeFvQzEdGSJ3J48e9tkkEljK2wq0Mxb_FauOA?utm_source=invitation&utm_medium=link_copy&utm_campaign=default"

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildScreen$4(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 146
    const-string v0, "https://payment.opay.tw/Broadcaster/Donate/0CB6EDA6EAB8577A8D33F1E8E346BC2A"

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkForUpdates$10()V
    .locals 2

    .line 249
    const-string v0, "\u9023\u7dda\u903e\u6642\uff0c\u76f4\u63a5\u70ba\u60a8\u958b\u555f Release \u9801\u9762"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    const-string v0, "https://github.com/armoruse/pik/releases"

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private synthetic lambda$checkForUpdates$11()V
    .locals 15

    .line 195
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://api.github.com/repos/armoruse/pik/releases/latest"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 197
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "User-Agent"

    const-string v4, "rog-updater"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v3, 0x1770

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 201
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 202
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 203
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 209
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, "json":Lorg/json/JSONObject;
    const-string v7, "tag_name"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "html_url"

    const-string v9, "https://github.com/armoruse/pik/releases"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "htmlUrl":Ljava/lang/String;
    move-object v9, v8

    .line 214
    .local v9, "apkUrl":Ljava/lang/String;
    const-string v10, "assets"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 215
    .local v10, "assets":Lorg/json/JSONArray;
    if-eqz v10, :cond_2

    .line 216
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 217
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 218
    .local v12, "asset":Lorg/json/JSONObject;
    const-string v13, "name"

    invoke-virtual {v12, v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "name":Ljava/lang/String;
    const-string v14, ".apk"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 220
    const-string v0, "browser_download_url"

    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 221
    goto :goto_2

    .line 216
    .end local v12    # "asset":Lorg/json/JSONObject;
    .end local v13    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 226
    .end local v11    # "i":I
    :cond_2
    :goto_2
    move-object v0, v7

    .line 227
    .local v0, "finalTag":Ljava/lang/String;
    move-object v11, v9

    .line 228
    .local v11, "finalDownloadUrl":Ljava/lang/String;
    const-string v12, "rog1.0.1"

    .line 230
    .local v12, "currentVersion":Ljava/lang/String;
    new-instance v13, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v13, p0, v0, v11}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/pikminx/helper/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/pikminx/helper/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    .end local v0    # "finalTag":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "htmlUrl":Ljava/lang/String;
    .end local v9    # "apkUrl":Ljava/lang/String;
    .end local v10    # "assets":Lorg/json/JSONArray;
    .end local v11    # "finalDownloadUrl":Ljava/lang/String;
    .end local v12    # "currentVersion":Ljava/lang/String;
    goto :goto_3

    .line 245
    :cond_3
    new-instance v0, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :goto_3
    goto :goto_4

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/pikminx/helper/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/pikminx/helper/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private synthetic lambda$checkForUpdates$7(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "finalDownloadUrl"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 239
    invoke-direct {p0, p1}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkForUpdates$8(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "finalTag"    # Ljava/lang/String;
    .param p2, "finalDownloadUrl"    # Ljava/lang/String;

    .line 231
    const-string v0, "rog1.0.1"

    invoke-static {v0, p1}, Lcom/pikminx/helper/MainActivity;->isCurrentOrNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v0, "\u76ee\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c (rog1.0.1)\uff01"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 236
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    const-string v2, "\u767c\u73fe\u65b0\u7248\u672c\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u76ee\u524d\u7248\u672c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n\u662f\u5426\u524d\u5f80\u4e0b\u8f09\u66f4\u65b0\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/pikminx/helper/MainActivity;Ljava/lang/String;)V

    .line 239
    const-string v2, "\u524d\u5f80\u4e0b\u8f09"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    const-string v1, "\u7a0d\u5f8c\u518d\u8aaa"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkForUpdates$9()V
    .locals 1

    .line 245
    const-string v0, "https://github.com/armoruse/pik/releases"

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$versionCard$5(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 181
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->checkForUpdates()V

    return-void
.end method

.method private synthetic lambda$versionCard$6(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 186
    const-string v0, "https://github.com/armoruse/pik/releases"

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->openExternalLink(Ljava/lang/String;)V

    return-void
.end method

.method private matchParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 421
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private openExternalLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 309
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget v1, Lcom/pikminx/helper/R$string;->main_link_unavailable:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 313
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private openGame()V
    .locals 3

    .line 298
    invoke-virtual {p0}, Lcom/pikminx/helper/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.nianticlabs.pikmin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 300
    sget v1, Lcom/pikminx/helper/R$string;->main_game_not_found:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pikminx/helper/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method private primaryButton(I)Landroid/widget/Button;
    .locals 3
    .param p1, "resource"    # I

    .line 365
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pikminx/helper/MainActivity;->PRIMARY:I

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/pikminx/helper/MainActivity;->button(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    .line 366
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    return-object v0
.end method

.method private rounded(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "fill"    # I
    .param p2, "stroke"    # I
    .param p3, "radiusDp"    # I

    .line 403
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 404
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 405
    invoke-direct {p0, p3}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 406
    if-eqz p2, :cond_0

    .line 407
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 409
    :cond_0
    return-object v0
.end method

.method private secondaryButton(I)Landroid/widget/Button;
    .locals 4
    .param p1, "resource"    # I

    .line 372
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf6

    const/16 v2, 0xef

    const/16 v3, 0xee

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget v2, Lcom/pikminx/helper/MainActivity;->PRIMARY_DARK:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pikminx/helper/MainActivity;->button(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    .line 373
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    return-object v0
.end method

.method private sectionDescription(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "resource"    # I

    .line 360
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    sget v2, Lcom/pikminx/helper/MainActivity;->MUTED:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private sectionTitle(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "resource"    # I

    .line 353
    invoke-virtual {p0, p1}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    sget v2, Lcom/pikminx/helper/MainActivity;->PRIMARY_DARK:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 354
    .local v0, "view":Landroid/widget/TextView;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 355
    return-object v0
.end method

.method private text(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "color"    # I

    .line 393
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 396
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    const/4 v1, 0x0

    const v2, 0x3f970a3d    # 1.18f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 398
    return-object v0
.end method

.method private toggleOverlay()V
    .locals 3

    .line 273
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->isOverlayVisible()Z

    move-result v0

    .line 274
    .local v0, "visible":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->setOverlayVisible(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    nop

    .line 277
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    sget v1, Lcom/pikminx/helper/R$string;->main_service_connecting:I

    goto :goto_0

    .line 279
    :cond_0
    sget v1, Lcom/pikminx/helper/R$string;->main_enable_service_first:I

    :goto_0
    nop

    .line 275
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->updateOverlayButton()V

    .line 284
    return-void
.end method

.method private updateOverlayButton()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/pikminx/helper/MainActivity;->overlayToggle:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/MainActivity;->overlayToggle:Landroid/widget/Button;

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->isOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    sget v1, Lcom/pikminx/helper/R$string;->main_hide_overlay:I

    goto :goto_0

    .line 293
    :cond_1
    sget v1, Lcom/pikminx/helper/R$string;->main_show_overlay:I

    .line 291
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 294
    return-void
.end method

.method private versionCard()Landroid/view/View;
    .locals 4

    .line 174
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 175
    .local v0, "card":Landroid/widget/LinearLayout;
    sget v1, Lcom/pikminx/helper/R$string;->main_update_title:I

    invoke-direct {p0, v1}, Lcom/pikminx/helper/MainActivity;->sectionTitle(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/pikminx/helper/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 177
    sget v1, Lcom/pikminx/helper/R$string;->main_current_version:I

    const-string v2, "rog1.0.1"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pikminx/helper/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    sget v3, Lcom/pikminx/helper/MainActivity;->MUTED:I

    invoke-direct {p0, v1, v2, v3}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    return-object v0
.end method

.method private verticalLayout(IIII)Landroid/widget/LinearLayout;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 345
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 348
    return-object v0
.end method

.method private warningCard()Landroid/view/View;
    .locals 6

    .line 161
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/pikminx/helper/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/pikminx/helper/MainActivity;->verticalLayout(IIII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 162
    .local v1, "warning":Landroid/widget/LinearLayout;
    sget v3, Lcom/pikminx/helper/MainActivity;->WARNING_BACKGROUND:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/pikminx/helper/MainActivity;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    sget v2, Lcom/pikminx/helper/R$string;->main_warning_title:I

    invoke-virtual {p0, v2}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    sget v4, Lcom/pikminx/helper/MainActivity;->WARNING_TEXT:I

    invoke-direct {p0, v2, v3, v4}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 164
    .local v2, "title":Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 165
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    sget v3, Lcom/pikminx/helper/R$string;->main_warning_body:I

    invoke-virtual {p0, v3}, Lcom/pikminx/helper/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/pikminx/helper/MainActivity;->WARNING_TEXT:I

    invoke-direct {p0, v3, v0, v4}, Lcom/pikminx/helper/MainActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/pikminx/helper/SettingsStore;

    invoke-direct {v0, p0}, Lcom/pikminx/helper/SettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pikminx/helper/MainActivity;->settings:Lcom/pikminx/helper/SettingsStore;

    .line 52
    invoke-virtual {p0}, Lcom/pikminx/helper/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/pikminx/helper/MainActivity;->PRIMARY_DARK:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/pikminx/helper/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/pikminx/helper/MainActivity;->BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 54
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->buildScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/MainActivity;->setContentView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 62
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->isServiceEnabled()Z

    move-result v0

    .line 63
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget v2, Lcom/pikminx/helper/R$string;->main_service_enabled:I

    goto :goto_0

    .line 66
    :cond_0
    sget v2, Lcom/pikminx/helper/R$string;->main_service_connecting:I

    goto :goto_0

    .line 67
    :cond_1
    sget v2, Lcom/pikminx/helper/R$string;->main_service_disabled:I

    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v1, p0, Lcom/pikminx/helper/MainActivity;->serviceStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v2, Lcom/pikminx/helper/MainActivity;->PRIMARY:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/pikminx/helper/MainActivity;->MUTED:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-direct {p0}, Lcom/pikminx/helper/MainActivity;->updateOverlayButton()V

    .line 71
    .end local v0    # "enabled":Z
    :cond_3
    return-void
.end method
