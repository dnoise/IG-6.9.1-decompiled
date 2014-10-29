.class public final Lcom/instagram/android/fragment/ej;
.super Lcom/instagram/android/fragment/ea;
.source "SearchUsersFragment.java"


# instance fields
.field protected a:Lcom/instagram/android/k/a/a;

.field private b:Lcom/instagram/common/a/a/k;

.field private c:Lcom/instagram/android/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/j/e",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/ea;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ej;)Lcom/instagram/android/j/e;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/instagram/android/fragment/ea;->H()V

    .line 192
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->d()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    .line 197
    return-void
.end method

.method protected final V()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/facebook/az;->search_for_a_user:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ea;->a(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ej;->b:Lcom/instagram/common/a/a/k;

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/instagram/android/j/e;

    invoke-direct {v0}, Lcom/instagram/android/j/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/android/j/e;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/instagram/user/c/a;

    .line 99
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->c()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->f()Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    invoke-virtual {v7}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ad()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 115
    invoke-static {v7}, Lcom/instagram/android/j/f;->a(Lcom/instagram/user/c/a;)V

    .line 117
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->r()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v7}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 119
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 83
    invoke-static {p1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->b:Lcom/instagram/common/a/a/k;

    new-instance v1, Lcom/instagram/android/c/b/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->Y()Lcom/instagram/android/feed/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/feed/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ac()Z

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/instagram/android/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/instagram/android/fragment/ek;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/instagram/android/fragment/ek;-><init>(Lcom/instagram/android/fragment/ej;Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/c/b/b;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/instagram/android/fragment/ef;->b:I

    return v0
.end method

.method protected final c()Landroid/widget/BaseAdapter;
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/instagram/android/j/d;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->r()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/j/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/j/e;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/instagram/android/k/a/e;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/k/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->z()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/e;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/k/a/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->r()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/e;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/k/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/e;->a()Lcom/instagram/android/k/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    goto :goto_0
.end method

.method protected final d()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    invoke-virtual {v0, p1}, Lcom/instagram/android/j/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ab()V

    .line 127
    :cond_1
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "search_users"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/instagram/android/fragment/ea;->m_()V

    .line 202
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ej;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->c:Lcom/instagram/android/j/e;

    invoke-virtual {v0}, Lcom/instagram/android/j/e;->a()V

    .line 205
    :cond_0
    return-void
.end method
