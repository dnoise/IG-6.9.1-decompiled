.class final Lcom/instagram/android/c/b/f;
.super Lcom/instagram/common/a/a/q;
.source "FacebookAccountsGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/android/c/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/c/b/e;


# direct methods
.method constructor <init>(Lcom/instagram/android/c/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/c/b/f;->a:Lcom/instagram/android/c/b/e;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/h;
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/instagram/android/c/b/i;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/h;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/instagram/android/c/b/h;->a()Ljava/util/List;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/share/b/h;

    .line 61
    invoke-virtual {v0}, Lcom/instagram/share/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/instagram/android/c/b/g;

    invoke-direct {v0, p0}, Lcom/instagram/android/c/b/g;-><init>(Lcom/instagram/android/c/b/f;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/instagram/android/c/b/f;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/h;

    move-result-object v0

    return-object v0
.end method
