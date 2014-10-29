.class final Lcom/instagram/j/c/b;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFollowRequestsFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/j/c/b;->a:Lcom/instagram/j/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/instagram/j/c/b;->a:Lcom/instagram/j/c/a;

    invoke-static {v0}, Lcom/instagram/j/c/a;->a(Lcom/instagram/j/c/a;)Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/a/c;->notifyDataSetChanged()V

    .line 51
    :cond_0
    return-void
.end method
