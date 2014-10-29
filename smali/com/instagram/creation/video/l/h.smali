.class public final Lcom/instagram/creation/video/l/h;
.super Ljava/lang/Object;
.source "VideoPreviewDelegate.java"

# interfaces
.implements Lcom/instagram/creation/video/ui/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/instagram/creation/video/d/a;

.field private c:Lcom/instagram/creation/video/ui/a/a;

.field private d:Z

.field private e:Lcom/instagram/creation/b/a/a;

.field private f:I

.field private g:Lcom/instagram/creation/video/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/l/h;->f:I

    .line 30
    iput-object p1, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;

    .line 32
    iput-boolean p3, p0, Lcom/instagram/creation/video/l/h;->d:Z

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->e:Lcom/instagram/creation/b/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/l/h;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/instagram/creation/video/l/h;->f:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->g:Lcom/instagram/creation/video/d/c;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/l/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/instagram/creation/video/l/h;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/a;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->j()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    .line 158
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/instagram/creation/video/l/h;->f:I

    .line 44
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/j;->a(Lcom/instagram/creation/video/e/c;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v1, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;

    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;

    check-cast v0, Lcom/instagram/creation/video/k/a;

    invoke-static {v1, v0}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/k/a;)Lcom/instagram/creation/video/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    .line 133
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/l/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/video/l/i;-><init>(Lcom/instagram/creation/video/l/h;Landroid/graphics/SurfaceTexture;I)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/creation/video/l/h;->e:Lcom/instagram/creation/b/a/a;

    .line 37
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/b/a/a;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/creation/video/l/h;->g:Lcom/instagram/creation/video/d/c;

    .line 52
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/video/d/c;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->a()V

    .line 163
    return-void
.end method

.method public final b(Landroid/graphics/SurfaceTexture;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/video/d/a;->a(Landroid/graphics/SurfaceTexture;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/a/a;->d()V

    .line 64
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/a/a;->e()V

    .line 65
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->h()V

    .line 77
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->i()V

    .line 83
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->e()Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->f()V

    .line 96
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->c()V

    .line 102
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->d()V

    .line 108
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->b()V

    .line 114
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->j()V

    .line 120
    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->g()Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
