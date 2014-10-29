.class public Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.super Lcom/instagram/creation/video/widget/d;
.source "LivePreviewTextureView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/video/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setClickable(Z)V

    .line 39
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "surface"
    .parameter "width"
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;

    invoke-interface {v0, p1, p2}, Lcom/instagram/creation/video/ui/d;->a(Landroid/graphics/SurfaceTexture;I)V

    .line 55
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/d;->a()V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/d;->b()V

    .line 44
    invoke-super {p0}, Lcom/instagram/creation/video/widget/d;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDelegate(Lcom/instagram/creation/video/ui/d;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;

    .line 49
    return-void
.end method
