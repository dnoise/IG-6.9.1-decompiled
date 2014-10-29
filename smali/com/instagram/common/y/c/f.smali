.class final Lcom/instagram/common/y/c/f;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/y/c/d;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private volatile d:J

.field private volatile e:J


# direct methods
.method constructor <init>(Lcom/instagram/common/y/c/d;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 133
    iput-object p1, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/instagram/common/y/c/f;->b:Ljava/lang/Runnable;

    .line 135
    invoke-static {p1}, Lcom/instagram/common/y/c/d;->a(Lcom/instagram/common/y/c/d;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/y/c/f;->c:J

    .line 136
    iput-wide v2, p0, Lcom/instagram/common/y/c/f;->d:J

    .line 137
    iput-wide v2, p0, Lcom/instagram/common/y/c/f;->e:J

    .line 138
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 142
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->a(Lcom/instagram/common/y/c/d;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/y/c/f;->d:J

    .line 144
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->b(Lcom/instagram/common/y/c/d;)I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-wide v0, p0, Lcom/instagram/common/y/c/f;->d:J

    iget-wide v2, p0, Lcom/instagram/common/y/c/f;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->b(Lcom/instagram/common/y/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->d(Lcom/instagram/common/y/c/d;)Lcom/facebook/d/b/b;

    move-result-object v0

    const-string v1, "dispatch time exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->c(Lcom/instagram/common/y/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->a(Lcom/instagram/common/y/c/d;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->b()J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/instagram/common/y/c/f;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 153
    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->a(Lcom/instagram/common/y/c/d;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->b()J

    move-result-wide v2

    .line 154
    iget-object v4, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v4}, Lcom/instagram/common/y/c/d;->a(Lcom/instagram/common/y/c/d;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v4

    .line 156
    iget-object v6, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v6}, Lcom/instagram/common/y/c/d;->e(Lcom/instagram/common/y/c/d;)I

    move-result v6

    if-eq v6, v7, :cond_1

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->e(Lcom/instagram/common/y/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->d(Lcom/instagram/common/y/c/d;)Lcom/facebook/d/b/b;

    move-result-object v0

    const-string v1, "compute time exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->c(Lcom/instagram/common/y/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->f(Lcom/instagram/common/y/c/d;)I

    move-result v0

    if-eq v0, v7, :cond_2

    iget-wide v0, p0, Lcom/instagram/common/y/c/f;->d:J

    sub-long v0, v4, v0

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->f(Lcom/instagram/common/y/c/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->d(Lcom/instagram/common/y/c/d;)Lcom/facebook/d/b/b;

    move-result-object v0

    const-string v1, "wall clock runtime exceeded limit"

    iget-object v2, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v2}, Lcom/instagram/common/y/c/d;->c(Lcom/instagram/common/y/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/instagram/common/y/c/f;->a:Lcom/instagram/common/y/c/d;

    invoke-static {v0}, Lcom/instagram/common/y/c/d;->g(Lcom/instagram/common/y/c/d;)V

    .line 166
    return-void
.end method
