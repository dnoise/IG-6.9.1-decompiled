.class final Lcom/instagram/common/a/a/e;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/l/a/e;

.field final synthetic b:Lcom/instagram/common/a/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/common/a/a/d;Lcom/instagram/common/l/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/instagram/common/a/a/e;->b:Lcom/instagram/common/a/a/d;

    iput-object p2, p0, Lcom/instagram/common/a/a/e;->a:Lcom/instagram/common/l/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/common/a/a/e;->b:Lcom/instagram/common/a/a/d;

    iget-object v0, v0, Lcom/instagram/common/a/a/d;->a:Lcom/instagram/common/a/a/a;

    iget-object v1, p0, Lcom/instagram/common/a/a/e;->a:Lcom/instagram/common/l/a/e;

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/a;->a(Lcom/instagram/common/l/a/e;)V

    .line 39
    return-void
.end method
