.class final Lcom/instagram/android/g/a/b;
.super Ljava/lang/Object;
.source "MediaIterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/instagram/android/g/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/g/a/a;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/instagram/android/g/a/b;->b:Lcom/instagram/android/g/a/a;

    iput-object p2, p0, Lcom/instagram/android/g/a/b;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/g/a/b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/g/a/b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/g/a/b;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "cannot modify via this iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
