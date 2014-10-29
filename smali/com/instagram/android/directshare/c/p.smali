.class public final Lcom/instagram/android/directshare/c/p;
.super Ljava/lang/Object;
.source "InboxRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_inbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/instagram/android/directshare/c/s;

    invoke-direct {v2}, Lcom/instagram/android/directshare/c/s;-><init>()V

    .line 47
    sget v0, Lcom/facebook/av;->directshare_inbox_row_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->a:Landroid/view/View;

    .line 48
    sget v0, Lcom/facebook/av;->row_inbox_thumbnail_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->b:Landroid/widget/FrameLayout;

    .line 50
    sget v0, Lcom/facebook/av;->row_inbox_thumbnail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 51
    sget v0, Lcom/facebook/av;->row_inbox_user_profile:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->d:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 53
    sget v0, Lcom/facebook/av;->row_inbox_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->e:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/facebook/av;->row_inbox_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/facebook/av;->row_inbox_time:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->g:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/facebook/av;->row_inbox_video_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->h:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/facebook/av;->row_inbox_tap_to_open:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/facebook/av;->directshare_inbox_row_content_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/directshare/c/s;->j:Landroid/view/View;

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/android/directshare/c/s;Lcom/instagram/feed/d/l;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 65
    invoke-static {p2}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/feed/d/l;)I

    move-result v0

    .line 67
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    new-instance v3, Lcom/instagram/android/directshare/c/q;

    invoke-direct {v3, p1}, Lcom/instagram/android/directshare/c/q;-><init>(Lcom/instagram/android/directshare/c/s;)V

    invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V

    .line 81
    :goto_0
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 82
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->d:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 83
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_1
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget-object v1, Lcom/instagram/android/directshare/c/r;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 125
    invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;Z)V

    .line 126
    invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;I)V

    .line 127
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->g:Landroid/widget/TextView;

    sget v1, Lcom/facebook/au;->feed_clock:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 131
    :goto_2
    return-void

    .line 78
    :cond_0
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v2, v6}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V

    .line 79
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;Z)V

    .line 95
    invoke-static {p1, v5}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;I)V

    .line 96
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/az;->video:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->directshare_inbox_thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 107
    if-le v1, v0, :cond_3

    .line 108
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 97
    :cond_2
    sget v0, Lcom/facebook/az;->photo:I

    goto :goto_3

    .line 111
    :cond_3
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->bg_row_pending_direct_share_thumbnail:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 117
    :pswitch_1
    invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;Z)V

    .line 118
    invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/p;->a(Lcom/instagram/android/directshare/c/s;I)V

    .line 119
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p1, Lcom/instagram/android/directshare/c/s;->g:Landroid/widget/TextView;

    sget v1, Lcom/facebook/au;->inbox_glyph_activity:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/instagram/android/directshare/c/s;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/android/directshare/c/s;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/directshare/c/s;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method private static a(Lcom/instagram/android/directshare/c/s;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/android/directshare/c/s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->a:Landroid/view/View;

    sget v2, Lcom/facebook/au;->bg_row_inbox_unread:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->e:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->accent_blue_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->a:Landroid/view/View;

    sget v2, Lcom/facebook/au;->bg_simple_row:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->e:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->grey_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v1, p0, Lcom/instagram/android/directshare/c/s;->f:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
