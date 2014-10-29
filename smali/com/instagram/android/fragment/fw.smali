.class final Lcom/instagram/android/fragment/fw;
.super Lcom/instagram/api/j/f;
.source "UserDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fo;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fw;-><init>(Lcom/instagram/android/fragment/fo;)V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    iput-object p1, v1, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    .line 297
    iget-object v1, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    sget v2, Lcom/instagram/api/j/k;->b:I

    invoke-static {v1, v2}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/android/fragment/fo;I)I

    .line 299
    iget-object v1, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v2}, Lcom/instagram/android/fragment/fo;->d(Lcom/instagram/android/fragment/fo;)V

    .line 301
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fo;->c(Z)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->as()V

    .line 307
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 282
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/android/fragment/fo;Z)Z

    .line 283
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/android/fragment/fo;I)I

    .line 313
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    iget-object v1, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v1}, Lcom/instagram/android/fragment/fo;->e(Lcom/instagram/android/fragment/fo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->h(I)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fw;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 288
    iget-object v0, p0, Lcom/instagram/android/fragment/fw;->a:Lcom/instagram/android/fragment/fo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/android/fragment/fo;Z)Z

    .line 289
    return-void
.end method
