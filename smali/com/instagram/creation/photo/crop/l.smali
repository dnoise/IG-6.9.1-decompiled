.class final Lcom/instagram/creation/photo/crop/l;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;)V
    .locals 1
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/creation/photo/crop/l;->a:F

    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 761
    new-instance v0, Lcom/instagram/creation/photo/crop/q;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/q;-><init>(Landroid/view/View;)V

    .line 763
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CropFragment.isAvatar"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->b()V

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 768
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 770
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v2

    .line 771
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    .line 774
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    long-to-int v6, v6

    int-to-double v6, v6

    const-wide v8, 0x3fd7ae147ae147aeL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 775
    invoke-static {}, Lcom/instagram/creation/photo/crop/b;->b()Ljava/lang/Class;

    .line 777
    :goto_0
    mul-int v7, v2, v1

    if-le v7, v6, :cond_1

    .line 781
    div-int/lit8 v2, v2, 0x2

    .line 782
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->i(Lcom/instagram/creation/photo/crop/b;)I

    move-result v1

    if-lez v1, :cond_5

    .line 787
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->i(Lcom/instagram/creation/photo/crop/b;)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 790
    :goto_1
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 794
    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 803
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/q;

    move-result-object v1

    if-nez v1, :cond_3

    .line 804
    int-to-float v1, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 807
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 809
    iget-object v6, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-virtual {v6}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CropFragment.isAvatar"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 811
    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 816
    :cond_2
    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    .line 817
    sub-int v3, v5, v1

    div-int/lit8 v5, v3, 0x2

    .line 819
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v3, v7, v8, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 824
    :goto_3
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->b:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v5}, Lcom/instagram/creation/photo/crop/b;->k(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/photo/crop/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V

    .line 831
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/q;)V

    .line 832
    return-void

    .line 821
    :cond_3
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/q;

    move-result-object v1

    iget-object v3, v1, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/l;->b:Landroid/graphics/Matrix;

    .line 837
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/instagram/creation/photo/crop/l;->a:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/crop/l;->a:F

    .line 839
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/l;->a()V

    .line 841
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->invalidate()V

    .line 842
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/q;

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/crop/q;)Lcom/instagram/creation/photo/crop/q;

    .line 844
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/l;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->a()V

    .line 847
    :cond_0
    return-void
.end method
