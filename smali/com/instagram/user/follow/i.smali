.class public final Lcom/instagram/user/follow/i;
.super Ljava/lang/Object;
.source "FollowButtonStyleManager.java"


# direct methods
.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 32
    sget v0, Lcom/facebook/as;->green_medium:I

    if-ne p0, v0, :cond_1

    .line 33
    sget p0, Lcom/facebook/as;->green_6:I

    .line 39
    :cond_0
    :goto_0
    return p0

    .line 34
    :cond_1
    sget v0, Lcom/facebook/as;->grey_light:I

    if-ne p0, v0, :cond_2

    .line 35
    sget p0, Lcom/facebook/as;->grey_4:I

    goto :goto_0

    .line 36
    :cond_2
    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    if-ne p0, v0, :cond_0

    .line 37
    sget p0, Lcom/facebook/as;->accent_blue_6:I

    goto :goto_0
.end method

.method public static a(Lcom/instagram/user/c/c;)I
    .locals 2
    .parameter

    .prologue
    .line 11
    sget-object v0, Lcom/instagram/user/follow/j;->a:[I

    invoke-virtual {p0}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    sget v0, Lcom/facebook/au;->rounded_layout_border_stroke:I

    :goto_0
    return v0

    .line 14
    :pswitch_0
    sget v0, Lcom/facebook/au;->rounded_layout_border_fill:I

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/instagram/user/c/c;)I
    .locals 2
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/instagram/user/follow/j;->a:[I

    invoke-virtual {p0}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    :pswitch_0
    sget v0, Lcom/facebook/as;->grey_light:I

    :goto_0
    return v0

    .line 23
    :pswitch_1
    sget v0, Lcom/facebook/as;->green_medium:I

    goto :goto_0

    .line 25
    :pswitch_2
    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
