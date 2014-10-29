.class public final Lcom/instagram/common/u/b/f;
.super Ljava/lang/Object;
.source "PushConstantsFactory.java"


# static fields
.field private static a:Lcom/instagram/common/u/b/e;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/common/u/b/e;
    .locals 2
    .parameter

    .prologue
    .line 13
    const-class v1, Lcom/instagram/common/u/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/common/u/b/f;->a:Lcom/instagram/common/u/b/e;

    if-nez v0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/instagram/common/u/b/f;->b(Landroid/content/Context;)Lcom/instagram/common/u/b/e;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/u/b/f;->a:Lcom/instagram/common/u/b/e;

    .line 16
    :cond_0
    sget-object v0, Lcom/instagram/common/u/b/f;->a:Lcom/instagram/common/u/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/instagram/common/u/b/e;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string v0, "com.nokia.pushnotifications.service"

    invoke-static {p0, v0}, Lcom/instagram/common/u/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/instagram/common/u/b/d;->a()Lcom/instagram/common/u/b/e;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/instagram/common/u/b/b;->a()Lcom/instagram/common/u/b/e;

    move-result-object v0

    goto :goto_0
.end method
