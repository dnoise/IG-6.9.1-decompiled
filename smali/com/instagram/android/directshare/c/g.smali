.class final Lcom/instagram/android/directshare/c/g;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/instagram/android/directshare/c/g;->a:Lcom/instagram/android/directshare/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/h/f;->e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 243
    :goto_0
    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/instagram/android/directshare/c/g;->a:Lcom/instagram/android/directshare/c/f;

    iget-object v0, v0, Lcom/instagram/android/directshare/c/f;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->k(Lcom/instagram/android/directshare/c/c;)V

    .line 246
    :cond_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
