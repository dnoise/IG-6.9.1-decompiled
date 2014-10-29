.class public final Lcom/instagram/camera/h;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static a:Lcom/instagram/camera/j;


# direct methods
.method public static a(Landroid/view/Window;F)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 319
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 320
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 321
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 322
    return v1
.end method

.method public static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 68
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 76
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 p1, v0, 0x168

    .line 79
    :cond_1
    return p1

    .line 72
    :cond_2
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 73
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 74
    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IILcom/instagram/camera/e;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->c()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    aget-object v0, v0, p0

    .line 260
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 261
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {p2, p0, v0}, Lcom/instagram/camera/e;->a(II)I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 265
    :goto_0
    return v0

    .line 263
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {p2, p0, v0}, Lcom/instagram/camera/e;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 213
    packed-switch v1, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return v0

    .line 217
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 219
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 221
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter

    .prologue
    .line 307
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(I)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 107
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 108
    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/hardware/Camera;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 89
    invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/admin/DevicePolicyManager;)V

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/camera/e;->b(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/instagram/camera/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "openCamera failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_1
    throw v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 269
    sget-object v1, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;

    monitor-enter v1

    .line 270
    :try_start_0
    sget-object v0, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;

    invoke-virtual {v0, p0, p1}, Lcom/instagram/camera/j;->a(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/instagram/camera/j;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Lcom/instagram/camera/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;

    .line 50
    return-void
.end method

.method private static a(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/instagram/camera/b;

    invoke-direct {v0}, Lcom/instagram/camera/b;-><init>()V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 236
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 238
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 241
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 242
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public static a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 228
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 229
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 230
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 231
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;IILcom/instagram/camera/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 251
    invoke-static {p1, p2, p3}, Lcom/instagram/camera/h;->a(IILcom/instagram/camera/e;)I

    move-result v0

    .line 253
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 254
    return-void
.end method

.method public static a(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-static {p1}, Lcom/instagram/camera/h;->a(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    const v0, 0x3f333333

    invoke-static {p0, v0}, Lcom/instagram/camera/h;->a(Landroid/view/Window;F)F

    .line 330
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_0
    return-void
.end method

.method public static b(I)I
    .locals 3
    .parameter

    .prologue
    .line 113
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 117
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 118
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rsub-int v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 120
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v0, v0, 0x5a

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static b(II)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    if-le p0, p1, :cond_0

    .line 207
    :goto_0
    return p1

    .line 206
    :cond_0
    if-gez p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, p0

    .line 207
    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    new-instance v0, Lcom/instagram/camera/i;

    invoke-direct {v0, p0}, Lcom/instagram/camera/i;-><init>(Landroid/app/Activity;)V

    .line 346
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->dialog_ok:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 352
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 361
    const-string v0, "SAMSUNG-SGH-I337"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-M919"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCH-I545"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPH-L720"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I337M"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCH-R970"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SC-04E"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9505"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCH-I545"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x1

    .line 373
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 133
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    move v0, v1

    .line 135
    :goto_0
    if-ge v0, v2, :cond_3

    .line 136
    invoke-static {v0}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 137
    if-lt p0, v5, :cond_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    if-ge p0, v5, :cond_2

    if-nez v3, :cond_2

    .line 142
    :cond_1
    :goto_1
    return v0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 142
    goto :goto_1
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 377
    const-string v0, "GT-I9100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100G"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SAMSUNG-SGH-T989"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPH-D710"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SAMSUNG-SGH-I727"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I727R"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-T989"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I777"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
