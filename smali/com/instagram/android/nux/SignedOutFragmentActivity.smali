.class public Lcom/instagram/android/nux/SignedOutFragmentActivity;
.super Lcom/instagram/base/activity/a;
.source "SignedOutFragmentActivity.java"


# instance fields
.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    .line 22
    iput-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    .line 23
    iput-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    .line 27
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    .line 31
    return-void
.end method

.method protected final h()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 53
    sget v1, Lcom/facebook/av;->layout_container_main:I

    new-instance v2, Lcom/instagram/android/nux/n;

    invoke-direct {v2}, Lcom/instagram/android/nux/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 56
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    .line 35
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V

    .line 92
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "allow_back"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    .line 70
    const-string v0, "is_nux_flow"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    .line 71
    const-string v0, "has_followed"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onResume()V

    .line 78
    new-instance v0, Lcom/instagram/registrationpush/a;

    invoke-direct {v0, p0}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->b()V

    .line 82
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->finish()V

    .line 85
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "allow_back"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v0, "is_nux_flow"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v0, "has_followed"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method
