.class final Lcom/facebook/b/g;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/os/Messenger;

.field final b:Lcom/facebook/b/f;

.field final c:Landroid/content/Context;

.field d:Landroid/os/Messenger;

.field final synthetic e:Lcom/facebook/b/b;


# direct methods
.method public constructor <init>(Lcom/facebook/b/b;Landroid/content/Context;Lcom/facebook/b/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/facebook/b/g;->e:Lcom/facebook/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/b/h;

    invoke-direct {v1, p0}, Lcom/facebook/b/h;-><init>(Lcom/facebook/b/g;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/b/g;->a:Landroid/os/Messenger;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/g;->d:Landroid/os/Messenger;

    .line 652
    iput-object p2, p0, Lcom/facebook/b/g;->c:Landroid/content/Context;

    .line 653
    iput-object p3, p0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;

    .line 654
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/b/g;->e:Lcom/facebook/b/b;

    invoke-static {v2}, Lcom/facebook/b/b;->b(Lcom/facebook/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 675
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 676
    iget-object v0, p0, Lcom/facebook/b/g;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/g;->d:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Service connection error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    .line 658
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/b/g;->d:Landroid/os/Messenger;

    .line 659
    invoke-direct {p0}, Lcom/facebook/b/g;->a()V

    .line 660
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/facebook/b/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 668
    return-void
.end method
