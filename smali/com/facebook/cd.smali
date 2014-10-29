.class final Lcom/facebook/cd;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/os/Messenger;

.field b:Landroid/os/Messenger;

.field final synthetic c:Lcom/facebook/bo;


# direct methods
.method constructor <init>(Lcom/facebook/bo;)V
    .locals 3
    .parameter

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/ce;

    iget-object v2, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-direct {v1, v2, p0}, Lcom/facebook/ce;-><init>(Lcom/facebook/bo;Lcom/facebook/cd;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/cd;->a:Landroid/os/Messenger;

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/facebook/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/facebook/cd;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-static {v0}, Lcom/facebook/bo;->d(Lcom/facebook/bo;)Lcom/facebook/cd;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-static {v0}, Lcom/facebook/bo;->e(Lcom/facebook/bo;)Lcom/facebook/cd;

    .line 1320
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1324
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-virtual {v2}, Lcom/facebook/bo;->j()Lcom/facebook/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1328
    iget-object v0, p0, Lcom/facebook/cd;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-void

    .line 1333
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/cd;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1292
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ao;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/bo;->k()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/cd;

    iget-object v3, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    invoke-direct {v2, v3}, Lcom/facebook/cd;-><init>(Lcom/facebook/bo;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Ljava/util/Date;)V

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cd;->b()V

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    .line 1303
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;

    .line 1304
    invoke-direct {p0}, Lcom/facebook/cd;->c()V

    .line 1305
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/facebook/cd;->b()V

    .line 1313
    invoke-static {}, Lcom/facebook/bo;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1314
    return-void
.end method
