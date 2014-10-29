.class public final Lcom/instagram/android/k/c/u;
.super Ljava/lang/Object;
.source "UserListPaginationHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private final a:Lcom/instagram/feed/b/a;

.field private final b:Lcom/instagram/android/k/c/a;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/k/c/u;->e:J

    .line 25
    new-instance v0, Lcom/instagram/feed/b/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V

    iput-object v0, p0, Lcom/instagram/android/k/c/u;->a:Lcom/instagram/feed/b/a;

    .line 26
    iput-object p1, p0, Lcom/instagram/android/k/c/u;->b:Lcom/instagram/android/k/c/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/k/c/u;->b:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/k/c/u;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/k/c/u;->o_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/k/c/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/instagram/android/k/c/u;->n_()V

    .line 39
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/instagram/android/k/c/u;->e:J

    .line 96
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/instagram/android/k/c/u;->d:Z

    .line 53
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    return v0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/instagram/android/k/c/u;->c:Z

    .line 87
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/instagram/android/k/c/u;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/k/c/u;->b:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/instagram/android/k/c/u;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/instagram/android/k/c/u;->e:J

    return-wide v0
.end method

.method public final n_()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/k/c/u;->b:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->d()V

    .line 44
    return-void
.end method

.method public final o_()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/instagram/android/k/c/u;->c:Z

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/android/k/c/u;->a:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 111
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/k/c/u;->a:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/b/a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 105
    return-void
.end method
