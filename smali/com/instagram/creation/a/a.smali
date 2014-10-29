.class public final Lcom/instagram/creation/a/a;
.super Ljava/lang/Object;
.source "CreationConstants.java"


# static fields
.field private static a:Ljava/lang/Integer;


# direct methods
.method public static declared-synchronized a()I
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/instagram/creation/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/instagram/m/c;->k:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 17
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 19
    :catch_0
    move-exception v0

    const/16 v0, 0x280

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/instagram/creation/a/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
