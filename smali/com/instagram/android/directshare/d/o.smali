.class final Lcom/instagram/android/directshare/d/o;
.super Landroid/content/BroadcastReceiver;
.source "DirectSharePermalinkFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Z)Z

    .line 164
    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->d(Lcom/instagram/android/directshare/d/c;)V

    .line 166
    :cond_0
    return-void
.end method
