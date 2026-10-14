.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zba:[Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbj;

.field public final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

.field public final zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

.field public final zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

.field public final zbe:Ljava/lang/String;

.field public final zbf:F

.field public final zbg:Ljava/lang/String;

.field public final zbh:I

.field public final zbi:Z

.field public final zbj:I

.field public final zbk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbj;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zba:[Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbj;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbe:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbf:F

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbg:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbh:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbi:Z

    iput p10, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbj:I

    iput p11, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbk:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zba:[Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbj;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    .line 3
    const/4 v2, 0x3

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    .line 4
    const/4 v2, 0x4

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbd;

    .line 5
    const/4 v2, 0x5

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbe:Ljava/lang/String;

    .line 6
    const/4 v0, 0x6

    invoke-static {p1, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbf:F

    .line 7
    const/4 v0, 0x7

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbg:Ljava/lang/String;

    .line 8
    const/16 v0, 0x8

    invoke-static {p1, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbh:I

    .line 9
    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbi:Z

    .line 10
    const/16 v0, 0xa

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbj:I

    .line 11
    const/16 v0, 0xb

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;->zbk:I

    .line 12
    const/16 v0, 0xc

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 13
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
