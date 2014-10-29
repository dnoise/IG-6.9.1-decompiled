.class public final Lcom/instagram/common/u/a/a;
.super Lcom/instagram/common/analytics/b;
.source "NotificationAnalyticsEvent.java"


# instance fields
.field private final a:Lcom/instagram/common/u/c/a;


# direct methods
.method public constructor <init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    const-string v0, "push_notification"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 30
    iput-object p1, p0, Lcom/instagram/common/u/a/a;->a:Lcom/instagram/common/u/c/a;

    .line 31
    invoke-direct {p0}, Lcom/instagram/common/u/a/a;->g()V

    .line 32
    const-string v0, "step"

    invoke-virtual {p0, v0, p2}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 33
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/u/a/a;->a:Lcom/instagram/common/u/c/a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/instagram/common/u/a/a;->a:Lcom/instagram/common/u/c/a;

    invoke-interface {v0}, Lcom/instagram/common/u/c/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "pi"

    invoke-virtual {p0, v1, v0}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 42
    :cond_0
    return-void
.end method
