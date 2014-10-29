.class Lcom/instagram/creation/photo/crop/CropImageView;
.super Lcom/instagram/creation/photo/crop/s;
.source "CropImageView.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/photo/crop/q;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/instagram/creation/photo/crop/q;

.field c:F

.field d:F

.field e:I

.field private m:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/photo/crop/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    .line 43
    return-void
.end method

.method private a(Lcom/instagram/creation/photo/crop/q;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v4, 0x3f19999a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v0, p1, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 178
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 179
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 181
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 182
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 184
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v1

    mul-float/2addr v0, v1

    .line 186
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 189
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    .line 193
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    if-eqz p2, :cond_1

    .line 195
    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {p0, v0, v2, v1}, Lcom/instagram/creation/photo/crop/CropImageView;->b(FFF)V

    .line 201
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/CropImageView;->b(Lcom/instagram/creation/photo/crop/q;)V

    .line 202
    return-void

    .line 197
    :cond_1
    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {p0, v0, v2, v1}, Lcom/instagram/creation/photo/crop/CropImageView;->a(FFF)V

    goto :goto_0
.end method

.method private b(Lcom/instagram/creation/photo/crop/q;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v1, p1, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 157
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 159
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 162
    if-eqz v2, :cond_2

    .line 163
    :goto_0
    if-eqz v0, :cond_3

    .line 165
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b(FF)V

    .line 168
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 162
    goto :goto_0

    :cond_3
    move v0, v1

    .line 163
    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    return-void
.end method

.method protected final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/photo/crop/s;->a(FF)V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    .line 77
    iget-object v2, v0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->d()V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method protected final a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/creation/photo/crop/s;->a(FFF)V

    .line 48
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    .line 49
    iget-object v2, v0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 50
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->d()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/crop/b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    .line 24
    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/crop/q;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->invalidate()V

    .line 220
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/s;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/photo/crop/q;->a(Landroid/graphics/Canvas;)V

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 29
    invoke-super/range {p0 .. p5}, Lcom/instagram/creation/photo/crop/s;->onLayout(ZIIII)V

    .line 30
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    .line 32
    iget-object v2, v0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 33
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->d()V

    .line 34
    iget-boolean v2, v0, Lcom/instagram/creation/photo/crop/q;->b:Z

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/q;Z)V

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 84
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    iget-boolean v1, v1, Lcom/instagram/creation/photo/crop/b;->a:Z

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_3
    :goto_2
    move v0, v2

    .line 149
    goto :goto_0

    :pswitch_0
    move v1, v0

    .line 90
    :goto_3
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/instagram/creation/photo/crop/q;->a(FF)I

    move-result v3

    .line 93
    if-eq v3, v2, :cond_5

    .line 94
    iput v3, p0, Lcom/instagram/creation/photo/crop/CropImageView;->e:I

    .line 95
    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    .line 98
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    const/16 v0, 0x20

    if-ne v3, v0, :cond_4

    sget v0, Lcom/instagram/creation/photo/crop/r;->b:I

    :goto_4
    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/q;->a(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/instagram/creation/photo/crop/r;->c:I

    goto :goto_4

    .line 90
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/q;Z)V

    .line 109
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    sget v1, Lcom/instagram/creation/photo/crop/r;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/q;->a(I)V

    .line 112
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    goto :goto_1

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    iget v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/instagram/creation/photo/crop/q;->a(IFF)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    .line 128
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/q;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b(Lcom/instagram/creation/photo/crop/q;)V

    goto/16 :goto_1

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V

    goto/16 :goto_2

    .line 143
    :pswitch_4
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V

    goto/16 :goto_2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 134
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
