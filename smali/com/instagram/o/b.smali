.class public final Lcom/instagram/o/b;
.super Ljava/lang/Object;
.source "ImageSizeUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    rsub-int v1, v1, 0x132

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    rsub-int v0, v0, 0x280

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 41
    if-ge v1, v0, :cond_0

    sget v0, Lcom/instagram/o/d;->a:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/instagram/o/d;->b:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    if-eqz p1, :cond_0

    const-string v0, "_8.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/instagram/o/c;->a:[I

    invoke-static {p0}, Lcom/instagram/o/b;->a(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    :cond_0
    :goto_0
    return-object p1

    .line 28
    :pswitch_0
    const-string v0, "_8.jpg"

    const-string v1, "_6.jpg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
