.class public final Lcom/instagram/creation/video/l/j;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 39
    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return v0

    .line 43
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 45
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 47
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 18
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3
    .parameter

    .prologue
    .line 26
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    add-int/lit8 v0, p0, -0x1

    .line 28
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 29
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 30
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 31
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 32
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    return v0
.end method
