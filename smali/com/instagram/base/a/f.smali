.class public final Lcom/instagram/base/a/f;
.super Ljava/lang/Object;
.source "ScrollToTopHelper.java"


# direct methods
.method public static a(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 25
    new-instance v0, Lcom/instagram/base/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/base/a/g;-><init>(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method
