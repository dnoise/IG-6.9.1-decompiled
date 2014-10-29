.class public final Lcom/instagram/creation/base/ui/i;
.super Ljava/lang/Object;
.source "GridLinesHelper.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:[F

.field private f:[F

.field private g:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/i;->a:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->a:Landroid/graphics/Paint;

    const v1, -0x70000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x2c00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iput p2, p0, Lcom/instagram/creation/base/ui/i;->g:F

    .line 34
    iput p1, p0, Lcom/instagram/creation/base/ui/i;->c:I

    .line 36
    add-int/lit8 v0, p1, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    .line 37
    add-int/lit8 v0, p1, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    .line 38
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;[FFFFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    .line 130
    aget v0, p1, v6

    sub-float v3, v0, p5

    move-object v0, p0

    move v1, p3

    move v2, p2

    move v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 133
    aget v0, p1, v6

    add-float v1, v0, v7

    add-int/lit8 v0, v6, 0x1

    aget v0, p1, v0

    sub-float v3, v0, p5

    move-object v0, p0

    move v2, p2

    move v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 136
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    add-float v1, v0, v7

    move-object v0, p0

    move v2, p2

    move v3, p4

    move v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;[FFFFIFLandroid/graphics/Paint;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    .line 149
    aget v0, p1, v6

    sub-float v4, v0, p6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 152
    aget v0, p1, v6

    add-float/2addr v0, v7

    int-to-float v1, p5

    add-float v2, v0, v1

    add-int/lit8 v0, v6, 0x1

    aget v0, p1, v0

    sub-float v4, v0, p6

    move-object v0, p0

    move v1, p2

    move v3, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 155
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    add-float/2addr v0, v7

    int-to-float v1, p5

    add-float v2, v0, v1

    move-object v0, p0

    move v1, p2

    move v3, p2

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    .line 57
    move v6, v8

    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    aget v4, v0, v6

    iget-object v5, p0, Lcom/instagram/creation/base/ui/i;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v9, v8

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    aget v2, v0, v9

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v0, p0, Lcom/instagram/creation/base/ui/i;->g:F

    sub-float v6, v0, v10

    iget-object v7, p0, Lcom/instagram/creation/base/ui/i;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v5, v8

    invoke-static/range {v0 .. v7}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;[FFFFIFLandroid/graphics/Paint;)V

    .line 67
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_1
    move v7, v8

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 81
    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    aget v0, v0, v7

    iget v2, p0, Lcom/instagram/creation/base/ui/i;->g:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p0, Lcom/instagram/creation/base/ui/i;->g:F

    sub-float v5, v0, v10

    iget-object v6, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;[FFFFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    aget v0, v0, v7

    add-float v2, v0, v10

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p0, Lcom/instagram/creation/base/ui/i;->g:F

    sub-float v5, v0, v10

    iget-object v6, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;[FFFFFLandroid/graphics/Paint;)V

    .line 80
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 100
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 101
    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    aget v0, v0, v8

    iget v2, p0, Lcom/instagram/creation/base/ui/i;->g:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v6, p0, Lcom/instagram/creation/base/ui/i;->g:F

    iget-object v7, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v5, v11

    invoke-static/range {v0 .. v7}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;[FFFFIFLandroid/graphics/Paint;)V

    .line 110
    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    aget v0, v0, v8

    add-float v2, v0, v10

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v6, p0, Lcom/instagram/creation/base/ui/i;->g:F

    iget-object v7, p0, Lcom/instagram/creation/base/ui/i;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v5, v11

    invoke-static/range {v0 .. v7}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;[FFFFIFLandroid/graphics/Paint;)V

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 120
    :cond_3
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 41
    iput-object p1, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    .line 42
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/creation/base/ui/i;->c:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 45
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    iget-object v2, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    aput v2, v0, v3

    .line 47
    iget-object v0, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    iget-object v2, p0, Lcom/instagram/creation/base/ui/i;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    aput v2, v0, v3

    .line 49
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/instagram/creation/base/ui/i;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    iget-object v3, p0, Lcom/instagram/creation/base/ui/i;->e:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v0

    .line 51
    iget-object v2, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    iget-object v3, p0, Lcom/instagram/creation/base/ui/i;->f:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
