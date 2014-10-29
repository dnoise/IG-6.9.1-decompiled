.class final Lcom/instagram/android/maps/aa;
.super Lcom/instagram/api/j/f;
.source "PhotoMapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/g/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V

    .line 380
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 381
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 406
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z

    .line 407
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 408
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 409
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i(Lcom/instagram/android/maps/PhotoMapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ab;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ab;-><init>(Lcom/instagram/android/maps/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    :goto_0
    invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V

    .line 402
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v1, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v2, Lcom/facebook/az;->could_not_load_photo_map_information:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/aa;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z

    .line 414
    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 415
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 416
    return-void
.end method
