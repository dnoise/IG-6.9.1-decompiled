.class final Lcom/instagram/common/g/b/g;
.super Ljava/lang/Object;
.source "IgByteArrayPool.java"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/instagram/common/g/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    const/high16 v0, 0x1

    iput v0, p0, Lcom/instagram/common/g/b/g;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/g/b/f;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/common/g/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/f;

    .line 23
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/instagram/common/g/b/f;

    iget v1, p0, Lcom/instagram/common/g/b/g;->b:I

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/g/b/f;-><init>(Lcom/instagram/common/g/b/g;I)V

    .line 26
    :cond_0
    return-object v0
.end method

.method final a(Lcom/instagram/common/g/b/f;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/common/g/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
