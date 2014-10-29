.class final Lcom/instagram/android/directshare/d/j;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/ac;

.field final synthetic b:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/android/feed/a/b/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/instagram/android/directshare/d/j;->b:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/j;->a:Lcom/instagram/android/feed/a/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/instagram/android/directshare/d/j;->b:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/instagram/android/directshare/d/j;->a:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->a()V

    .line 689
    :cond_0
    return-void
.end method
