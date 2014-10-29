.class final Lcom/instagram/base/a/h;
.super Ljava/lang/Object;
.source "ScrollToTopHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/base/a/g;


# direct methods
.method constructor <init>(Lcom/instagram/base/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/base/a/h;->a:Lcom/instagram/base/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/instagram/base/a/h;->a:Lcom/instagram/base/a/g;

    iget-object v0, v0, Lcom/instagram/base/a/g;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/base/a/h;->a:Lcom/instagram/base/a/g;

    iget-object v0, v0, Lcom/instagram/base/a/g;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/instagram/base/a/h;->a:Lcom/instagram/base/a/g;

    iget-object v0, v0, Lcom/instagram/base/a/g;->c:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v1, p0, Lcom/instagram/base/a/h;->a:Lcom/instagram/base/a/g;

    iget-object v1, v1, Lcom/instagram/base/a/g;->b:Landroid/widget/ListView;

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 40
    :cond_0
    return-void
.end method
