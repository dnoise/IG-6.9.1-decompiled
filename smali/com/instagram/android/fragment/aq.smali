.class public final Lcom/instagram/android/fragment/aq;
.super Lcom/instagram/android/fragment/ey;
.source "ExplorePeopleFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/fj;


# instance fields
.field private ac:Lcom/instagram/base/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/instagram/android/fragment/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public final W()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fj;)V

    .line 48
    return-void
.end method

.method public final X()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fj;)V

    .line 53
    return-void
.end method

.method public final Y()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected final Z()Lcom/instagram/android/a/m;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->i:Lcom/instagram/android/a/m;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/a/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->z()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->r()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->a()Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->b()Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->c()Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->d()Lcom/instagram/android/a/n;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(I)Lcom/instagram/android/a/n;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->e()Lcom/instagram/android/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/aq;->i:Lcom/instagram/android/a/m;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->i:Lcom/instagram/android/a/m;

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fc;->at()Lcom/instagram/base/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/aq;->ac:Lcom/instagram/base/b/b;

    .line 26
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Landroid/support/v4/app/ak;)V

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/ey;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "explore_people"

    return-object v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/instagram/android/fragment/ey;->onScroll(Landroid/widget/AbsListView;III)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->ac:Lcom/instagram/base/b/b;

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->ac:Lcom/instagram/base/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/base/b/b;->onScroll(Landroid/widget/AbsListView;III)V

    .line 85
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/ey;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 90
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->ac:Lcom/instagram/base/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/instagram/android/fragment/aq;->ac:Lcom/instagram/base/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/base/b/b;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 93
    :cond_0
    return-void
.end method

.method public final t_()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->aa()V

    .line 36
    :cond_0
    return-void
.end method

.method public final u_()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/instagram/android/fragment/aq;->ab:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/fragment/aq;->aa()V

    .line 43
    :cond_0
    return-void
.end method
