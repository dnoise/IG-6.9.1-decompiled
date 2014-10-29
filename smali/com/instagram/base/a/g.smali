.class final Lcom/instagram/base/a/g;
.super Ljava/lang/Object;
.source "ScrollToTopHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/base/a/g;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/instagram/base/a/g;->b:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/instagram/base/a/g;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/instagram/base/a/g;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/instagram/base/a/g;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 31
    iget-object v0, p0, Lcom/instagram/base/a/g;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 32
    iget-object v0, p0, Lcom/instagram/base/a/g;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/base/a/h;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/h;-><init>(Lcom/instagram/base/a/g;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_0
    return-void
.end method
