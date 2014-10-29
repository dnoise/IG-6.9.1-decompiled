.class public final Lcom/instagram/b/a/b;
.super Ljava/lang/Object;
.source "InstagramDeviceInfoReporter.java"

# interfaces
.implements Lcom/instagram/common/p/b/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/instagram/b/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/b/a/c;-><init>(Lcom/instagram/b/a/b;)V

    iput-object v0, p0, Lcom/instagram/b/a/b;->b:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/instagram/b/a/b;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/instagram/b/a/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/b/a/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 66
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/instagram/l/b/a;->y()J

    move-result-wide v1

    .line 71
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 72
    const-wide/32 v5, 0x2932e00

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 73
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/b/a/b;->b:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0, v3, v4}, Lcom/instagram/l/b/a;->a(J)Z

    .line 77
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
