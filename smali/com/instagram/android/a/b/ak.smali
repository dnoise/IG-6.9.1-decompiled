.class public final Lcom/instagram/android/a/b/ak;
.super Ljava/lang/Object;
.source "ReviewPhotoMapTypeRow.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_review_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/instagram/android/a/b/am;

    invoke-direct {v2}, Lcom/instagram/android/a/b/am;-><init>()V

    .line 24
    sget v0, Lcom/facebook/av;->row_review_map_textview_expanded_copy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/am;->c:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/facebook/av;->row_review_map_textview_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/am;->a:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/facebook/av;->row_review_map_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/am;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 27
    sget v0, Lcom/facebook/av;->row_review_map_button_deselect_cluster:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/am;->d:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/am;Lcom/instagram/android/a/r;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 37
    iget-object v0, p1, Lcom/instagram/android/a/b/am;->a:Landroid/widget/TextView;

    iget v1, p2, Lcom/instagram/android/a/r;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget v0, p2, Lcom/instagram/android/a/r;->c:I

    if-le v0, v2, :cond_0

    .line 39
    iget-object v0, p1, Lcom/instagram/android/a/b/am;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->you_geotagged_x_photos_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/a/r;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    iget-object v7, p1, Lcom/instagram/android/a/b/am;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v0, p1, Lcom/instagram/android/a/b/am;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    const-string v2, "12"

    iget-object v3, p1, Lcom/instagram/android/a/b/am;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/at;->map_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p2, Lcom/instagram/android/a/r;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p2, Lcom/instagram/android/a/r;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/widget/j;->a(FLcom/instagram/venue/model/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p2, Lcom/instagram/android/a/r;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/List;)Z

    move-result v0

    .line 53
    iget-object v1, p1, Lcom/instagram/android/a/b/am;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 54
    iget-object v0, p1, Lcom/instagram/android/a/b/am;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/a/b/al;

    invoke-direct {v1, p2, p1}, Lcom/instagram/android/a/b/al;-><init>(Lcom/instagram/android/a/r;Lcom/instagram/android/a/b/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/a/b/am;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->you_geotagged_x_photo_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/a/r;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_1
    const/16 v0, 0xff

    goto :goto_1
.end method
