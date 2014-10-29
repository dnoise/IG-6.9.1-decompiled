.class public final Lcom/instagram/android/feed/a/b/af;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 298
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 299
    sget v1, Lcom/facebook/aw;->row_profile_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 300
    new-instance v2, Lcom/instagram/android/feed/a/b/as;

    invoke-direct {v2}, Lcom/instagram/android/feed/a/b/as;-><init>()V

    .line 302
    iput-object v1, v2, Lcom/instagram/android/feed/a/b/as;->a:Landroid/view/View;

    .line 303
    sget v0, Lcom/facebook/av;->row_friend_request_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->c:Landroid/view/View;

    .line 304
    iget-object v0, v2, Lcom/instagram/android/feed/a/b/as;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/a/b/k;->a(Landroid/view/View;)Landroid/view/View;

    .line 305
    sget v0, Lcom/facebook/av;->row_profile_header_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 306
    sget v0, Lcom/facebook/av;->row_profile_header_container_photos:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->e:Landroid/view/View;

    .line 307
    sget v0, Lcom/facebook/av;->row_profile_header_textview_photos_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->f:Landroid/widget/TextView;

    .line 308
    sget v0, Lcom/facebook/av;->row_profile_header_container_followers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->g:Landroid/view/View;

    .line 309
    sget v0, Lcom/facebook/av;->row_profile_header_textview_followers_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->h:Landroid/widget/TextView;

    .line 311
    sget v0, Lcom/facebook/av;->row_profile_header_container_following:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->i:Landroid/view/View;

    .line 312
    sget v0, Lcom/facebook/av;->row_profile_header_textview_following_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->j:Landroid/widget/TextView;

    .line 314
    sget v0, Lcom/facebook/av;->row_profile_header_button_follow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->k:Lcom/instagram/user/follow/FollowButton;

    .line 316
    sget v0, Lcom/facebook/av;->row_profile_header_button_chaining:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/ChainingButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    .line 318
    sget v0, Lcom/facebook/av;->row_profile_header_edit_profile:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->u:Landroid/widget/TextView;

    .line 319
    sget v0, Lcom/facebook/av;->profile_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->m:Landroid/view/View;

    .line 320
    sget v0, Lcom/facebook/av;->row_profile_header_textview_biography:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    .line 321
    sget v0, Lcom/facebook/av;->row_profile_header_textview_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->b:Landroid/widget/TextView;

    .line 322
    sget v0, Lcom/facebook/av;->row_profile_header_textview_website:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    .line 323
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->p:Landroid/view/ViewGroup;

    .line 325
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->q:Landroid/view/View;

    .line 326
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->r:Landroid/view/View;

    .line 327
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_map:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ProfileMapButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->s:Lcom/instagram/android/widget/ProfileMapButton;

    .line 329
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_tagged:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/ProfileTagsButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->t:Lcom/instagram/android/people/widget/ProfileTagsButton;

    .line 331
    sget v0, Lcom/facebook/av;->similar_accounts_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    .line 333
    iget-object v0, v2, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    sget-object v3, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    iget-object v4, v2, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {p0, v5, v3, p1, v4}, Lcom/instagram/android/i/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    iget-object v0, v2, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 338
    return-object v1
.end method

.method private static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    if-eqz p0, :cond_2

    .line 279
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    const v1, 0x186a0

    if-ge v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 282
    :cond_0
    const v1, 0xf4240

    if-ge v0, v1, :cond_1

    .line 283
    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 284
    const-string v2, "%.0fk"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    int-to-double v0, v0

    const-wide v2, 0x40c3880000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    .line 288
    const-string v2, "%.2fm"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_2
    if-nez p0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/instagram/android/feed/a/b/as;Lcom/instagram/user/c/a;IZZLjava/util/List;Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/feed/a/n;Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/android/i/d;)V
    .locals 8
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/as;",
            "Lcom/instagram/user/c/a;",
            "IZZ",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Lcom/instagram/android/feed/a/n;",
            "Lcom/instagram/android/feed/a/b/ar;",
            "Lcom/instagram/android/i/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->s:Lcom/instagram/android/widget/ProfileMapButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->t:Lcom/instagram/android/people/widget/ProfileTagsButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setVisibility(I)V

    .line 61
    if-eqz p1, :cond_c

    .line 63
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/a/b/n;

    move-object/from16 v0, p10

    invoke-static {v1, p1, p6, p7, v0}, Lcom/instagram/android/a/b/k;->a(Lcom/instagram/android/a/b/n;Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/ar;)V

    .line 67
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    new-instance v2, Lcom/instagram/android/feed/a/b/ag;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Lcom/instagram/android/feed/a/b/ag;-><init>(Lcom/instagram/android/feed/a/b/ar;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->s:Lcom/instagram/android/widget/ProfileMapButton;

    new-instance v2, Lcom/instagram/android/feed/a/b/aj;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Lcom/instagram/android/feed/a/b/aj;-><init>(Lcom/instagram/android/feed/a/b/ar;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->e:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/ak;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/b/ak;-><init>(Lcom/instagram/android/feed/a/b/as;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->g:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/al;

    move-object/from16 v0, p8

    invoke-direct {v2, v0, p6, p1}, Lcom/instagram/android/feed/a/b/al;-><init>(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->i:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/am;

    move-object/from16 v0, p8

    invoke-direct {v2, v0, p6, p1}, Lcom/instagram/android/feed/a/b/am;-><init>(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/instagram/android/feed/a/b/af;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->k:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->k:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x1

    new-instance v3, Lcom/instagram/android/feed/a/b/an;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, p1}, Lcom/instagram/android/feed/a/b/an;-><init>(Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, p1, p7, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 129
    if-eqz p3, :cond_3

    invoke-static {p5}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/instagram/user/follow/ChainingButton;->a(Lcom/instagram/user/c/c;Z)V

    .line 132
    if-nez p4, :cond_1

    .line 133
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    new-instance v2, Lcom/instagram/android/feed/a/b/ao;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, p1}, Lcom/instagram/android/feed/a/b/ao;-><init>(Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_1
    :goto_1
    if-eqz p4, :cond_4

    invoke-static {p5}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/i/a/e;

    new-instance v5, Lcom/instagram/android/feed/a/b/ap;

    move-object/from16 v0, p11

    invoke-direct {v5, p0, v0, p1}, Lcom/instagram/android/feed/a/b/ap;-><init>(Lcom/instagram/android/feed/a/b/as;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v6

    const-string v7, "profile"

    move-object v2, p5

    move-object v3, p7

    move-object/from16 v4, p8

    invoke-static/range {v1 .. v7}, Lcom/instagram/android/i/a/a;->a(Lcom/instagram/android/i/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/i/a/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 181
    :goto_2
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_3
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 189
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_4
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 196
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^https?://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/feed/a/b/ah;

    invoke-direct {v2, p1, p6}, Lcom/instagram/android/feed/a/b/ah;-><init>(Lcom/instagram/user/c/a;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :goto_5
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 218
    :goto_6
    iget-object v2, p0, Lcom/instagram/android/feed/a/b/as;->m:Landroid/view/View;

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_7
    invoke-static {v2, v1}, Lcom/instagram/common/y/f;->a(Landroid/view/View;I)V

    .line 221
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->t:Lcom/instagram/android/people/widget/ProfileTagsButton;

    new-instance v2, Lcom/instagram/android/feed/a/b/ai;

    move-object/from16 v0, p8

    invoke-direct {v2, p1, v0}, Lcom/instagram/android/feed/a/b/ai;-><init>(Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->t:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v1, p1}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setUser(Lcom/instagram/user/c/a;)V

    .line 234
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->t:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v1, p2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setPhotosOfYouCount(I)V

    .line 236
    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 237
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->p:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/as;->r:Landroid/view/View;

    move-object/from16 v0, p9

    invoke-static {v1, v2, v0}, Lcom/instagram/android/widget/ae;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    .line 240
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->s:Lcom/instagram/android/widget/ProfileMapButton;

    invoke-virtual {v1, p1}, Lcom/instagram/android/widget/ProfileMapButton;->setUser(Lcom/instagram/user/c/a;)V

    .line 267
    :goto_8
    return-void

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->profile_anonymous_user:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->k:Lcom/instagram/user/follow/FollowButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->k:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->l:Lcom/instagram/user/follow/ChainingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/ChainingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->u:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->u:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/feed/a/b/aq;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Lcom/instagram/android/feed/a/b/aq;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 185
    :cond_6
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 192
    :cond_7
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 211
    :cond_8
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 214
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 218
    :cond_a
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_7

    .line 242
    :cond_b
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->p:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 246
    :cond_c
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->profile_anonymous_user:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->f:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->h:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->j:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->o:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    invoke-virtual/range {p9 .. p9}, Lcom/instagram/android/feed/a/n;->s()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 258
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->user_not_found:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :goto_9
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->p:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 259
    :cond_d
    invoke-virtual/range {p9 .. p9}, Lcom/instagram/android/feed/a/n;->t()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->request_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 262
    :cond_e
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/as;->n:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9
.end method

.method private static a(Lcom/instagram/user/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
