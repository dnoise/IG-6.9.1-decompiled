.class public final Lcom/instagram/common/x/a;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/instagram/common/x/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/common/x/a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/instagram/common/x/b;->a:Lcom/instagram/common/x/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/instagram/common/x/a;->c()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/instagram/common/x/a;->a(ZLjava/lang/String;)V

    .line 24
    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "This operation must be run on UI thread."

    invoke-static {v0}, Lcom/instagram/common/x/a;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method