.class final Lcom/instagram/common/analytics/ai;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;

.field private final b:Lcom/instagram/common/analytics/b;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/instagram/common/analytics/ai;->b:Lcom/instagram/common/analytics/b;

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/ai;-><init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/common/analytics/ai;->b:Lcom/instagram/common/analytics/b;

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V

    .line 527
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->b:Lcom/instagram/common/analytics/b;

    .line 529
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v1}, Lcom/instagram/common/analytics/ab;->l(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/i;)Lcom/instagram/common/analytics/i;

    .line 533
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->g()V

    .line 536
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->i(Lcom/instagram/common/analytics/ab;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/analytics/ai;->b:Lcom/instagram/common/analytics/b;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->a(Lcom/instagram/common/analytics/b;)V

    .line 540
    return-void
.end method
