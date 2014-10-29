.class public abstract Lcom/facebook/d/b/a;
.super Ljava/lang/Object;
.source "AbstractFbErrorReporter.java"

# interfaces
.implements Lcom/facebook/d/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-static {p1, p2}, Lcom/facebook/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/f;)V

    .line 13
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/facebook/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/d/b/g;->a(Ljava/lang/Throwable;)Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/b/g;->h()Lcom/facebook/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/f;)V

    .line 18
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/facebook/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/b/g;->e()Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/b/g;->h()Lcom/facebook/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/f;)V

    .line 28
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/facebook/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/b/g;->e()Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/d/b/g;->a(Ljava/lang/Throwable;)Lcom/facebook/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d/b/g;->h()Lcom/facebook/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/f;)V

    .line 37
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/d/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
