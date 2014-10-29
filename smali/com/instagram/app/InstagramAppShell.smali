.class public Lcom/instagram/app/InstagramAppShell;
.super Landroid/app/Application;
.source "InstagramAppShell.java"

# interfaces
.implements Lcom/instagram/common/b/a;


# instance fields
.field private a:Lcom/instagram/common/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/instagram/common/b/b;
    .locals 4
    .parameter

    .prologue
    .line 54
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 64
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/instagram/app/InstagramAppShell;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 73
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find current process\'s name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAppService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Service:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TService;>;)TService;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, serviceType:Ljava/lang/Class;,"Ljava/lang/Class<TService;>;"
    iget-object v0, p0, Lcom/instagram/app/InstagramAppShell;->a:Lcom/instagram/common/b/b;

    invoke-virtual {v0, p1}, Lcom/instagram/common/b/b;->getAppService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    invoke-static {p0}, Lcom/instagram/e/a;->a(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/instagram/app/InstagramAppShell;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/app/InstagramAppShell;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "com.instagram.android.app.InstagramApplicationForMainProcess"

    .line 46
    :goto_0
    invoke-direct {p0, v0}, Lcom/instagram/app/InstagramAppShell;->a(Ljava/lang/String;)Lcom/instagram/common/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/app/InstagramAppShell;->a:Lcom/instagram/common/b/b;

    .line 48
    iget-object v0, p0, Lcom/instagram/app/InstagramAppShell;->a:Lcom/instagram/common/b/b;

    invoke-virtual {v0}, Lcom/instagram/common/b/b;->onCreate()V

    .line 49
    return-void

    .line 40
    :cond_0
    const-string v0, "com.instagram.android.app.InstagramApplicationForSecondaryProcess"

    goto :goto_0
.end method
