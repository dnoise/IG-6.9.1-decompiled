.class public final Lcom/facebook/d/e/e;
.super Ljava/lang/Object;
.source "ObjectPoolManager.java"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/facebook/d/e/a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method final a(Ljava/lang/Class;Lcom/facebook/d/e/a;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/d/e/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/d/e/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
