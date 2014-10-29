.class final Lcom/instagram/android/fragment/e;
.super Landroid/os/Handler;
.source "AbstractFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    .local p0, this:Lcom/instagram/android/fragment/e;,"Lcom/instagram/android/fragment/a.com/instagram/android/fragment/e;"
    iget-object v0, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    .line 185
    :cond_0
    return-void
.end method
