.class final Lcom/facebook/a/m;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# instance fields
.field final synthetic a:Lcom/facebook/a/i;

.field private b:Ljava/lang/Throwable;

.field private c:Lcom/facebook/a/d;

.field private final d:[Lcom/facebook/a/l;


# direct methods
.method public constructor <init>(Lcom/facebook/a/i;Lcom/facebook/a/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/a/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V

    .line 231
    iput-object p2, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    .line 232
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;

    .line 239
    iput-object p2, p0, Lcom/facebook/a/m;->d:[Lcom/facebook/a/l;

    .line 240
    return-void
.end method

.method private b()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/facebook/a/c/g;

    iget-object v1, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v1}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Lcom/facebook/a/c/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v0}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    const/4 v1, 0x1

    const-string v2, "ACRA wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 281
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/a/m;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 247
    iget-object v0, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    iget-object v2, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/a/i;->a(Landroid/content/Context;Lcom/facebook/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 250
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    iget-object v2, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/a/m;->d:[Lcom/facebook/a/l;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/a/i;->a(Landroid/content/Context;[Lcom/facebook/a/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 255
    :try_start_2
    iput-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 257
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v0
.end method
