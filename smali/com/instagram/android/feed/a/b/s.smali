.class public final Lcom/instagram/android/feed/a/b/s;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v4, Lcom/instagram/android/feed/a/b/w;

    invoke-direct {v4, p1}, Lcom/instagram/android/feed/a/b/w;-><init>(I)V

    .line 134
    iput-object v3, v4, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    move v0, v1

    .line 136
    :goto_0
    iget v2, v4, Lcom/instagram/android/feed/a/b/w;->a:I

    if-ge v0, v2, :cond_1

    .line 137
    iget v2, v4, Lcom/instagram/android/feed/a/b/w;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {p0, v2}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;Z)Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    move-result-object v2

    .line 138
    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->d:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aput-object v2, v5, v0

    .line 139
    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v6

    aput-object v6, v5, v0

    .line 140
    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getVideoOverlayView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v0

    .line 141
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 137
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 145
    return-object v3
.end method

.method private static a(Landroid/content/Context;Z)Lcom/instagram/ui/widget/imagebutton/IgImageButton;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->photo_grid_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 158
    :cond_0
    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/instagram/android/feed/a/b/s;->b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/ai;)V

    return-void
.end method

.method public static a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/w;",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/ai;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V

    .line 47
    return-void
.end method

.method public static a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/w;",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/ai;",
            ">;ZZI",
            "Lcom/instagram/android/feed/a/b/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/common/y/f;->a(Landroid/view/View;I)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    aget-object v4, v0, v1

    .line 66
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->d:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v5, v0, v1

    .line 69
    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/ai;

    move-object v2, v0

    .line 71
    :goto_2
    if-nez v2, :cond_3

    .line 72
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setVisibility(I)V

    .line 64
    :cond_0
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->photo_grid_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    .line 76
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    .line 77
    invoke-interface {v2}, Lcom/instagram/feed/d/ai;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setVisibility(I)V

    .line 80
    if-nez p3, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setEnableTouchOverlay(Z)V

    .line 81
    if-eqz p3, :cond_6

    .line 84
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 85
    iget-object v6, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    invoke-virtual {v5}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/facebook/aw;->checkbox_media_grid:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v6, v1

    .line 88
    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->addView(Landroid/view/View;)V

    .line 92
    :goto_5
    invoke-static {v4, v0, v2}, Lcom/instagram/android/feed/a/b/s;->b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/ai;)V

    .line 93
    new-instance v5, Lcom/instagram/android/feed/a/b/t;

    invoke-direct {v5, v2, v4, v0}, Lcom/instagram/android/feed/a/b/t;-><init>(Lcom/instagram/feed/d/ai;Lcom/instagram/common/ui/widget/imageview/IgImageView;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :goto_6
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v2}, Lcom/instagram/feed/d/ai;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 80
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    goto :goto_5

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 104
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 105
    const/16 v0, 0xff

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setAlpha(I)V

    .line 107
    :cond_7
    new-instance v0, Lcom/instagram/android/feed/a/b/u;

    invoke-direct {v0, p5, p1, v1, p4}, Lcom/instagram/android/feed/a/b/u;-><init>(Lcom/instagram/android/feed/a/b/v;Ljava/util/List;II)V

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 129
    :cond_9
    return-void
.end method

.method private static b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 33
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/feed/d/ai;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/feed/d/ai;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 37
    return-void

    .line 34
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method
