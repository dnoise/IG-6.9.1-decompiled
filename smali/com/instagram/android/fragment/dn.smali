.class public final Lcom/instagram/android/fragment/dn;
.super Lcom/instagram/base/a/c;
.source "RecommendedUserFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/a/c;


# instance fields
.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/instagram/user/follow/h;

.field private af:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ag:Landroid/os/Handler;

.field private final ah:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/user/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instagram/android/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/dn;->af:Ljava/util/Set;

    .line 61
    new-instance v0, Lcom/instagram/android/fragment/do;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/do;-><init>(Lcom/instagram/android/fragment/dn;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/dn;->ag:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/instagram/android/fragment/dp;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dp;-><init>(Lcom/instagram/android/fragment/dn;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/dn;->ah:Lcom/instagram/common/j/e;

    return-void
.end method

.method private W()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private X()Lcom/instagram/api/j/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/f",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/instagram/android/fragment/dt;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dt;-><init>(Lcom/instagram/android/fragment/dn;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/dn;)Lcom/instagram/android/a/m;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/fragment/dn;->i:Lcom/instagram/android/a/m;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/dn;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/instagram/android/fragment/dn;->ab:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/dn;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/fragment/dn;->ag:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .locals 6
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/instagram/android/fragment/dn;->aa:Z

    .line 125
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ac:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->aa:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ab:Z

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/instagram/android/c/a/q;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->W()Z

    move-result v3

    iget-boolean v4, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->X()Lcom/instagram/api/j/f;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/q;->g()V

    .line 135
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/dn;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ab:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/dn;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ac:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/dn;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/dn;->c(Z)V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/fragment/dn;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->aa:Z

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/fragment/dn;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ac:Z

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 107
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/dn;->af:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 121
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/fragment/dn;->ah:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 147
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 148
    return-void
.end method

.method public final V()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 272
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RecommendedUserFragment.IS_AYML_ENABLED"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    .line 93
    :cond_0
    sget-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/fragment/dn;->ae:Lcom/instagram/user/follow/h;

    .line 96
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/dn;->a(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/fragment/dn;->ah:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 101
    invoke-direct {p0, v3}, Lcom/instagram/android/fragment/dn;->c(Z)V

    .line 102
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/az;->recommended_follow_more_people:I

    .line 177
    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 178
    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->W()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 181
    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->W()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    new-instance v0, Lcom/instagram/android/fragment/dq;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dq;-><init>(Lcom/instagram/android/fragment/dn;)V

    invoke-interface {p1, v1, v0}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 193
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ab:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 195
    new-instance v0, Lcom/instagram/android/fragment/dr;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dr;-><init>(Lcom/instagram/android/fragment/dn;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget v0, Lcom/facebook/az;->done:I

    new-instance v1, Lcom/instagram/android/fragment/ds;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ds;-><init>(Lcom/instagram/android/fragment/dn;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->b(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 213
    :cond_0
    return-void

    .line 174
    :cond_1
    sget v0, Lcom/facebook/az;->find_friends_item_suggested_users:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 178
    goto :goto_1

    :cond_3
    move v1, v2

    .line 181
    goto :goto_2
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    .line 279
    invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/instagram/user/follow/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->z()Landroid/support/v4/app/an;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-virtual {v0, v1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V

    .line 285
    :cond_1
    return-void
.end method

.method protected final d()Lcom/instagram/android/a/m;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/android/fragment/dn;->i:Lcom/instagram/android/a/m;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/instagram/android/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/a/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->z()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/a/n;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/fragment/dn;->W()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/a/n;->a(Z)Lcom/instagram/android/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->b(Z)Lcom/instagram/android/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/dn;->ae:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/a/n;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(I)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->e()Lcom/instagram/android/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/dn;->i:Lcom/instagram/android/a/m;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/dn;->i:Lcom/instagram/android/a/m;

    return-object v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    if-eqz v0, :cond_0

    const-string v0, "ayml_recommended_users"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "suggested_users"

    goto :goto_0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/instagram/android/fragment/dn;->ab:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 140
    invoke-super {p0}, Lcom/instagram/base/a/c;->k_()V

    .line 141
    return-void
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 165
    invoke-super {p0}, Lcom/instagram/base/a/c;->m_()V

    .line 166
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_1

    if-lez p3, :cond_1

    move v1, p2

    .line 296
    :goto_0
    add-int v0, p2, p3

    if-ge v1, v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/instagram/android/fragment/dn;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    .line 300
    iget-object v2, p0, Lcom/instagram/android/fragment/dn;->af:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/instagram/android/fragment/dn;->ad:Z

    if-eqz v2, :cond_0

    .line 301
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 297
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    return-void
.end method
