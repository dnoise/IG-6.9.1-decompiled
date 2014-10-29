.class public final Lcom/instagram/j/c/s;
.super Lcom/instagram/base/a/c;
.source "NewsfeedYouFragment.java"

# interfaces
.implements Lcom/instagram/j/c/n;


# instance fields
.field private aa:Lcom/instagram/j/a/a;

.field private ab:Landroid/content/IntentFilter;

.field private final ac:Landroid/content/BroadcastReceiver;

.field private final ad:Landroid/content/BroadcastReceiver;

.field private i:Lcom/instagram/j/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 33
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/c/s;->i:Lcom/instagram/j/e/a;

    .line 38
    new-instance v0, Lcom/instagram/j/c/t;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/t;-><init>(Lcom/instagram/j/c/s;)V

    iput-object v0, p0, Lcom/instagram/j/c/s;->ac:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Lcom/instagram/j/c/u;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/u;-><init>(Lcom/instagram/j/c/s;)V

    iput-object v0, p0, Lcom/instagram/j/c/s;->ad:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private X()Lcom/instagram/j/a/a;
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/j/c/s;->aa:Lcom/instagram/j/a/a;

    if-nez v0, :cond_0

    .line 124
    new-instance v1, Lcom/instagram/j/a/a;

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/a;

    invoke-direct {v1, v2, v3, v0}, Lcom/instagram/j/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/j/a/a/a;)V

    iput-object v1, p0, Lcom/instagram/j/c/s;->aa:Lcom/instagram/j/a/a;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/s;->aa:Lcom/instagram/j/a/a;

    return-object v0
.end method

.method private Y()V
    .locals 5

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/instagram/j/c/s;->X()Lcom/instagram/j/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/s;->i:Lcom/instagram/j/e/a;

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->h()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/j/c/s;->i:Lcom/instagram/j/e/a;

    invoke-virtual {v2}, Lcom/instagram/j/e/a;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/j/c/s;->i:Lcom/instagram/j/e/a;

    invoke-virtual {v3}, Lcom/instagram/j/e/a;->j()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/j/c/s;->i:Lcom/instagram/j/e/a;

    invoke-virtual {v4}, Lcom/instagram/j/e/a;->k()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/j/a/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 140
    return-void
.end method

.method private Z()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->v_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_failed:I

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 182
    :goto_0
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 187
    :cond_1
    return-void

    .line 172
    :cond_2
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->e()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_empty:I

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 176
    sget v0, Lcom/facebook/av;->newsfeed_empty_view_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->newsfeed_you_empty_view_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    sget v0, Lcom/facebook/av;->newsfeed_empty_view_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->newsfeed_you_empty_view_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/j/c/s;)Lcom/instagram/j/a/a;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/j/c/s;->X()Lcom/instagram/j/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/j/c/s;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/j/c/s;->Y()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/j/c/s;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/j/c/s;->Z()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 102
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/s;->ac:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/j/c/s;->ab:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 106
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 108
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/s;->ac:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 114
    return-void
.end method

.method public final H()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 119
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/s;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 120
    return-void
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->e()Z

    move-result v0

    return v0
.end method

.method public final W()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/base/a/f;->a(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 158
    :cond_0
    return-void
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

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/j/c/s;->ab:Landroid/content/IntentFilter;

    .line 69
    iget-object v0, p0, Lcom/instagram/j/c/s;->ab:Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/instagram/j/c/s;->X()Lcom/instagram/j/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/j/c/s;->a(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/instagram/j/c/s;->Y()V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/j/c/s;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 91
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/instagram/j/c/s;->Z()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 145
    invoke-virtual {p0}, Lcom/instagram/j/c/s;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    invoke-virtual {v0, p0}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/n;)V

    .line 146
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "newsfeed_you"

    return-object v0
.end method
