.class final Lcom/instagram/android/fragment/t;
.super Lcom/instagram/common/a/a/j;
.source "ChangePasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/api/k/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->e(Lcom/instagram/android/fragment/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/u;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/u;-><init>(Lcom/instagram/android/fragment/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 233
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->a(Lcom/instagram/android/fragment/o;Z)Z

    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 235
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->b(Lcom/instagram/android/fragment/o;Z)V

    .line 236
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 241
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->a(Lcom/instagram/android/fragment/o;Z)Z

    .line 242
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    check-cast p1, Lcom/instagram/api/k/a/d;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/t;->a(Lcom/instagram/api/k/a/d;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 261
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/o;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    sget v1, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/o;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->j()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_1
    iget-object v2, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 281
    iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->b(Lcom/instagram/android/fragment/o;Z)V

    .line 282
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
