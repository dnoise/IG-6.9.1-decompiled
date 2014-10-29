.class final Lcom/instagram/common/analytics/af;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;

.field private b:Lcom/instagram/common/analytics/b;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p2, p0, Lcom/instagram/common/analytics/af;->b:Lcom/instagram/common/analytics/b;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/af;-><init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 491
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/common/analytics/af;->b:Lcom/instagram/common/analytics/b;

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V

    .line 493
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->b:Lcom/instagram/common/analytics/b;

    .line 495
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->h(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/analytics/af;->b:Lcom/instagram/common/analytics/b;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->a(Lcom/instagram/common/analytics/b;)V

    .line 497
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->i(Lcom/instagram/common/analytics/ab;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->h(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->j(Lcom/instagram/common/analytics/ab;)V

    .line 508
    :goto_0
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/p/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->k(Lcom/instagram/common/analytics/ab;)V

    .line 512
    :cond_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/analytics/af;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->i(Lcom/instagram/common/analytics/ab;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
