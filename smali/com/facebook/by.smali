.class final Lcom/facebook/by;
.super Landroid/os/AsyncTask;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/bo;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/facebook/by;->a:Lcom/facebook/bo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1491
    iput-object p2, p0, Lcom/facebook/by;->b:Ljava/lang/String;

    .line 1492
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->c:Landroid/content/Context;

    .line 1493
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1498
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/by;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/cj;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/facebook/by;->a:Lcom/facebook/bo;

    monitor-enter v1

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->a:Lcom/facebook/bo;

    invoke-static {v0}, Lcom/facebook/bo;->f(Lcom/facebook/bo;)Lcom/facebook/by;

    .line 1510
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/facebook/by;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/facebook/by;->b()V

    return-void
.end method
