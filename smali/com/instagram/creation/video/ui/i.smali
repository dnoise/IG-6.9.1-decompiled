.class final Lcom/instagram/creation/video/ui/i;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/instagram/creation/video/ui/h;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/ui/f;

.field private b:I

.field private c:Lcom/instagram/creation/video/ui/k;

.field private d:Lcom/instagram/creation/video/ui/j;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/ui/f;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/instagram/creation/video/ui/j;

    invoke-direct {v0}, Lcom/instagram/creation/video/ui/j;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    .line 165
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-static {v0}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/f;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    .line 214
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/k;->a()I

    move-result v1

    iput v1, v0, Lcom/instagram/creation/video/ui/j;->a:I

    .line 216
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/k;->b()I

    move-result v1

    iput v1, v0, Lcom/instagram/creation/video/ui/j;->b:I

    .line 218
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v0, v0, Lcom/instagram/creation/video/ui/j;->a:I

    .line 219
    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v1, v1, Lcom/instagram/creation/video/ui/j;->b:I

    .line 220
    iget-object v2, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v3, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-static {v3, v0, v1}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v3

    iput v3, v2, Lcom/instagram/creation/video/ui/j;->a:I

    .line 221
    iget-object v2, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v3, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-static {v3, v1, v0}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v0

    iput v0, v2, Lcom/instagram/creation/video/ui/j;->b:I

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/i;->c()V

    .line 209
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-static {p1, p2}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V

    .line 199
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/f;->b()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/f;->c()I

    move-result v1

    .line 182
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_2

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/k;->f()V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 188
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 189
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/instagram/creation/video/gl/c;->a(I)V

    .line 190
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    .line 191
    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    if-eqz v0, :cond_3

    .line 192
    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/instagram/creation/video/gl/c;->b(F)V

    .line 194
    :cond_3
    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v4

    .line 195
    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v5

    .line 196
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v5

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/instagram/creation/video/ui/k;->b(Lcom/instagram/creation/video/gl/c;IIII)V

    .line 197
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 198
    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/creation/video/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    .line 204
    return-void
.end method

.method public final b()Lcom/instagram/creation/video/ui/j;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    return-object v0
.end method
