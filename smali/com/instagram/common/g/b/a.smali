.class public final Lcom/instagram/common/g/b/a;
.super Ljava/lang/Object;
.source "BitmapCacheExecutor.java"


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 24
    new-instance v0, Lcom/instagram/common/g/b/b;

    invoke-direct {v0}, Lcom/instagram/common/g/b/b;-><init>()V

    sput-object v0, Lcom/instagram/common/g/b/a;->b:Ljava/util/concurrent/ThreadFactory;

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/instagram/common/g/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    .line 38
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/instagram/common/g/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/instagram/common/g/b/a;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/instagram/common/g/b/a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
