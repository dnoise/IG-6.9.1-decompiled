.class final Lcom/instagram/android/feed/e/b;
.super Landroid/os/Handler;
.source "DelayedMediaPlacer.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/e/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pending_media_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;

    invoke-static {v1}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/android/feed/e/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 44
    iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;

    invoke-static {v1, v0}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/android/feed/e/a;Lcom/instagram/creation/b/a/b;)V

    .line 46
    iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;

    invoke-static {v1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;

    invoke-static {v1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/android/feed/e/d;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
