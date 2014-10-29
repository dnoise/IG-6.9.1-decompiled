.class final Lcom/instagram/android/k/c/r;
.super Lcom/instagram/android/k/c/t;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/k/c/t",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/instagram/android/k/c/r;->a:Lcom/instagram/android/k/c/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/k/c/t;-><init>(Lcom/instagram/android/k/c/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/k/c/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/instagram/android/k/c/r;-><init>(Lcom/instagram/android/k/c/a;)V

    return-void
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 425
    invoke-static {}, Lcom/instagram/user/follow/n;->a()Lcom/instagram/user/follow/n;

    invoke-static {v0}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/c/r;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->h(Lcom/instagram/android/k/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/instagram/android/k/c/r;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->e(Lcom/instagram/android/k/c/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/k/c/s;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/s;-><init>(Lcom/instagram/android/k/c/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    :cond_1
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {p0, p1}, Lcom/instagram/android/k/c/r;->a(Ljava/lang/Iterable;)V

    return-void
.end method
