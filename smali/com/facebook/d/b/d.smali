.class final Lcom/facebook/d/b/d;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/facebook/d/b/c;


# direct methods
.method constructor <init>(Lcom/facebook/d/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/d/b/d;->d:Lcom/facebook/d/b/c;

    iput-object p2, p0, Lcom/facebook/d/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/d/b/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/d/b/d;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v0, "soft_error_category"

    iget-object v2, p0, Lcom/facebook/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "soft_error_message"

    iget-object v2, p0, Lcom/facebook/d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/facebook/d/b/d;->d:Lcom/facebook/d/b/c;

    invoke-static {v0}, Lcom/facebook/d/b/c;->a(Lcom/facebook/d/b/c;)La/a/a;

    move-result-object v0

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/i;

    .line 134
    iget-object v2, p0, Lcom/facebook/d/b/d;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/facebook/d/b/d;->d:Lcom/facebook/d/b/c;

    invoke-static {v1}, Lcom/facebook/d/b/c;->b(Lcom/facebook/d/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 142
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 144
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 145
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
