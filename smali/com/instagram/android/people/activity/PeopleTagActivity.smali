.class public Lcom/instagram/android/people/activity/PeopleTagActivity;
.super Lcom/instagram/base/activity/d;
.source "PeopleTagActivity.java"

# interfaces
.implements Lcom/instagram/android/people/b/l;


# instance fields
.field private p:Lcom/instagram/model/people/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/b/a;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/user/c/a;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/b/a;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->b()V

    .line 92
    :cond_0
    return-void
.end method

.method public final h()Lcom/instagram/model/people/b;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    const-string v0, "people_tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/instagram/model/people/b;

    invoke-direct {v1, v0}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    .line 56
    :goto_0
    sget v0, Lcom/facebook/aw;->activity_single_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->setContentView(I)V

    .line 58
    new-instance v0, Lcom/instagram/android/people/b/a;

    invoke-direct {v0}, Lcom/instagram/android/people/b/a;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/b/a;->g(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    .line 62
    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 65
    sget v2, Lcom/facebook/av;->layout_container_main:I

    const-string v3, "PeopleTagFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 66
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    .line 68
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "people_tags"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/instagram/model/people/b;

    invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v1, Lcom/instagram/model/people/b;

    invoke-direct {v1, v0}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "people_tags"

    iget-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    return-void
.end method
