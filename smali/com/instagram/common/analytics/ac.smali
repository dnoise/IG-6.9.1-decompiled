.class final Lcom/instagram/common/analytics/ac;
.super Landroid/os/Handler;
.source "InstagramAnalyticsLogger.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/ab;

    new-instance v1, Lcom/instagram/common/analytics/ak;

    iget-object v2, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/ab;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/ak;-><init>(Lcom/instagram/common/analytics/ab;B)V

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
