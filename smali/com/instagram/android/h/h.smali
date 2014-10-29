.class final Lcom/instagram/android/h/h;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/f;


# direct methods
.method private constructor <init>(Lcom/instagram/android/h/f;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/h/h;->a:Lcom/instagram/android/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/h/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/h/h;-><init>(Lcom/instagram/android/h/f;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    const-string v0, "loggedin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/instagram/android/h/h;->a:Lcom/instagram/android/h/f;

    invoke-static {v0}, Lcom/instagram/android/h/f;->a(Lcom/instagram/android/h/f;)Lcom/instagram/realtimeclient/RealtimeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V

    .line 38
    iget-object v0, p0, Lcom/instagram/android/h/h;->a:Lcom/instagram/android/h/f;

    invoke-static {v0}, Lcom/instagram/android/h/f;->a(Lcom/instagram/android/h/f;)Lcom/instagram/realtimeclient/RealtimeClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeClient;->setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    .line 39
    iget-object v0, p0, Lcom/instagram/android/h/h;->a:Lcom/instagram/android/h/f;

    invoke-static {v0}, Lcom/instagram/android/h/f;->b(Lcom/instagram/android/h/f;)Lcom/instagram/realtimeclient/RealtimeOperationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->clearOperations()V

    .line 41
    :cond_0
    return-void
.end method
