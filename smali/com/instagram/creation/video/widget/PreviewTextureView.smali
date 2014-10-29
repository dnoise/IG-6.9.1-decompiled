.class public Lcom/instagram/creation/video/widget/PreviewTextureView;
.super Lcom/instagram/creation/video/widget/d;
.source "PreviewTextureView.java"


# instance fields
.field private a:Lcom/instagram/creation/video/gl/j;

.field private b:Lcom/instagram/creation/video/gl/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->a()V

    .line 58
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->b()V

    .line 64
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/instagram/creation/video/gl/j;

    invoke-direct {v0, p1, p2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    .line 39
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/y;->a(Lcom/instagram/creation/video/gl/j;)V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/y;->X()V

    .line 47
    iput-object v2, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;

    .line 48
    iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    .line 49
    iput-object v2, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public setDependent(Lcom/instagram/creation/video/gl/y;)V
    .locals 0
    .parameter "dependent"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;

    .line 33
    return-void
.end method
