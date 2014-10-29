.class public abstract Lcom/instagram/creation/video/j/g;
.super Ljava/lang/Object;
.source "OESInputRenderer.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/p;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/video/e/b;

.field private final b:Lcom/instagram/creation/video/j/h;

.field private final c:[F

.field private d:I

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/g;->f:Z

    .line 29
    new-instance v0, Lcom/instagram/creation/video/e/b;

    invoke-direct {v0}, Lcom/instagram/creation/video/e/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/video/j/g;->c:[F

    .line 31
    new-instance v0, Lcom/instagram/creation/video/j/h;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/h;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;

    .line 32
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/g;->f:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 35
    const v0, 0x8d65

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/j/g;->d:I

    .line 36
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/instagram/creation/video/j/g;->d:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;

    .line 38
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/b;->e()I

    .line 39
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/j/h;->b(Lcom/instagram/creation/b/a/a;)V

    .line 85
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/g;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 45
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 46
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/creation/video/j/g;->c:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 48
    invoke-direct {p0}, Lcom/instagram/creation/video/j/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x8d40

    invoke-virtual {p0, p1}, Lcom/instagram/creation/video/j/g;->b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/video/gl/g;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 50
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;

    iget v1, p0, Lcom/instagram/creation/video/j/g;->d:I

    iget-object v2, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;

    invoke-virtual {v2}, Lcom/instagram/creation/video/j/h;->a()Lcom/instagram/creation/video/j/l;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/creation/video/j/g;->c:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/creation/video/e/b;->a(ILcom/instagram/creation/video/j/l;[F)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/creation/video/j/g;->c(Lcom/instagram/creation/video/gl/g;)V

    .line 54
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/instagram/creation/video/j/g;->f:Z

    .line 58
    return-void
.end method

.method protected abstract b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public b(Lcom/instagram/creation/b/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/j/h;->a(Lcom/instagram/creation/b/a/a;)V

    .line 89
    return-void
.end method

.method public final c()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected c(Lcom/instagram/creation/video/gl/g;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 97
    return-void
.end method
