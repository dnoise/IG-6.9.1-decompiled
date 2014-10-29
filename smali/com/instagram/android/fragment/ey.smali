.class public abstract Lcom/instagram/android/fragment/ey;
.super Lcom/instagram/base/a/c;
.source "SuggestedUserFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/base/a/e;


# instance fields
.field protected aa:Lcom/instagram/user/follow/h;

.field protected ab:Z

.field private ac:Landroid/content/IntentFilter;

.field private final ad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Z

.field private final af:Landroid/content/BroadcastReceiver;

.field protected i:Lcom/instagram/android/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ey;->ad:Ljava/util/Set;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ey;->ab:Z

    .line 47
    new-instance v0, Lcom/instagram/android/fragment/ez;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ez;-><init>(Lcom/instagram/android/fragment/ey;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ey;->af:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/fragment/ey;->d()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ey;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ey;->ae:Z

    return p1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->recommended_user_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ey;->af:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/android/fragment/ey;->ac:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 69
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ey;->af:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/ey;->ad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 77
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 78
    return-void
.end method

.method public abstract W()V
.end method

.method public abstract X()V
.end method

.method public abstract Y()Z
.end method

.method protected abstract Z()Lcom/instagram/android/a/m;
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ey;->ac:Landroid/content/IntentFilter;

    .line 60
    sget-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/fragment/ey;->aa:Lcom/instagram/user/follow/h;

    .line 62
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->Z()Lcom/instagram/android/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ey;->ab:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/instagram/android/fragment/ey;->d()V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ey;->ae:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ey;->ab:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 102
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
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
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    .line 159
    invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/instagram/user/follow/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->z()Landroid/support/v4/app/an;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/instagram/android/fragment/fa;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/fa;-><init>(Lcom/instagram/android/fragment/ey;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-virtual {v0, v1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V

    .line 178
    :cond_1
    return-void
.end method

.method protected final aa()V
    .locals 6

    .prologue
    .line 192
    new-instance v0, Lcom/instagram/android/c/a/q;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->z()Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/instagram/android/fragment/fb;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/fb;-><init>(Lcom/instagram/android/fragment/ey;)V

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/q;->g()V

    .line 225
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ey;->ae:Z

    return v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 107
    invoke-super {p0}, Lcom/instagram/base/a/c;->m_()V

    .line 108
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_1

    if-lez p3, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    .line 126
    :goto_0
    add-int v0, p2, p3

    if-ge v1, v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->Z()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 130
    instance-of v2, v0, Lcom/instagram/user/d/a;

    if-eqz v2, :cond_0

    .line 131
    check-cast v0, Lcom/instagram/user/d/a;

    .line 132
    iget-object v2, p0, Lcom/instagram/android/fragment/ey;->ad:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 127
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public final s_()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ey;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 189
    :cond_0
    return-void
.end method
