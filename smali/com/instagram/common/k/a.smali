.class public final Lcom/instagram/common/k/a;
.super Ljava/lang/Object;
.source "DropFrameWatcher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static a:Lcom/instagram/common/k/a;


# instance fields
.field private final b:Landroid/view/Choreographer$FrameCallback;

.field private final c:J

.field private d:Z

.field private e:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/instagram/common/k/b;

    invoke-direct {v0, p0}, Lcom/instagram/common/k/b;-><init>(Lcom/instagram/common/k/a;)V

    iput-object v0, p0, Lcom/instagram/common/k/a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 47
    const-wide v0, 0x41cdcd6500000000L

    invoke-static {p1}, Lcom/instagram/common/k/a;->b(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/instagram/common/k/a;->c:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/k/a;->d:Z

    .line 49
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/instagram/common/k/a;->e:J

    .line 50
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/common/k/a;
    .locals 2
    .parameter

    .prologue
    .line 79
    const-class v1, Lcom/instagram/common/k/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/instagram/common/k/a;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/instagram/common/k/a;

    invoke-direct {v0, p0}, Lcom/instagram/common/k/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/common/k/a;->a:Lcom/instagram/common/k/a;

    .line 82
    :cond_0
    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/instagram/common/k/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/instagram/common/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/common/k/a;->b()V

    return-void
.end method

.method private static b(Landroid/content/Context;)F
    .locals 2
    .parameter

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 87
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4270

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 54
    iget-wide v2, p0, Lcom/instagram/common/k/a;->e:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/instagram/common/k/a;->c:J

    sub-long/2addr v2, v4

    .line 55
    iget-wide v4, p0, Lcom/instagram/common/k/a;->c:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 56
    iget-wide v4, p0, Lcom/instagram/common/k/a;->c:J

    div-long/2addr v2, v4

    .line 57
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    :cond_0
    iput-wide v0, p0, Lcom/instagram/common/k/a;->e:J

    .line 67
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/instagram/common/k/a;->d:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shall not attach the watch twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/k/a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/k/a;->d:Z

    .line 76
    return-void
.end method
