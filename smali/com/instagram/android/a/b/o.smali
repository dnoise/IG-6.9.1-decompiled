.class public final Lcom/instagram/android/a/b/o;
.super Ljava/lang/Object;
.source "HashtagRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_hashtag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/instagram/android/a/b/p;

    invoke-direct {v2}, Lcom/instagram/android/a/b/p;-><init>()V

    .line 20
    sget v0, Lcom/facebook/av;->row_hashtag_textview_tag_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/p;->a(Lcom/instagram/android/a/b/p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/facebook/av;->row_hashtag_textview_media_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    return-object v1
.end method

.method public static a(Lcom/instagram/android/a/b/p;Lcom/instagram/android/g/c;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-static {p0}, Lcom/instagram/android/a/b/p;->a(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/g/c;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/util/d;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
