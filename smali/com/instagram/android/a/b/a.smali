.class public final Lcom/instagram/android/a/b/a;
.super Ljava/lang/Object;
.source "AutoCompleteHashTagRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_autocomplete_hashtag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/instagram/android/a/b/b;

    invoke-direct {v2}, Lcom/instagram/android/a/b/b;-><init>()V

    .line 17
    sget v0, Lcom/facebook/av;->row_hashtag_textview_tag_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/b;->a(Lcom/instagram/android/a/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 18
    sget v0, Lcom/facebook/av;->row_hashtag_textview_media_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/b;->b(Lcom/instagram/android/a/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    return-object v1
.end method

.method public static a(Lcom/instagram/android/a/b/b;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/instagram/android/a/b/b;->a(Lcom/instagram/android/a/b/b;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {p0}, Lcom/instagram/android/a/b/b;->b(Lcom/instagram/android/a/b/b;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    return-void
.end method
