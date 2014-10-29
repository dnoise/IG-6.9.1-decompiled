.class final Lcom/instagram/creation/photo/camera/k;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/CameraFlashButton;

.field final synthetic b:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;Lcom/instagram/creation/photo/camera/CameraFlashButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    iput-object p2, p0, Lcom/instagram/creation/photo/camera/k;->a:Lcom/instagram/creation/photo/camera/CameraFlashButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1248
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->b:[I

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/k;->a:Lcom/instagram/creation/photo/camera/CameraFlashButton;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->getCurrentMode$2508da22()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1259
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    sget v1, Lcom/facebook/az;->pref_camera_flash_mode_off:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1264
    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->p(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/camera/k;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1265
    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1266
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1268
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->q(Lcom/instagram/creation/photo/camera/c;)V

    .line 1269
    return-void

    .line 1250
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    sget v1, Lcom/facebook/az;->pref_camera_flash_mode_on:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    sget v1, Lcom/facebook/az;->pref_camera_flash_mode_auto:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/k;->b:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
