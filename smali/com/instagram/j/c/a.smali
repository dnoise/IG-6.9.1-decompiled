.class public final Lcom/instagram/j/c/a;
.super Lcom/instagram/base/a/c;
.source "NewsfeedFollowRequestsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/user/e/a/a/e;


# instance fields
.field private aa:Lcom/instagram/common/a/a/g;

.field private ab:Lcom/instagram/user/follow/h;

.field private ac:Landroid/content/BroadcastReceiver;

.field private i:Lcom/instagram/j/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 45
    new-instance v0, Lcom/instagram/j/c/b;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/b;-><init>(Lcom/instagram/j/c/a;)V

    iput-object v0, p0, Lcom/instagram/j/c/a;->ac:Landroid/content/BroadcastReceiver;

    .line 170
    return-void
.end method

.method private V()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/a/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 154
    invoke-virtual {p0}, Lcom/instagram/j/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 156
    :cond_0
    return-void
.end method

.method private W()Lcom/instagram/j/a/c;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/j/c/a;->i:Lcom/instagram/j/a/c;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/instagram/j/a/c;

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/j/c/a;->ab:Lcom/instagram/user/follow/h;

    invoke-direct {v0, v1, v2, p0}, Lcom/instagram/j/a/c;-><init>(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/e/a/a/e;)V

    iput-object v0, p0, Lcom/instagram/j/c/a;->i:Lcom/instagram/j/a/c;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/a;->i:Lcom/instagram/j/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/j/c/a;)Lcom/instagram/j/a/c;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/j/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 137
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V

    .line 140
    sget v1, Lcom/instagram/user/c/h;->d:I

    if-eq p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne v1, v2, :cond_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/j/a/c;->a(Ljava/lang/Object;)V

    .line 147
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/instagram/j/c/a;->a(ILcom/instagram/user/c/a;)V

    .line 148
    invoke-direct {p0}, Lcom/instagram/j/c/a;->V()V

    .line 149
    return-void

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/a/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(ILcom/instagram/user/c/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Lcom/instagram/user/follow/k;

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/instagram/user/follow/k;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V

    invoke-virtual {v0}, Lcom/instagram/user/follow/k;->g()V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/instagram/j/c/a;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/j/c/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/instagram/user/follow/a;

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/instagram/j/c/c;

    invoke-direct {v4, p0}, Lcom/instagram/j/c/c;-><init>(Lcom/instagram/j/c/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-virtual {v0, p1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V

    .line 124
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/j/c/a;->aa:Lcom/instagram/common/a/a/g;

    new-instance v1, Lcom/instagram/user/e/a;

    invoke-direct {v1}, Lcom/instagram/user/e/a;-><init>()V

    new-instance v2, Lcom/instagram/j/c/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/j/c/d;-><init>(Lcom/instagram/j/c/a;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/user/e/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    .line 106
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 92
    invoke-virtual {p0}, Lcom/instagram/j/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/a;->ac:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 95
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 96
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    sget v0, Lcom/facebook/aw;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/j/c/a;->i:Lcom/instagram/j/a/c;

    invoke-virtual {v0, p1}, Lcom/instagram/j/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 76
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/j/c/a;->aa:Lcom/instagram/common/a/a/g;

    .line 58
    invoke-virtual {p0}, Lcom/instagram/j/c/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/a;->ac:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    sget-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_0
    iput-object v0, p0, Lcom/instagram/j/c/a;->ab:Lcom/instagram/user/follow/h;

    .line 62
    invoke-direct {p0}, Lcom/instagram/j/c/a;->W()Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/j/c/a;->a(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-direct {p0}, Lcom/instagram/j/c/a;->d()V

    .line 64
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    sget v0, Lcom/facebook/az;->follow_requests_title:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 101
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 102
    return-void
.end method

.method public final f(I)V
    .locals 1
    .parameter

    .prologue
    .line 85
    sget v0, Lcom/instagram/user/c/h;->d:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/j/c/a;->a(II)V

    .line 86
    return-void
.end method

.method public final g(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    sget v0, Lcom/instagram/user/c/h;->e:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/j/c/a;->a(II)V

    .line 81
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "follow_requests"

    return-object v0
.end method
