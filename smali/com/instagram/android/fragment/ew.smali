.class final Lcom/instagram/android/fragment/ew;
.super Landroid/content/BroadcastReceiver;
.source "SingleMediaFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ev;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ev;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/android/fragment/ew;->a:Lcom/instagram/android/fragment/ev;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/fragment/ew;->a:Lcom/instagram/android/fragment/ev;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ev;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/instagram/android/fragment/ew;->a:Lcom/instagram/android/fragment/ev;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ev;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    .line 59
    :cond_0
    return-void
.end method
