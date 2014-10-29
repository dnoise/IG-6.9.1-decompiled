.class public final Lcom/instagram/a/d;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarItemBackgroundDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/instagram/a/e;

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/a/d;->a:Landroid/graphics/Paint;

    .line 50
    iput-object p1, p0, Lcom/instagram/a/d;->b:Landroid/content/res/Resources;

    .line 51
    iput-object p2, p0, Lcom/instagram/a/d;->c:Lcom/instagram/a/e;

    .line 52
    iput p3, p0, Lcom/instagram/a/d;->d:I

    .line 53
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/instagram/a/d;->d:I

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x4080

    .line 57
    iget-boolean v0, p0, Lcom/instagram/a/d;->e:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/a/d;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/a/d;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/instagram/a/d;->c:Lcom/instagram/a/e;

    invoke-static {v2}, Lcom/instagram/a/e;->a(Lcom/instagram/a/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p0}, Lcom/instagram/a/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    :cond_0
    iget v0, p0, Lcom/instagram/a/d;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/instagram/a/d;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/instagram/a/d;->b:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/instagram/a/d;->c:Lcom/instagram/a/e;

    invoke-static {v3}, Lcom/instagram/a/e;->b(Lcom/instagram/a/e;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/instagram/a/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/instagram/a/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x4040

    mul-float/2addr v0, v4

    div-float v4, v0, v5

    iget-object v5, p0, Lcom/instagram/a/d;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/a/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, -0x3

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-boolean v2, p0, Lcom/instagram/a/d;->e:Z

    .line 77
    new-array v3, v0, [I

    const v4, 0x10100a7

    aput v4, v3, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/instagram/a/d;->e:Z

    .line 78
    invoke-virtual {p0}, Lcom/instagram/a/d;->invalidateSelf()V

    .line 79
    iget-boolean v3, p0, Lcom/instagram/a/d;->e:Z

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method
