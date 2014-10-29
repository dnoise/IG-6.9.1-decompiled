.class final Lcom/instagram/android/fragment/f;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/instagram/android/feed/a/a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 221
    :cond_0
    return-void
.end method
