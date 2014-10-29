.class final Lcom/instagram/android/creation/a/an;
.super Landroid/support/v4/app/ac;
.source "MetadataFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/ah;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/a/ah;Landroid/support/v4/app/s;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/instagram/android/creation/a/an;->a:Lcom/instagram/android/creation/a/ah;

    .line 362
    invoke-direct {p0, p2}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/s;)V

    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;

    .line 364
    iget-object v0, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;

    const-string v1, "pendingMediaKey"

    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pendingMediaKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v0, Landroid/location/Location;

    const-string v1, "photo"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 372
    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;

    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v0, Lcom/instagram/android/creation/a/t;

    invoke-direct {v0}, Lcom/instagram/android/creation/a/t;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/t;->g(Landroid/os/Bundle;)V

    .line 386
    :goto_0
    return-object v0

    .line 383
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    new-instance v0, Lcom/instagram/android/creation/a/d;

    invoke-direct {v0}, Lcom/instagram/android/creation/a/d;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/d;->g(Landroid/os/Bundle;)V

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x2

    return v0
.end method
