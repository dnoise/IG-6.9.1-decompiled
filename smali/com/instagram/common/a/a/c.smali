.class public Lcom/instagram/common/a/a/c;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"

# interfaces
.implements Lcom/instagram/common/a/a/k;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/instagram/common/a/a/c;->a:Ljava/util/concurrent/Executor;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/common/a/a/c;->b:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/a/a/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/common/a/a/c;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/instagram/common/a/a/a;->i()V

    .line 29
    iget-object v0, p0, Lcom/instagram/common/a/a/c;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instagram/common/a/a/d;

    invoke-direct {v1, p0, p1}, Lcom/instagram/common/a/a/d;-><init>(Lcom/instagram/common/a/a/c;Lcom/instagram/common/a/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
