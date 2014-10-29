.class public Lcom/instagram/android/maps/DedicatedMapActivity;
.super Lcom/instagram/base/activity/a;
.source "DedicatedMapActivity.java"


# instance fields
.field private p:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    .line 27
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    .line 28
    return-void
.end method

.method private i()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final g()Landroid/app/LocalActivityManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method protected final h()V
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/instagram/android/maps/a;

    invoke-direct {v0}, Lcom/instagram/android/maps/a;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 40
    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 41
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    .line 44
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_0

    const-string v0, "android:states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 52
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 73
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onStop()V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 67
    return-void
.end method
