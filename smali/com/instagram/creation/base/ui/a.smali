.class public final Lcom/instagram/creation/base/ui/a;
.super Ljava/lang/Object;
.source "CreationLayoutUtil.java"


# direct methods
.method public static a(Landroid/content/res/Resources;)I
    .locals 7
    .parameter

    .prologue
    .line 58
    sget v0, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    sget v0, Lcom/facebook/at;->creation_secondary_actions_large_condensed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    sget v3, Lcom/facebook/at;->creation_secondary_actions_large:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 65
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-static {v4, v5}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v4

    float-to-int v4, v4

    .line 67
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/16 v6, 0x74

    invoke-static {v5, v6}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v5

    float-to-int v5, v5

    .line 72
    add-int v6, v1, v2

    add-int/2addr v0, v6

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v5, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v5}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;)F

    move-result v5

    .line 77
    if-eqz v0, :cond_2

    .line 78
    add-int v0, v1, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v1, :cond_1

    sget v0, Lcom/instagram/creation/base/ui/c;->a:I

    .line 84
    :goto_1
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    sget v0, Lcom/instagram/creation/base/ui/c;->b:I

    goto :goto_1

    .line 84
    :cond_2
    const v0, 0x3fb33333

    cmpl-float v0, v5, v0

    if-lez v0, :cond_3

    sget v0, Lcom/instagram/creation/base/ui/c;->c:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/instagram/creation/base/ui/c;->d:I

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    sget-object v0, Lcom/instagram/creation/base/ui/b;->a:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 100
    :pswitch_0
    sget v0, Lcom/facebook/av;->creation_secondary_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v2, Lcom/facebook/at;->creation_secondary_actions_large_condensed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-static {p0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {p0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/view/View;)V

    .line 114
    sget v0, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    sget v2, Lcom/facebook/at;->creation_main_actions_height_small_condensed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    sget v0, Lcom/facebook/av;->creation_image_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    sget v0, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/au;->creation_main_actions_background_small:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    return-void
.end method

.method public static b(Landroid/content/res/Resources;)Z
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-static {p0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    .line 92
    sget v1, Lcom/instagram/creation/base/ui/c;->a:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/instagram/creation/base/ui/c;->b:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
