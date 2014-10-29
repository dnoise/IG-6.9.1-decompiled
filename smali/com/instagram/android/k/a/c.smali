.class final Lcom/instagram/android/k/a/c;
.super Ljava/lang/Object;
.source "UserListAdapter.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/user/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/k/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    invoke-static {v0}, Lcom/instagram/android/k/a/a;->b(Lcom/instagram/android/k/a/a;)Lcom/instagram/android/k/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/k/a/d;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    invoke-static {v0}, Lcom/instagram/android/k/a/a;->b(Lcom/instagram/android/k/a/a;)Lcom/instagram/android/k/a/d;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/k/a/d;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    return-void
.end method

.method private a(Lcom/instagram/user/c/d;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    invoke-static {v0}, Lcom/instagram/android/k/a/a;->a(Lcom/instagram/android/k/a/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    iget-object v0, v0, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    iget-object v2, p0, Lcom/instagram/android/k/a/c;->a:Lcom/instagram/android/k/a/a;

    iget-object v2, v2, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/a/a;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 273
    iget-object v3, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 274
    goto :goto_0

    .line 279
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 263
    check-cast p1, Lcom/instagram/user/c/d;

    invoke-direct {p0, p1}, Lcom/instagram/android/k/a/c;->a(Lcom/instagram/user/c/d;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/instagram/android/k/a/c;->a()V

    return-void
.end method
