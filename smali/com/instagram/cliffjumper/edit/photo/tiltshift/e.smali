.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
.super Ljava/lang/Object;
.source "TiltShiftFogAnimator.java"


# instance fields
.field private final a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

.field private b:Landroid/os/Handler;

.field private c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/view/Choreographer;

.field private f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;


# direct methods
.method public constructor <init>(Lcom/instagram/filterkit/filter/IgFilterGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    .line 33
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    .line 34
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    .line 35
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/view/Choreographer;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static final b()Z
    .locals 2

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->a()V

    .line 97
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 98
    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;

    .line 111
    :cond_1
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;->a()V

    .line 103
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    goto :goto_0
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f666666

    .line 41
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a()V

    .line 42
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->j()F

    move-result v5

    .line 43
    sub-float v0, v6, v5

    const v1, 0x4d0f0d18

    mul-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-long v3, v0

    .line 44
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    .line 50
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    .line 57
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a()V

    .line 63
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->j()F

    move-result v5

    .line 64
    const v0, 0x4e32d05e

    mul-float/2addr v0, v5

    const v1, 0x3f666666

    div-float/2addr v0, v1

    float-to-long v3, v0

    .line 65
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    .line 71
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    .line 78
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    .line 84
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;

    invoke-direct {v0, p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;

    .line 90
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method
