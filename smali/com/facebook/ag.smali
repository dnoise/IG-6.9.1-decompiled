.class final Lcom/facebook/ag;
.super Ljava/lang/Object;
.source "GetTokenClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Landroid/os/Handler;

.field d:Lcom/facebook/ai;

.field e:Z

.field f:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ag;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/facebook/ag;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/facebook/ah;

    invoke-direct {v0, p0}, Lcom/facebook/ah;-><init>(Lcom/facebook/ag;)V

    iput-object v0, p0, Lcom/facebook/ag;->c:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/facebook/ag;->e:Z

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ag;->e:Z

    .line 119
    iget-object v0, p0, Lcom/facebook/ag;->d:Lcom/facebook/ai;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/facebook/ai;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ag;->a(Landroid/os/Bundle;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/facebook/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ag;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ag;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/ag;->a(Landroid/os/Message;)V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/high16 v1, 0x1

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 89
    const v2, 0x133060d

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 90
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/ag;->c:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ag;->f:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/facebook/ag;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/facebook/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/ag;->d:Lcom/facebook/ai;

    .line 50
    return-void
.end method

.method final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lcom/facebook/ag;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/facebook/ao;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ag;->a(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/ag;->e:Z

    .line 62
    iget-object v2, p0, Lcom/facebook/ag;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ag;->e:Z

    .line 69
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    .line 73
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/ag;->f:Landroid/os/Messenger;

    .line 74
    invoke-direct {p0}, Lcom/facebook/ag;->c()V

    .line 75
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/facebook/ag;->f:Landroid/os/Messenger;

    .line 80
    iget-object v0, p0, Lcom/facebook/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    invoke-direct {p0, v1}, Lcom/facebook/ag;->a(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
