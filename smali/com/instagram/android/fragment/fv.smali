.class final Lcom/instagram/android/fragment/fv;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/android/fragment/fv;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fo;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fv;-><init>(Lcom/instagram/android/fragment/fo;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/instagram/android/fragment/fv;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/android/fragment/fo;)Z

    .line 98
    :cond_0
    return-void
.end method
