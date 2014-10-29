.class public final Lcom/instagram/j/c/e;
.super Lcom/instagram/base/a/c;
.source "NewsfeedFollowingFragment.java"

# interfaces
.implements Lcom/instagram/j/c/n;


# instance fields
.field private aa:Lcom/instagram/j/a/a;

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private i:Lcom/instagram/common/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 103
    return-void
.end method

.method private X()Lcom/instagram/j/a/a;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/j/c/e;->aa:Lcom/instagram/j/a/a;

    if-nez v0, :cond_0

    .line 58
    new-instance v1, Lcom/instagram/j/a/a;

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/a;

    invoke-direct {v1, v2, v3, v0}, Lcom/instagram/j/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/j/a/a/a;)V

    iput-object v1, p0, Lcom/instagram/j/c/e;->aa:Lcom/instagram/j/a/a;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/e;->aa:Lcom/instagram/j/a/a;

    return-object v0
.end method

.method private Y()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/j/c/e;->i:Lcom/instagram/common/a/a/k;

    new-instance v1, Lcom/instagram/j/b/a/a;

    invoke-direct {v1}, Lcom/instagram/j/b/a/a;-><init>()V

    new-instance v2, Lcom/instagram/j/c/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/j/c/f;-><init>(Lcom/instagram/j/c/e;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/j/b/a/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 69
    return-void
.end method

.method private Z()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->v_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/j/c/e;->ab:Z

    if-nez v0, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/instagram/j/c/e;->ad:Z

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_empty:I

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    sget v0, Lcom/facebook/av;->newsfeed_empty_view_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->newsfeed_following_empty_view_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    sget v0, Lcom/facebook/av;->newsfeed_empty_view_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->newsfeed_following_empty_view_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 96
    :cond_1
    return-void

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_failed:I

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/j/c/e;)Lcom/instagram/j/a/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/j/c/e;->X()Lcom/instagram/j/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/j/c/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/instagram/j/c/e;->ad:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/j/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/j/c/e;->Z()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/j/c/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/instagram/j/c/e;->ab:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/j/c/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/instagram/j/c/e;->ac:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/j/c/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/j/c/e;->ac:Z

    return v0
.end method


# virtual methods
.method public final V()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/instagram/j/c/e;->ab:Z

    return v0
.end method

.method public final W()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/instagram/j/c/e;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/base/a/f;->a(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/j/c/e;->i:Lcom/instagram/common/a/a/k;

    .line 39
    invoke-direct {p0}, Lcom/instagram/j/c/e;->X()Lcom/instagram/j/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/j/c/e;->a(Landroid/widget/ListAdapter;)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/j/c/e;->Y()V

    .line 41
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/instagram/j/c/e;->Z()V

    .line 53
    iget-boolean v0, p0, Lcom/instagram/j/c/e;->ab:Z

    invoke-virtual {p0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 54
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/instagram/j/c/e;->Y()V

    .line 154
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "newsfeed_following"

    return-object v0
.end method
