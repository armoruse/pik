.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 18
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 28
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 31
    array-length v3, v1

    .line 32
    .local v3, "N":I
    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    .line 33
    .local v5, "dim":I
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 35
    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "lastx":D
    const-wide/16 v10, 0x0

    .line 38
    .local v10, "lasty":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    if-ge v12, v13, :cond_1

    .line 39
    aget-object v13, v2, v12

    aget-wide v13, v13, v4

    .line 40
    .local v13, "px":D
    aget-object v15, v2, v12

    aget-wide v15, v15, v4

    .line 41
    .local v15, "py":D
    if-lez v12, :cond_0

    .line 42
    move/from16 v17, v5

    .end local v5    # "dim":I
    .local v17, "dim":I
    sub-double v4, v13, v8

    sub-double v1, v15, v10

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v6, v1

    goto :goto_1

    .line 41
    .end local v17    # "dim":I
    .restart local v5    # "dim":I
    :cond_0
    move/from16 v17, v5

    .line 44
    .end local v5    # "dim":I
    .restart local v17    # "dim":I
    :goto_1
    move-wide v8, v13

    .line 45
    move-wide v10, v15

    .line 38
    .end local v13    # "px":D
    .end local v15    # "py":D
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_0

    .end local v17    # "dim":I
    .restart local v5    # "dim":I
    :cond_1
    move/from16 v17, v5

    .line 47
    .end local v5    # "dim":I
    .end local v12    # "i":I
    .restart local v17    # "dim":I
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    goto :goto_2

    .line 35
    .end local v6    # "sum":D
    .end local v8    # "lastx":D
    .end local v10    # "lasty":D
    .end local v17    # "dim":I
    .restart local v5    # "dim":I
    :cond_2
    move/from16 v17, v5

    .line 49
    .end local v5    # "dim":I
    .restart local v17    # "dim":I
    :goto_2
    return-void
.end method

.method private getLength2D(D)D
    .locals 32
    .param p1, "t"    # D

    .line 58
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 59
    return-wide v2

    .line 61
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 62
    .local v1, "n":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_1

    .line 63
    return-wide v2

    .line 65
    :cond_1
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v4, v6

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_2

    .line 66
    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v2

    .line 68
    :cond_2
    const-wide/16 v6, 0x0

    .line 69
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "last_x":D
    const-wide/16 v10, 0x0

    .line 71
    .local v10, "last_y":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v12, v1, -0x1

    if-ge v4, v12, :cond_6

    .line 72
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v12, v12, v4

    aget-wide v12, v12, v5

    .line 73
    .local v12, "px":D
    iget-object v14, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v14, v14, v4

    const/4 v15, 0x1

    aget-wide v16, v14, v15

    .line 74
    .local v16, "py":D
    if-lez v4, :cond_3

    .line 75
    sub-double v2, v12, v8

    move-wide/from16 v20, v8

    .end local v8    # "last_x":D
    .local v20, "last_x":D
    sub-double v8, v16, v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v6, v2

    goto :goto_1

    .line 74
    .end local v20    # "last_x":D
    .restart local v8    # "last_x":D
    :cond_3
    move-wide/from16 v20, v8

    .line 77
    .end local v8    # "last_x":D
    .restart local v20    # "last_x":D
    :goto_1
    move-wide v8, v12

    .line 78
    .end local v20    # "last_x":D
    .restart local v8    # "last_x":D
    move-wide/from16 v10, v16

    .line 79
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v2, v2, v4

    cmpl-double v2, p1, v2

    if-nez v2, :cond_4

    .line 80
    return-wide v6

    .line 82
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v4, 0x1

    aget-wide v2, v2, v3

    cmpg-double v2, p1, v2

    if-gez v2, :cond_5

    .line 83
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v4, 0x1

    aget-wide v2, v2, v3

    iget-object v14, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v18, v14, v4

    sub-double v2, v2, v18

    .line 84
    .local v2, "h":D
    iget-object v14, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v18, v14, v4

    sub-double v18, p1, v18

    div-double v18, v18, v2

    .line 85
    .local v18, "x":D
    iget-object v14, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v14, v14, v4

    aget-wide v20, v14, v5

    .line 86
    .local v20, "x1":D
    iget-object v14, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v22, v4, 0x1

    aget-object v14, v14, v22

    aget-wide v22, v14, v5

    .line 87
    .local v22, "x2":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v24, v5, v15

    .line 88
    .local v24, "y1":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v14, v4, 0x1

    aget-object v5, v5, v14

    aget-wide v14, v5, v15

    .line 90
    .local v14, "y2":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v28, v26, v18

    mul-double v28, v28, v24

    mul-double v30, v14, v18

    add-double v28, v28, v30

    move/from16 v30, v1

    .end local v1    # "n":I
    .local v30, "n":I
    sub-double v0, v16, v28

    .line 91
    .end local v16    # "py":D
    .local v0, "py":D
    sub-double v26, v26, v18

    mul-double v26, v26, v20

    mul-double v16, v22, v18

    add-double v26, v26, v16

    sub-double v12, v12, v26

    .line 92
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v6, v6, v16

    .line 94
    return-wide v6

    .line 82
    .end local v0    # "py":D
    .end local v2    # "h":D
    .end local v14    # "y2":D
    .end local v18    # "x":D
    .end local v20    # "x1":D
    .end local v22    # "x2":D
    .end local v24    # "y1":D
    .end local v30    # "n":I
    .restart local v1    # "n":I
    .restart local v16    # "py":D
    :cond_5
    move/from16 v30, v1

    .line 71
    .end local v1    # "n":I
    .end local v12    # "px":D
    .end local v16    # "py":D
    .restart local v30    # "n":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 97
    .end local v4    # "i":I
    .end local v30    # "n":I
    .restart local v1    # "n":I
    :cond_6
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public getPos(DI)D
    .locals 15
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 173
    move-object v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 174
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_0

    .line 175
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v3

    aget-wide v2, v2, p3

    return-wide v2

    .line 177
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v2, v2, v3

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    .line 178
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, p3

    return-wide v2

    .line 181
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_4

    .line 182
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v3, v3, v2

    cmpl-double v3, p1, v3

    if-nez v3, :cond_2

    .line 183
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, p3

    return-wide v3

    .line 185
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    cmpg-double v3, p1, v3

    if-gez v3, :cond_3

    .line 186
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v5, v2

    sub-double/2addr v3, v5

    .line 187
    .local v3, "h":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v5, v2

    sub-double v5, p1, v5

    div-double/2addr v5, v3

    .line 188
    .local v5, "x":D
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, p3

    .line 189
    .local v7, "y1":D
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aget-wide v9, v9, p3

    .line 190
    .local v9, "y2":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v5

    mul-double/2addr v11, v7

    mul-double v13, v9, v5

    add-double/2addr v11, v13

    return-wide v11

    .line 181
    .end local v3    # "h":D
    .end local v5    # "x":D
    .end local v7    # "y1":D
    .end local v9    # "y2":D
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_4
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getPos(D[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 102
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 103
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    .line 104
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 105
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v4    # "j":I
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_3

    .line 110
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 111
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    aput-wide v4, p3, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "j":I
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_7

    .line 117
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    .line 118
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v2, :cond_4

    .line 119
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    cmpg-double v4, p1, v4

    if-gez v4, :cond_6

    .line 123
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    .line 124
    .local v4, "h":D
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v6, p1, v6

    div-double/2addr v6, v4

    .line 125
    .local v6, "x":D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v2, :cond_5

    .line 126
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v8

    .line 127
    .local v9, "y1":D
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v3, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    .line 129
    .local v11, "y2":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v6

    mul-double/2addr v13, v9

    mul-double v15, v11, v6

    add-double/2addr v13, v15

    aput-wide v13, p3, v8

    .line 125
    .end local v9    # "y1":D
    .end local v11    # "y2":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 131
    .end local v8    # "j":I
    :cond_5
    return-void

    .line 116
    .end local v4    # "h":D
    .end local v6    # "x":D
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 134
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method public getPos(D[F)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 138
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 139
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    .line 140
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 141
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "j":I
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_3

    .line 146
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 147
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v3

    double-to-float v4, v4

    aput v4, p3, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v3    # "j":I
    :cond_2
    return-void

    .line 152
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_7

    .line 153
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    .line 154
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v2, :cond_4

    .line 155
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 158
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    cmpg-double v4, p1, v4

    if-gez v4, :cond_6

    .line 159
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    .line 160
    .local v4, "h":D
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v6, p1, v6

    div-double/2addr v6, v4

    .line 161
    .local v6, "x":D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v2, :cond_5

    .line 162
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v8

    .line 163
    .local v9, "y1":D
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v3, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    .line 165
    .local v11, "y2":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v6

    mul-double/2addr v13, v9

    mul-double v15, v11, v6

    add-double/2addr v13, v15

    double-to-float v13, v13

    aput v13, p3, v8

    .line 161
    .end local v9    # "y1":D
    .end local v11    # "y2":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 167
    .end local v8    # "j":I
    :cond_5
    return-void

    .line 152
    .end local v4    # "h":D
    .end local v6    # "x":D
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method public getSlope(DI)D
    .locals 12
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 223
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v0, v0

    .line 225
    .local v0, "n":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmpg-double v1, p1, v3

    if-gez v1, :cond_0

    .line 226
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide p1, v1, v2

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide p1, v1, v2

    .line 230
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    .line 231
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v1, 0x1

    aget-wide v2, v2, v3

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    .line 232
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v1, 0x1

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v1

    sub-double/2addr v2, v4

    .line 233
    .local v2, "h":D
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v1

    sub-double v4, p1, v4

    div-double/2addr v4, v2

    .line 234
    .local v4, "x":D
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, p3

    .line 235
    .local v6, "y1":D
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    aget-wide v8, v8, p3

    .line 236
    .local v8, "y2":D
    sub-double v10, v8, v6

    div-double/2addr v10, v2

    return-wide v10

    .line 230
    .end local v2    # "h":D
    .end local v4    # "x":D
    .end local v6    # "y1":D
    .end local v8    # "y2":D
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    :cond_3
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getSlope(D[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 199
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 200
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 201
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v3, v4, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_0

    .line 202
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_1

    .line 203
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    .end local p1    # "t":D
    .restart local v3    # "t":D
    goto :goto_0

    .line 202
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v3, p1

    .line 206
    .end local p1    # "t":D
    .restart local v3    # "t":D
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_4

    .line 207
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v6, v6, v7

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_3

    .line 208
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v8, v8, v5

    sub-double/2addr v6, v8

    .line 209
    .local v6, "h":D
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v8, v8, v5

    sub-double v8, v3, v8

    div-double/2addr v8, v6

    .line 210
    .local v8, "x":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v2, :cond_2

    .line 211
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v11, v11, v5

    aget-wide v11, v11, v10

    .line 212
    .local v11, "y1":D
    iget-object v13, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v14, v5, 0x1

    aget-object v13, v13, v14

    aget-wide v13, v13, v10

    .line 214
    .local v13, "y2":D
    sub-double v15, v13, v11

    div-double/2addr v15, v6

    aput-wide v15, p3, v10

    .line 210
    .end local v11    # "y1":D
    .end local v13    # "y2":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 216
    .end local v10    # "j":I
    :cond_2
    goto :goto_3

    .line 206
    .end local v6    # "h":D
    .end local v8    # "x":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 219
    .end local v5    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
