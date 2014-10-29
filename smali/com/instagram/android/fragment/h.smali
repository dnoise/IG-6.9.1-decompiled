.class public abstract Lcom/instagram/android/fragment/h;
.super Lcom/instagram/android/fragment/a;
.source "AbstractTopLevelFeedFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FeedAdapterType:",
        "Lcom/instagram/android/feed/a/a;",
        "MediaFeedResponseType:",
        "Lcom/instagram/feed/a/i;",
        ">",
        "Lcom/instagram/android/fragment/a",
        "<TFeedAdapterType;TMediaFeedResponseType;>;",
        "Lcom/instagram/a/c;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final Z()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 27
    new-instance v1, Lcom/instagram/android/fragment/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/i;-><init>(Lcom/instagram/android/fragment/h;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 33
    new-instance v1, Lcom/instagram/android/fragment/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/h;)V

    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->am()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method protected aa()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method protected final ab()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method protected final am()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->p()Landroid/support/v4/app/s;

    move-result-object v0

    return-object v0
.end method

.method protected final ar()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->o_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "action_bar_feed_retry"

    invoke-direct {v0, v1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/fragment/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/h;->c(Z)V

    .line 54
    :cond_1
    return-void
.end method

.method protected b(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method
