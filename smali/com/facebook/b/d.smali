.class final Lcom/facebook/b/d;
.super Landroid/os/AsyncTask;
.source "Facebook.java"


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
.field final synthetic a:Lcom/facebook/b/b;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1112
    iput-object p2, p0, Lcom/facebook/b/d;->b:Ljava/lang/String;

    .line 1113
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/d;->c:Landroid/content/Context;

    .line 1114
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    iget-object v1, p0, Lcom/facebook/b/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/b/d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    monitor-enter v1

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->c(Lcom/facebook/b/b;)Lcom/facebook/b/d;

    .line 1131
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
    .line 1107
    invoke-direct {p0}, Lcom/facebook/b/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/facebook/b/d;->b()V

    return-void
.end method
