.class public abstract Lcom/instagram/creation/video/widget/d;
.super Lcom/instagram/creation/video/ui/p;
.source "IgTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    .line 30
    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p0}, Lcom/instagram/creation/video/widget/d;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/creation/video/widget/d;->a()V

    .line 35
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    return-void
.end method
