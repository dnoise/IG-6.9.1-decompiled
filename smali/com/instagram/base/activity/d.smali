.class public abstract Lcom/instagram/base/activity/d;
.super Landroid/support/v4/app/k;
.source "IgFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a_()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/instagram/base/activity/d;->onBackPressed()V

    .line 62
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 42
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/analytics/d;->e()V

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    invoke-super {p0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/p/a/b;->b()V

    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/d;->setVolumeControlStream(I)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/k;->onDestroy()V

    .line 49
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/p/a/b;->c()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/k;->onPause()V

    .line 37
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/p/a/b;->b(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/support/v4/app/k;->onResume()V

    .line 31
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/p/a/b;->a(Landroid/app/Activity;)V

    .line 32
    return-void
.end method
