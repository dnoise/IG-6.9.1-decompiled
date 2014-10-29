.class public final Lcom/instagram/android/i/a/a;
.super Ljava/lang/Object;
.source "SimilarAccountsViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    sget v1, Lcom/facebook/aw;->similar_accounts_flyout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    new-instance v3, Lcom/instagram/android/i/a/e;

    invoke-direct {v3}, Lcom/instagram/android/i/a/e;-><init>()V

    move-object v0, v1

    .line 97
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lcom/instagram/android/i/a/e;->a:Landroid/view/ViewGroup;

    .line 98
    sget v0, Lcom/facebook/av;->similar_accounts_header_x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/instagram/android/i/a/e;->c:Landroid/widget/ImageView;

    .line 99
    iget-object v0, v3, Lcom/instagram/android/i/a/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    new-instance v4, Lcom/instagram/android/k/a/f;

    invoke-direct {v4}, Lcom/instagram/android/k/a/f;-><init>()V

    .line 103
    new-array v0, v7, [Landroid/view/View;

    iput-object v0, v3, Lcom/instagram/android/i/a/e;->d:[Landroid/view/View;

    move v0, v2

    .line 104
    :goto_0
    if-ge v0, v7, :cond_0

    .line 105
    invoke-virtual {v4, p0, p2, p3, v2}, Lcom/instagram/android/k/a/f;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;

    move-result-object v5

    .line 106
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v6, v3, Lcom/instagram/android/i/a/e;->d:[Landroid/view/View;

    aput-object v5, v6, v0

    .line 108
    iget-object v6, v3, Lcom/instagram/android/i/a/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    sget v0, Lcom/facebook/av;->similar_accounts_notch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    iput-object v0, v3, Lcom/instagram/android/i/a/e;->b:Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    .line 111
    iget-object v0, v3, Lcom/instagram/android/i/a/e;->b:Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    invoke-virtual {v0, p4}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->setNotchCenterXOn(Landroid/view/View;)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    return-object v1
.end method

.method public static a(Lcom/instagram/android/i/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/i/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/i/a/e;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Lcom/instagram/android/i/a/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v4, Lcom/instagram/android/k/a/f;

    invoke-direct {v4}, Lcom/instagram/android/k/a/f;-><init>()V

    .line 36
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 37
    const/4 v5, 0x0

    move v15, v5

    :goto_0
    const/4 v5, 0x3

    if-ge v15, v5, :cond_1

    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_0

    .line 39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/i/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/k/a/j;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instagram/user/c/a;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/instagram/android/i/a/b;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/instagram/android/i/a/b;-><init>(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v4 .. v14}, Lcom/instagram/android/k/a/f;->a(Lcom/instagram/android/k/a/j;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/i/d;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/i/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    sget v5, Lcom/facebook/av;->layout_container_main:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/instagram/common/analytics/g;

    sget-object v7, Lcom/instagram/android/i/a;->a:Lcom/instagram/android/i/a;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instagram/user/c/a;

    invoke-virtual {v6}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v5, v7, v0, v6, v1}, Lcom/instagram/android/i/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/android/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_1
    add-int/lit8 v5, v15, 0x1

    move v15, v5

    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/i/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/i/a/e;->c:Landroid/widget/ImageView;

    new-instance v5, Lcom/instagram/android/i/a/c;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/instagram/android/i/a/c;-><init>(Lcom/instagram/android/i/a/d;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
