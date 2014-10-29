.class final Lcom/instagram/android/directshare/c/o;
.super Ljava/lang/Object;
.source "InboxPaginationHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private a:Lcom/instagram/android/directshare/c/c;

.field private b:Lcom/instagram/feed/b/a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/c;

    .line 22
    new-instance v0, Lcom/instagram/feed/b/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/o;->b:Lcom/instagram/feed/b/a;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/o;->o_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/o;->n_()V

    .line 34
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/instagram/android/directshare/c/o;->c:Z

    .line 103
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->c()Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->isEmpty()Z

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
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final n_()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/c;

    sget v1, Lcom/instagram/android/directshare/c/b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/directshare/c/c;->a(IZ)V

    .line 58
    return-void
.end method

.method public final o_()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/o;->c:Z

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->b:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 50
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->b:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/b/a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 44
    return-void
.end method
