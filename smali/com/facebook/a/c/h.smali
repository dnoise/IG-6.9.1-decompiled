.class public Lcom/facebook/a/c/h;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/a/c/h;

    sput-object v0, Lcom/facebook/a/c/h;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static a()I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/proc/%s/fd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/proc/self/fd"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "/proc/%s/fd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 45
    :goto_0
    if-ge v0, v7, :cond_1

    .line 46
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    return v0

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 54
    sget-object v1, Lcom/facebook/a/c/h;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, -0x2

    goto :goto_1
.end method

.method public static b()Lcom/facebook/a/c/i;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 65
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/self/limits"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :try_start_1
    const-string v1, "Max open files"

    const/16 v3, 0x1388

    invoke-virtual {v2, v1, v3}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    :try_start_2
    new-instance v1, Lcom/facebook/a/c/i;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    move-object v0, v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v0

    .line 78
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 76
    :catch_2
    move-exception v1

    goto :goto_2

    .line 74
    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
