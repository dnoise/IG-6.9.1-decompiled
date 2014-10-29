.class public final Lcom/instagram/android/people/b/m;
.super Lcom/instagram/android/fragment/h;
.source "PhotosOfYouFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/people/a/a;",
        "Lcom/instagram/android/c/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/instagram/common/d/j;

.field private aj:Lcom/instagram/common/d/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    return-void
.end method

.method private a(Lcom/instagram/android/c/a/o;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->b(Lcom/instagram/feed/a/i;Z)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    .line 135
    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->at()V

    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 142
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/m;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    return-void
.end method

.method private as()Lcom/instagram/android/people/a/a;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/instagram/android/people/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method private at()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->photos_of_you_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 175
    sget v0, Lcom/facebook/av;->photos_of_you_empty_body:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    iget-boolean v2, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-nez v2, :cond_0

    .line 177
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    :cond_1
    return-void
.end method

.method private b(Lcom/instagram/android/c/a/o;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->a(Lcom/instagram/feed/a/i;Z)V

    .line 149
    invoke-virtual {p1}, Lcom/instagram/android/c/a/o;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/c/a/o;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/instagram/android/c/a/o;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Z)V

    .line 153
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/i;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->F()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/d/j;

    invoke-virtual {v1, v0}, Lcom/instagram/common/d/j;->a(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 81
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->H()V

    .line 82
    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->as()Lcom/instagram/android/people/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final Y()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->af:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    .line 62
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/a/a;

    iget-boolean v1, p0, Lcom/instagram/android/people/b/m;->ag:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/a/a;->a(Z)V

    .line 64
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/d/j;

    .line 65
    iget-object v0, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/d/j;

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    new-instance v2, Lcom/instagram/android/people/b/n;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/n;-><init>(Lcom/instagram/android/people/b/m;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/d/h;

    .line 73
    iget-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    .line 76
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->at()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/a/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/az;->photos_of_you:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/instagram/android/people/b/o;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/b/o;-><init>(Lcom/instagram/android/people/b/m;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/people/b/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/p;-><init>(Lcom/instagram/android/people/b/m;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 218
    :cond_0
    return-void

    .line 193
    :cond_1
    sget v0, Lcom/facebook/az;->photos_of_user:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/people/b/m;->af:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/b/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic a(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/instagram/android/c/a/o;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/b/m;->b(Lcom/instagram/android/c/a/o;Z)V

    return-void
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, "src"

    const-string v1, "tagged"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "userId"

    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method protected final aa()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->aa()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 162
    return-void
.end method

.method protected final ai()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected final synthetic b(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/instagram/android/c/a/o;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/b/m;->a(Lcom/instagram/android/c/a/o;Z)V

    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 3
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/instagram/android/c/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/instagram/android/c/a/n;-><init>(Lcom/instagram/feed/f/a;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "feed_photos_of_you"

    return-object v0
.end method

.method public final n_()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    .line 187
    return-void
.end method
