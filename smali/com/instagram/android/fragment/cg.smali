.class final Lcom/instagram/android/fragment/cg;
.super Landroid/content/BroadcastReceiver;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cf;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/instagram/android/fragment/cg;->a:Lcom/instagram/android/fragment/cf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/cg;->a:Lcom/instagram/android/fragment/cf;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cf;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/j;->notifyDataSetChanged()V

    .line 39
    return-void
.end method
