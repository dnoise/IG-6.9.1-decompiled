.class public abstract Lcom/instagram/creation/video/d/a;
.super Ljava/lang/Object;
.source "MediaDecoderManager.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Z

.field protected c:Landroid/os/Handler;

.field protected d:Lcom/instagram/creation/video/d/c;

.field protected e:Lcom/instagram/creation/b/a/a;

.field private f:Lcom/instagram/creation/video/d/b;


# direct methods
.method protected constructor <init>(Lcom/instagram/creation/video/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/a;->a:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/a;->b:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/a;->c:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    .line 38
    return-void
.end method

.method public static a(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/k/a;)Lcom/instagram/creation/video/d/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/creation/video/d/e;

    new-instance v1, Lcom/instagram/creation/video/gl/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/creation/video/d/e;-><init>(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/video/gl/j;->a(Landroid/graphics/SurfaceTexture;I)V

    .line 66
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/creation/video/d/a;->e:Lcom/instagram/creation/b/a/a;

    .line 83
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/creation/video/d/a;->d:Lcom/instagram/creation/video/d/c;

    .line 89
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->n()V

    .line 71
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->o()V

    .line 75
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->p()V

    .line 79
    return-void
.end method

.method public abstract k()Lcom/instagram/creation/video/d/d;
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->b()V

    .line 101
    :cond_0
    return-void
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->c()V

    .line 107
    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->d()V

    .line 113
    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->e()V

    .line 119
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->f()V

    .line 125
    :cond_0
    return-void
.end method
