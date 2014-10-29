.class final Lcom/instagram/android/fragment/ez;
.super Landroid/content/BroadcastReceiver;
.source "SuggestedUserFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ey;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/fragment/ez;->a:Lcom/instagram/android/fragment/ey;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 50
    const-string v0, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/android/fragment/ez;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->Z()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    .line 53
    :cond_0
    return-void
.end method
