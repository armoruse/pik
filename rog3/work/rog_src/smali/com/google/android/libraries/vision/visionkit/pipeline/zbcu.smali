.class final Lcom/google/android/libraries/vision/visionkit/pipeline/zbcu;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# static fields
.field static final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcu;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zba(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcv;->zba(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
