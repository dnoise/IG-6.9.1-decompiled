.class final Lcom/instagram/k/e;
.super Ljava/lang/Object;
.source "AppStartPerformanceTracer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/facebook/e/c/a;

.field final synthetic b:J

.field final synthetic c:Lcom/instagram/k/d;


# direct methods
.method constructor <init>(Lcom/instagram/k/d;Lcom/facebook/e/c/a;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/k/e;->c:Lcom/instagram/k/d;

    iput-object p2, p0, Lcom/instagram/k/e;->a:Lcom/facebook/e/c/a;

    iput-wide p3, p0, Lcom/instagram/k/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/k/e;->a:Lcom/facebook/e/c/a;

    invoke-virtual {v0}, Lcom/facebook/e/c/a;->a()J

    move-result-wide v1

    .line 82
    iget-object v0, p0, Lcom/instagram/k/e;->c:Lcom/instagram/k/d;

    iget-object v0, p0, Lcom/instagram/k/e;->c:Lcom/instagram/k/d;

    invoke-static {v0}, Lcom/instagram/k/d;->a(Lcom/instagram/k/d;)Lcom/instagram/k/f;

    move-result-object v0

    iget-wide v3, p0, Lcom/instagram/k/e;->b:J

    iget-object v5, p0, Lcom/instagram/k/e;->a:Lcom/facebook/e/c/a;

    invoke-virtual {v5}, Lcom/facebook/e/c/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/instagram/k/d;->a(Lcom/instagram/k/f;JJLjava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/instagram/k/e;->a:Lcom/facebook/e/c/a;

    iget-object v1, p0, Lcom/instagram/k/e;->c:Lcom/instagram/k/d;

    invoke-static {v1}, Lcom/instagram/k/d;->a(Lcom/instagram/k/d;)Lcom/instagram/k/f;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/k/f;->a(Lcom/instagram/k/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/e/c/a;->b(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/instagram/k/e;->c:Lcom/instagram/k/d;

    invoke-static {v0}, Lcom/instagram/k/d;->b(Lcom/instagram/k/d;)Lcom/instagram/k/f;

    .line 91
    const/4 v0, 0x0

    return v0
.end method
