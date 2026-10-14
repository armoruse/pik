.class public Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboc;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    nop

    .end local p0    # "this":Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboc;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newTextRecognizer(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;->newTextRecognizer(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/mlkit/vision/text/bundled/common/zba;

    move-result-object p1

    return-object p1
.end method

.method public newTextRecognizer(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/mlkit/vision/text/bundled/common/zba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Please use newTextRecognizerWithOptions instead."

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newTextRecognizerWithOptions(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;
    invoke-virtual {p0, p1, p2}, Lcom/google/mlkit/vision/text/bundled/common/BundledTextRecognizerCreator;->newTextRecognizerWithOptions(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;)Lcom/google/mlkit/vision/text/bundled/common/zba;

    move-result-object p1

    return-object p1
.end method

.method public newTextRecognizerWithOptions(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;)Lcom/google/mlkit/vision/text/bundled/common/zba;
    .locals 6
    .param p1, "contextWrapper"    # Lcom/google/android/gms/dynamic/IObjectWrapper;
    .param p2, "textRecognizerOptions"    # Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;

    .line 2
    nop

    .end local p1    # "contextWrapper":Lcom/google/android/gms/dynamic/IObjectWrapper;
    .end local p2    # "textRecognizerOptions":Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance p1, Lcom/google/mlkit/vision/text/bundled/common/zba;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;->zba()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;->zbc()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;->zbb()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbom;->zbd()Z

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/text/bundled/common/zba;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method
