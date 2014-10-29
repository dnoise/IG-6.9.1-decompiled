.class public final Lcom/instagram/android/fragment/ar;
.super Lcom/instagram/android/fragment/a;
.source "ExplorePhotosFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/fj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/feed/a/a;",
        "Lcom/instagram/feed/a/i;",
        ">;",
        "Lcom/instagram/android/fragment/fj;"
    }
.end annotation


# instance fields
.field private ae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/fragment/au;",
            ">;"
        }
    .end annotation
.end field

.field private af:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ar;->ae:Ljava/util/Map;

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ar;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/fragment/ar;->ae:Ljava/util/Map;

    return-object v0
.end method

.method private ar()I
    .locals 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-gt v1, v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->v_()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 188
    add-int/lit8 v0, v0, 0x3

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    return v0
.end method


# virtual methods
.method public final G()V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/instagram/android/fragment/a;->G()V

    .line 123
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/av;

    iget-object v2, p0, Lcom/instagram/android/fragment/ar;->ae:Ljava/util/Map;

    invoke-direct {p0}, Lcom/instagram/android/fragment/ar;->ar()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/instagram/android/fragment/av;-><init>(Lcom/instagram/android/fragment/ar;Ljava/util/Map;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ar;->ae:Ljava/util/Map;

    .line 125
    return-void
.end method

.method protected final X()Lcom/instagram/android/feed/a/a;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/instagram/android/feed/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method protected final Y()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method protected final Z()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fj;)V

    .line 92
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ar;->c(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->e()Lcom/instagram/android/feed/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/at;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/fragment/at;-><init>(Lcom/instagram/android/fragment/ar;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/d;)V

    .line 70
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Landroid/support/v4/app/ak;)V

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected final a(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/ai;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    const-string v0, "explore_item_clicked"

    invoke-direct {p0}, Lcom/instagram/android/fragment/ar;->ar()I

    move-result v1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/instagram/android/feed/e/f;->a(Lcom/instagram/common/analytics/g;Ljava/lang/String;Lcom/instagram/feed/d/ai;II)V

    .line 168
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/feed/d/ai;I)V

    .line 169
    return-void
.end method

.method public final a(Ljava/util/Map;)V
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
    .line 151
    const-string v0, "src"

    const-string v1, "explore"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method protected final aa()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fj;)V

    .line 98
    return-void
.end method

.method protected final ab()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public final ah()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected final am()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    return-object v0
.end method

.method public final an()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public final ao()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 2
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/instagram/android/fragment/as;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/as;-><init>(Lcom/instagram/android/fragment/ar;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/android/fragment/ar;->ac:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->d()Z

    move-result v0

    return v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "explore_popular"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ar;->af:I

    .line 46
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 48
    invoke-super {p0}, Lcom/instagram/android/fragment/a;->k_()V

    .line 49
    return-void
.end method

.method public final l_()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ar;->af:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 54
    invoke-super {p0}, Lcom/instagram/android/fragment/a;->l_()V

    .line 55
    return-void
.end method

.method public final t_()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->o_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "action_bar_feed_retry"

    invoke-direct {v0, v1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 199
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ar;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 201
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ar;->c(Z)V

    .line 202
    return-void
.end method

.method public final u_()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
