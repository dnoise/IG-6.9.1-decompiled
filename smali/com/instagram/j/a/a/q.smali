.class public final Lcom/instagram/j/a/a/q;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserSimple.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_newsfeed_story_user_simple:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/instagram/j/a/a/s;

    invoke-direct {v2}, Lcom/instagram/j/a/a/s;-><init>()V

    .line 20
    sget v0, Lcom/facebook/av;->row_newsfeed_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/j/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 21
    sget v0, Lcom/facebook/av;->row_newsfeed_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/j/a/a/s;->b:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/j/a/a/s;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p1, Lcom/instagram/j/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p2}, Lcom/instagram/j/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lcom/instagram/j/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v1, Lcom/instagram/j/a/a/r;

    invoke-direct {v1, p3, p2}, Lcom/instagram/j/a/a/r;-><init>(Lcom/instagram/j/a/a/a;Lcom/instagram/j/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p1, Lcom/instagram/j/a/a/s;->b:Landroid/widget/TextView;

    invoke-static {p0, p2, p3}, Lcom/instagram/j/a;->a(Landroid/content/Context;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p1, Lcom/instagram/j/a/a/s;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 41
    return-void
.end method
