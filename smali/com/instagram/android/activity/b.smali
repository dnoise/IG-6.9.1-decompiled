.class final Lcom/instagram/android/activity/b;
.super Ljava/lang/Object;
.source "ActivityInTab.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/ActivityInTab;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/ActivityInTab;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/ActivityInTab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/b;-><init>(Lcom/instagram/android/activity/ActivityInTab;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MainTabActivity.EXTRA_TAB_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v1}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v1

    if-lez v1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->g()V

    goto :goto_0

    .line 160
    :cond_2
    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 163
    instance-of v0, v1, Lcom/instagram/base/a/e;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 164
    check-cast v0, Lcom/instagram/base/a/e;

    invoke-interface {v0}, Lcom/instagram/base/a/e;->s_()V

    .line 167
    :cond_3
    instance-of v0, v1, Lcom/instagram/android/fragment/fo;

    if-eqz v0, :cond_0

    .line 168
    check-cast v1, Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->av()V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;

    invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->a(Lcom/instagram/android/activity/ActivityInTab;)Z

    goto :goto_0
.end method
