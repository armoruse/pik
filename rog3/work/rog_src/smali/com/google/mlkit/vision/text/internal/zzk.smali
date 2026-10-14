.class final Lcom/google/mlkit/vision/text/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;

.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzk;->zzc:Ljava/util/Comparator;

    return-void
.end method

.method static zza([Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;Landroid/graphics/Matrix;)Lcom/google/mlkit/vision/text/Text;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 3
    iget v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzj:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_0

    new-instance v6, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 5
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzj:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    :cond_0
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzk:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;-><init>()V

    move v2, v3

    .line 8
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    invoke-direct {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;-><init>()V

    move v6, v3

    .line 10
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 11
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    move-result-object v4

    new-instance v5, Lcom/google/mlkit/vision/text/internal/zzh;

    move-object/from16 v13, p1

    invoke-direct {v5, v13}, Lcom/google/mlkit/vision/text/internal/zzh;-><init>(Landroid/graphics/Matrix;)V

    .line 13
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object v12

    .line 14
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcp;

    move-result-object v4

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v8, v7

    move v9, v8

    move v7, v6

    .line 16
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v16, 0x1

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 17
    iget-object v10, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 18
    iget v11, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zza:I

    neg-int v11, v11

    .line 19
    iget v14, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzb:I

    neg-int v14, v14

    .line 20
    iget v3, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    move-object/from16 v18, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 21
    iget v15, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    move-object/from16 v19, v1

    move/from16 v20, v2

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const/4 v15, 0x4

    new-array v13, v15, [Landroid/graphics/Point;

    new-instance v15, Landroid/graphics/Point;

    .line 22
    move-object/from16 v21, v0

    iget v0, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zza:I

    move-object/from16 v22, v12

    iget v12, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzb:I

    invoke-direct {v15, v0, v12}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    aput-object v15, v13, v0

    .line 23
    invoke-virtual {v15, v11, v14}, Landroid/graphics/Point;->offset(II)V

    aget-object v11, v13, v0

    .line 24
    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    mul-double/2addr v11, v1

    aget-object v14, v13, v0

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-double v14, v14

    mul-double/2addr v14, v3

    move/from16 v23, v7

    aget-object v7, v13, v0

    .line 25
    iget v7, v7, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    move/from16 v24, v6

    int-to-double v6, v7

    mul-double/2addr v6, v3

    aget-object v3, v13, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    aget-object v1, v13, v0

    add-double/2addr v11, v14

    double-to-int v2, v11

    .line 26
    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, v13, v0

    add-double/2addr v6, v3

    double-to-int v0, v6

    .line 27
    iput v0, v1, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/Point;

    .line 28
    iget v3, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzc:I

    add-int/2addr v3, v2

    invoke-direct {v1, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v13, v16

    new-instance v1, Landroid/graphics/Point;

    .line 29
    iget v3, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzc:I

    add-int/2addr v3, v2

    iget v4, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzd:I

    add-int/2addr v4, v0

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x2

    aput-object v1, v13, v3

    new-instance v1, Landroid/graphics/Point;

    .line 30
    iget v3, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzd:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v1, v13, v0

    move/from16 v7, v23

    move/from16 v6, v24

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 31
    aget-object v1, v13, v0

    .line 32
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 33
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 34
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 35
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30
    :cond_3
    move-object/from16 v13, p1

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v0, v21

    move-object/from16 v12, v22

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 36
    :cond_4
    move-object/from16 v21, v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v24, v6

    move/from16 v23, v7

    move-object/from16 v22, v12

    iget v0, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zza:I

    .line 37
    iget v1, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zzb:I

    .line 38
    iget v2, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 39
    iget v4, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 v6, 0x4

    new-array v7, v6, [Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    .line 40
    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v13, 0x0

    aput-object v6, v7, v13

    new-instance v6, Landroid/graphics/Point;

    .line 41
    move/from16 v10, v24

    invoke-direct {v6, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v7, v16

    new-instance v6, Landroid/graphics/Point;

    .line 42
    move/from16 v9, v23

    invoke-direct {v6, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v10, 0x2

    aput-object v6, v7, v10

    new-instance v6, Landroid/graphics/Point;

    .line 43
    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x3

    aput-object v6, v7, v8

    move v6, v13

    :goto_5
    const/4 v8, 0x4

    if-ge v6, v8, :cond_5

    .line 44
    aget-object v9, v7, v6

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v9, v9

    mul-double/2addr v9, v4

    aget-object v11, v7, v6

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    mul-double/2addr v11, v2

    .line 45
    aget-object v14, v7, v6

    iget v14, v14, Landroid/graphics/Point;->x:I

    int-to-double v14, v14

    mul-double/2addr v14, v2

    aget-object v8, v7, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    move-wide/from16 v16, v14

    int-to-double v13, v8

    mul-double/2addr v13, v4

    .line 46
    aget-object v8, v7, v6

    sub-double/2addr v9, v11

    double-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 47
    aget-object v8, v7, v6

    add-double v14, v16, v13

    double-to-int v9, v14

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 48
    aget-object v8, v7, v6

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x0

    goto :goto_5

    .line 49
    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v0, Lcom/google/mlkit/vision/text/Text$TextBlock;

    sget-object v1, Lcom/google/mlkit/vision/text/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;

    new-instance v2, Lcom/google/mlkit/vision/text/internal/zzi;

    invoke-direct {v2}, Lcom/google/mlkit/vision/text/internal/zzi;-><init>()V

    .line 50
    move-object/from16 v3, v22

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;->zzb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v9}, Lcom/google/mlkit/vision/text/internal/zza;->zza(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v8

    .line 52
    invoke-static {v3}, Lcom/google/mlkit/vision/text/internal/zzk;->zzb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v0

    move-object/from16 v11, p1

    move-object v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/google/mlkit/vision/text/Text$TextBlock;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Matrix;Ljava/util/List;)V

    .line 9
    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    add-int/lit8 v2, v20, 0x1

    move-object v0, v1

    move-object/from16 v1, v19

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 53
    :cond_6
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/vision/text/Text;

    sget-object v2, Lcom/google/mlkit/vision/text/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;

    new-instance v3, Lcom/google/mlkit/vision/text/internal/zzg;

    invoke-direct {v3}, Lcom/google/mlkit/vision/text/internal/zzg;-><init>()V

    .line 54
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;->zzb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/vision/text/Text;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static zzb(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/Text$Line;

    .line 3
    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/Text$Line;->getRecognizedLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 6
    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/mlkit/vision/text/internal/zzk;->zzc:Ljava/util/Comparator;

    .line 9
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    .line 8
    :cond_3
    :goto_2
    const-string/jumbo p0, "und"

    return-object p0
.end method
