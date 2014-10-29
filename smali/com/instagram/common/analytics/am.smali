.class final Lcom/instagram/common/analytics/am;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/instagram/common/analytics/am;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/am;-><init>(Lcom/instagram/common/analytics/ab;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/p/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/instagram/common/analytics/am;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->j(Lcom/instagram/common/analytics/ab;)V

    .line 606
    iget-object v0, p0, Lcom/instagram/common/analytics/am;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->f(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/instagram/common/analytics/am;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->o(Lcom/instagram/common/analytics/ab;)V

    .line 611
    :cond_0
    return-void
.end method
