.class public Lcom/instagram/android/k/a/f;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/instagram/android/k/a/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/instagram/android/k/a/j;

    invoke-direct {v2}, Lcom/instagram/android/k/a/j;-><init>()V

    .line 127
    iput-object v1, v2, Lcom/instagram/android/k/a/j;->a:Landroid/view/View;

    .line 128
    sget v0, Lcom/facebook/av;->row_user_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->b:Landroid/view/View;

    .line 129
    sget v0, Lcom/facebook/av;->row_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 130
    sget v0, Lcom/facebook/av;->row_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->d:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/facebook/av;->row_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->e:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/facebook/av;->row_user_follow_button_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->f:Landroid/view/ViewGroup;

    .line 135
    iget-object v0, v2, Lcom/instagram/android/k/a/j;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    if-ne p3, v0, :cond_3

    .line 138
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/facebook/aw;->follow_button_large:I

    iget-object v4, v2, Lcom/instagram/android/k/a/j;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    .line 146
    :goto_0
    iget-object v0, v2, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v6}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 147
    iget-object v0, v2, Lcom/instagram/android/k/a/j;->f:Landroid/view/ViewGroup;

    iget-object v3, v2, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    :cond_1
    sget v0, Lcom/facebook/av;->bottom_row_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->h:Landroid/view/View;

    .line 151
    sget v0, Lcom/facebook/av;->similar_accounts_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    .line 154
    if-eqz p4, :cond_2

    iget-object v0, v2, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, v2, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    iget-object v5, v2, Lcom/instagram/android/k/a/j;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-static {p1, v3, v4, p3, v5}, Lcom/instagram/android/i/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, v2, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    return-object v1

    .line 142
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/facebook/aw;->follow_button_medium:I

    iget-object v4, v2, Lcom/instagram/android/k/a/j;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    goto :goto_0
.end method

.method public final a(Lcom/instagram/android/k/a/j;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/i/d;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/k/a/j;",
            "Lcom/instagram/user/c/a;",
            "ZZZZ",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/instagram/android/i/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 39
    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_0
    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_1
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    if-eqz p3, :cond_6

    .line 55
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 56
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x0

    new-instance v3, Lcom/instagram/android/k/a/g;

    move-object/from16 v0, p10

    invoke-direct {v3, p0, v0, p2}, Lcom/instagram/android/k/a/g;-><init>(Lcom/instagram/android/k/a/f;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, p2, p7, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 68
    if-eqz p9, :cond_5

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 69
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/i/a/e;

    new-instance v5, Lcom/instagram/android/k/a/h;

    move-object/from16 v0, p10

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/instagram/android/k/a/h;-><init>(Lcom/instagram/android/k/a/f;Lcom/instagram/android/k/a/j;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v6

    const-string v7, "follow_list"

    move-object/from16 v2, p9

    move-object v3, p7

    move-object/from16 v4, p8

    invoke-static/range {v1 .. v7}, Lcom/instagram/android/i/a/a;->a(Lcom/instagram/android/i/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/i/a/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    .line 96
    iget-object v7, p1, Lcom/instagram/android/k/a/j;->b:Landroid/view/View;

    new-instance v1, Lcom/instagram/android/k/a/i;

    move-object v2, p0

    move v3, p6

    move-object/from16 v4, p10

    move-object v5, p2

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/instagram/android/k/a/i;-><init>(Lcom/instagram/android/k/a/f;ZLcom/instagram/android/i/d;Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_1
    if-eqz p6, :cond_2

    .line 109
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->h:Landroid/view/View;

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->b:Landroid/view/View;

    sget v2, Lcom/facebook/au;->bg_simple_row_grey:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    :cond_2
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    return-void

    .line 39
    :cond_3
    invoke-virtual {p2}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 47
    :cond_4
    iget-object v2, p1, Lcom/instagram/android/k/a/j;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v2, p1, Lcom/instagram/android/k/a/j;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 88
    :cond_5
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->i:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 91
    :cond_6
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p1, Lcom/instagram/android/k/a/j;->g:Lcom/instagram/user/follow/FollowButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_2
.end method
