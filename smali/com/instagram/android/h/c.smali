.class final Lcom/instagram/android/h/c;
.super Ljava/lang/Object;
.source "RealtimeConnectionDebugNotification.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/h/a;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/android/h/c;->a:Lcom/instagram/android/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/h/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/instagram/android/h/c;-><init>(Lcom/instagram/android/h/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    const-string v0, "PreferenceChangeBroadcasts.REALTIME_CONNECTION_NOTIFICATION_PREF_VALUE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/android/h/c;->a:Lcom/instagram/android/h/a;

    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/h/f;->e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/h/a;->a(Lcom/instagram/android/h/a;Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/h/c;->a:Lcom/instagram/android/h/a;

    invoke-static {v0}, Lcom/instagram/android/h/a;->a(Lcom/instagram/android/h/a;)Landroid/support/v4/app/bx;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/h/a;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
