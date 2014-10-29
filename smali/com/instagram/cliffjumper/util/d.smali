.class public final Lcom/instagram/cliffjumper/util/d;
.super Ljava/lang/Object;
.source "RotateUtil.java"


# direct methods
.method public static a(IIIZIII)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 11
    if-eqz p3, :cond_0

    .line 12
    sparse-switch p2, :sswitch_data_0

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    :goto_0
    return-object v0

    .line 15
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 22
    :cond_0
    sparse-switch p2, :sswitch_data_1

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 25
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 12
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 22
    :sswitch_data_1
    .sparse-switch
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static b(IIIZIII)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p3, :cond_0

    .line 38
    sparse-switch p2, :sswitch_data_0

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 43
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 49
    :cond_0
    sparse-switch p2, :sswitch_data_1

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 51
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 53
    :sswitch_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 49
    :sswitch_data_1
    .sparse-switch
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
