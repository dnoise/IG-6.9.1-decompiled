.class public final Lcom/instagram/android/l/a/b;
.super Lcom/instagram/android/l/a/c;
.source "TextureViewVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/TextureView;

.field private i:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/instagram/android/l/a/c;-><init>()V

    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/l/a/b;->i:Landroid/graphics/SurfaceTexture;

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    iput-object v2, p0, Lcom/instagram/android/l/a/b;->g:Landroid/view/ViewGroup;

    .line 43
    iput-object v2, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    .line 44
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 26
    iput-object p1, p0, Lcom/instagram/android/l/a/b;->g:Landroid/view/ViewGroup;

    .line 28
    new-instance v0, Lcom/instagram/creation/video/ui/p;

    iget-object v1, p0, Lcom/instagram/android/l/a/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    .line 29
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 35
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 36
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 67
    invoke-direct {p0}, Lcom/instagram/android/l/a/b;->o()V

    .line 68
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/android/l/a/b;->o()V

    .line 73
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/instagram/android/l/a/b;->h:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 58
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 61
    :cond_1
    invoke-super {p0}, Lcom/instagram/android/l/a/c;->d()V

    .line 62
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 89
    iget-object v1, p0, Lcom/instagram/android/l/a/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 90
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/instagram/android/l/a/b;->i:Landroid/graphics/SurfaceTexture;

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    return-void
.end method
