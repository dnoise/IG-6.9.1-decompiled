.class final Lcom/instagram/common/a/a/d;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/a/a/a;

.field final synthetic b:Lcom/instagram/common/a/a/c;


# direct methods
.method constructor <init>(Lcom/instagram/common/a/a/c;Lcom/instagram/common/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/common/a/a/d;->b:Lcom/instagram/common/a/a/c;

    iput-object p2, p0, Lcom/instagram/common/a/a/d;->a:Lcom/instagram/common/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/common/a/a/d;->a:Lcom/instagram/common/a/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->g()Lcom/instagram/common/l/a/e;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/instagram/common/a/a/d;->b:Lcom/instagram/common/a/a/c;

    invoke-static {v1}, Lcom/instagram/common/a/a/c;->a(Lcom/instagram/common/a/a/c;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/a/a/e;

    invoke-direct {v2, p0, v0}, Lcom/instagram/common/a/a/e;-><init>(Lcom/instagram/common/a/a/d;Lcom/instagram/common/l/a/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
