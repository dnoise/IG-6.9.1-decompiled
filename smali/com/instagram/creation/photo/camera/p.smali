.class final Lcom/instagram/creation/photo/camera/p;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1381
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/p;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    return-void
.end method

.method private static a(Landroid/hardware/Camera;)I
    .locals 2
    .parameter

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1439
    return v0
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->t(Lcom/instagram/creation/photo/camera/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1391
    :cond_0
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "on_picture_taken"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1394
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;

    move-result-object v0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p2}, Lcom/instagram/creation/photo/camera/p;->a(Landroid/hardware/Camera;)I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/instagram/creation/photo/camera/o;->a([BIII)Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->h(Lcom/instagram/creation/photo/camera/c;)V

    .line 1402
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/o;->a()V

    .line 1404
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->w(Lcom/instagram/creation/photo/camera/c;)V

    .line 1434
    :goto_1
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "on_picture_taken"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1407
    :cond_1
    const/4 v0, 0x0

    .line 1408
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "rotation"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1410
    :try_start_0
    invoke-static {p2}, Lcom/instagram/creation/photo/camera/p;->a(Landroid/hardware/Camera;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1415
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1416
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v4}, Lcom/instagram/creation/photo/camera/c;->j(Lcom/instagram/creation/photo/camera/c;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instagram/camera/e;->c(I)Z

    move-result v3

    .line 1418
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1419
    const-string v5, "mediaSource"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1422
    const-string v5, "mediaFilePath"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v2, "cameraRotation"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1424
    const-string v0, "mirrorMedia"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1425
    const-string v0, "originalWidth"

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1426
    const-string v0, "originalHeight"

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "straighteningAngle"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->x(Lcom/instagram/creation/photo/camera/c;)F

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1428
    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->y(Lcom/instagram/creation/photo/camera/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v0, "directShare"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->z(Lcom/instagram/creation/photo/camera/c;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1431
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/s;

    invoke-interface {v0, v4}, Lcom/instagram/creation/photo/camera/s;->a(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method
