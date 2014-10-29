.class final Lcom/instagram/cliffjumper/edit/photo/a/ae;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/ae;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .parameter "surface"
    .parameter "width"
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    new-instance v1, Lcom/instagram/filterkit/c/e;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instagram/filterkit/a/c;

    invoke-direct {v3, p1}, Lcom/instagram/filterkit/a/c;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/z;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/c/e;-><init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    .line 1128
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V

    .line 1130
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    .line 1131
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    .line 1132
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->b()V

    .line 1140
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    .line 1141
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter
    .parameter "width"
    .parameter

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ae;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V

    .line 1121
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    return-void
.end method
