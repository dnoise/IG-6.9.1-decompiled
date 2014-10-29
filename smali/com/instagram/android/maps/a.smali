.class public final Lcom/instagram/android/maps/a;
.super Lcom/instagram/base/a/b;
.source "MapFragment.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, " tag"

    sput-object v0, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 49
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 74
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 75
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 103
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 104
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 83
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, v1

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    return-object v2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-class v2, Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    .line 39
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "self_photomap"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "photomap"

    goto :goto_0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 96
    return-void
.end method
