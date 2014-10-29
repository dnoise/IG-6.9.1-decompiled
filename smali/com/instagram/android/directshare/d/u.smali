.class final Lcom/instagram/android/directshare/d/u;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/t;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/h/f;->e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 205
    :goto_0
    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/t;

    iget-object v0, v0, Lcom/instagram/android/directshare/d/t;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->e(Lcom/instagram/android/directshare/d/c;)V

    .line 208
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
