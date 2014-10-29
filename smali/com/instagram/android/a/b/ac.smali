.class public final Lcom/instagram/android/a/b/ac;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_recommended_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/instagram/android/a/b/ag;

    invoke-direct {v2}, Lcom/instagram/android/a/b/ag;-><init>()V

    .line 178
    sget v0, Lcom/facebook/av;->row_recommended_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 181
    sget v0, Lcom/facebook/av;->row_recommended_user_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->c:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/facebook/av;->row_recommended_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->d:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/facebook/av;->row_recommended_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->e:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/facebook/av;->row_recommended_social_context:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    .line 186
    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/facebook/av;->row_recommended_user_follow_button_large:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    :goto_0
    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->g:Lcom/instagram/user/follow/FollowButton;

    .line 189
    iget-object v3, v2, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    const/4 v4, 0x0

    sget v0, Lcom/facebook/av;->row_recommended_user_imagebutton_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aput-object v0, v3, v4

    .line 191
    iget-object v3, v2, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    const/4 v4, 0x1

    sget v0, Lcom/facebook/av;->row_recommended_user_imagebutton_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aput-object v0, v3, v4

    .line 193
    iget-object v3, v2, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    const/4 v4, 0x2

    sget v0, Lcom/facebook/av;->row_recommended_user_imagebutton_3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aput-object v0, v3, v4

    .line 195
    iget-object v3, v2, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    const/4 v4, 0x3

    sget v0, Lcom/facebook/av;->row_recommended_user_imagebutton_4:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aput-object v0, v3, v4

    .line 198
    sget v0, Lcom/facebook/av;->row_recommended_user_row:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->a:Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    sget v0, Lcom/facebook/av;->row_recommended_user_thumbnail_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->h:Landroid/view/ViewGroup;

    .line 203
    sget v0, Lcom/facebook/av;->row_recommended_user_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/a/b/ag;->j:Landroid/view/View;

    .line 205
    return-object v1

    .line 186
    :cond_0
    sget v0, Lcom/facebook/av;->row_recommended_user_follow_button_medium:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    goto :goto_0
.end method

.method public static a(Lcom/instagram/android/a/b/ag;IILcom/instagram/user/d/a;Landroid/support/v4/app/s;Landroid/support/v4/app/an;ZZZZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p9, :cond_0

    .line 46
    iget-object v1, p0, Lcom/instagram/android/a/b/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_1
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p8, :cond_2

    .line 62
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->g()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 65
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move v0, p2

    .line 70
    :goto_3
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setVisibility(I)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_5

    .line 77
    if-ge v1, v2, :cond_4

    .line 78
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setUrl(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v0, v0, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setVisibility(I)V

    .line 76
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v0, v0, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->setVisibility(I)V

    goto :goto_5

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->g:Lcom/instagram/user/follow/FollowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->g:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {p3}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Lcom/instagram/android/a/b/ad;

    invoke-direct {v4, p7, p4, p3, p1}, Lcom/instagram/android/a/b/ad;-><init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V

    invoke-virtual {v0, v1, p5, v3, v4}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 105
    if-eqz p6, :cond_a

    .line 109
    new-instance v3, Lcom/instagram/android/a/b/ae;

    invoke-direct {v3, p7, p4, p3, p1}, Lcom/instagram/android/a/b/ae;-><init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V

    .line 124
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 125
    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, p2, :cond_9

    .line 126
    if-ge v1, v0, :cond_7

    .line 128
    iget-object v4, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v4

    new-instance v5, Lcom/instagram/android/a/b/af;

    invoke-direct {v5, p4, p3, v1}, Lcom/instagram/android/a/b/af;-><init>(Landroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V

    invoke-virtual {v4, v5}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 124
    :cond_6
    invoke-virtual {p3}, Lcom/instagram/user/d/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    .line 137
    :cond_7
    if-ge v1, v2, :cond_8

    .line 138
    iget-object v4, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 140
    :cond_8
    iget-object v4, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 156
    if-eqz p10, :cond_c

    .line 157
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_9
    if-eqz p11, :cond_b

    .line 163
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/instagram/android/a/b/ag;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/android/a/b/ag;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 171
    :cond_b
    return-void

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/instagram/android/a/b/ag;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method
