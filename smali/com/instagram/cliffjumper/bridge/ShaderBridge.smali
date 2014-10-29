.class public Lcom/instagram/cliffjumper/bridge/ShaderBridge;
.super Ljava/lang/Object;
.source "ShaderBridge.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/bridge/ShaderBridge;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;

    sput-object v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a:Ljava/lang/Class;

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->compileProgram(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a()Z
    .locals 4

    .prologue
    .line 22
    const-class v1, Lcom/instagram/cliffjumper/bridge/ShaderBridge;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 24
    :try_start_1
    const-string v0, "scrambler"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 25
    const-string v0, "glcommon"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 26
    const-string v0, "jpegutils"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 27
    const-string v0, "cj"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_3
    sget-object v2, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a:Ljava/lang/Class;

    const-string v3, "Could not load native library"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native compileProgram(Ljava/lang/String;Z)I
.end method
