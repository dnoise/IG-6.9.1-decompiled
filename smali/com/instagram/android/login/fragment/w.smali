.class final Lcom/instagram/android/login/fragment/w;
.super Landroid/content/BroadcastReceiver;
.source "PasswordResetFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/v;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/login/fragment/w;->a:Lcom/instagram/android/login/fragment/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityInTab.BROADCAST_BACK_PRESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/instagram/android/login/fragment/w;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()Z

    .line 71
    :cond_0
    return-void
.end method
