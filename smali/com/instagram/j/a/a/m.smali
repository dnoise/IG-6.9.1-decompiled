.class public final Lcom/instagram/j/a/a/m;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserFollow.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_newsfeed_story_user_follow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/instagram/j/a/a/p;

    invoke-direct {v2}, Lcom/instagram/j/a/a/p;-><init>()V

    .line 28
    sget v0, Lcom/facebook/av;->row_newsfeed_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/j/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 29
    sget v0, Lcom/facebook/av;->row_newsfeed_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/j/a/a/p;->b:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/facebook/av;->row_newsfeed_follow_button_holder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/j/a/a/p;->c:Landroid/view/View;

    .line 34
    sget v0, Lcom/facebook/av;->row_newsfeed_follow_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/j/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/j/a/a/p;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 47
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p3}, Lcom/instagram/j/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 48
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v1, Lcom/instagram/j/a/a/n;

    invoke-direct {v1, p4, p3}, Lcom/instagram/j/a/a/n;-><init>(Lcom/instagram/j/a/a/a;Lcom/instagram/j/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->b:Landroid/widget/TextView;

    invoke-static {p0, p3, p4}, Lcom/instagram/j/a;->a(Landroid/content/Context;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 56
    invoke-virtual {p3}, Lcom/instagram/j/d/c;->i()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v3}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 59
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {p3}, Lcom/instagram/j/d/c;->i()Lcom/instagram/user/c/a;

    move-result-object v1

    new-instance v2, Lcom/instagram/j/a/a/o;

    invoke-direct {v2, p4, p3}, Lcom/instagram/j/a/a/o;-><init>(Lcom/instagram/j/a/a/a;Lcom/instagram/j/d/c;)V

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p2, Lcom/instagram/j/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_0
.end method
