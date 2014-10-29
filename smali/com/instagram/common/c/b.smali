.class final Lcom/instagram/common/c/b;
.super Lcom/instagram/common/c/h;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/c/h",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/common/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/instagram/common/c/b;->a:Lcom/instagram/common/c/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/common/c/h;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/common/c/b;->a:Lcom/instagram/common/c/a;

    invoke-static {v0}, Lcom/instagram/common/c/a;->a(Lcom/instagram/common/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    iget-object v0, p0, Lcom/instagram/common/c/b;->a:Lcom/instagram/common/c/a;

    iget-object v1, p0, Lcom/instagram/common/c/b;->a:Lcom/instagram/common/c/a;

    iget-object v2, p0, Lcom/instagram/common/c/b;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/instagram/common/c/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/c/a;->a(Lcom/instagram/common/c/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
