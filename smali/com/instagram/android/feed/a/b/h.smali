.class public final Lcom/instagram/android/feed/a/b/h;
.super Ljava/lang/Object;
.source "HashtagFeedHeaderRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_button_group_view_switcher:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/instagram/android/feed/a/b/i;

    invoke-direct {v2}, Lcom/instagram/android/feed/a/b/i;-><init>()V

    .line 24
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/feed/a/b/i;->a(Lcom/instagram/android/feed/a/b/i;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/i;->a:Landroid/view/View;

    .line 26
    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/i;->b:Landroid/view/View;

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    invoke-static {v2}, Lcom/instagram/android/feed/a/b/i;->a(Lcom/instagram/android/feed/a/b/i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    sget v0, Lcom/facebook/av;->vertical_divider_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget v0, Lcom/facebook/av;->vertical_divider_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-object v1
.end method

.method public static a(Lcom/instagram/android/feed/a/b/i;Lcom/instagram/android/g/c;Landroid/content/Context;Lcom/instagram/android/feed/a/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/i;->b:Landroid/view/View;

    invoke-static {v0, v1, p3}, Lcom/instagram/android/widget/ae;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    .line 38
    invoke-static {p0}, Lcom/instagram/android/feed/a/b/i;->a(Lcom/instagram/android/feed/a/b/i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/g/c;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/android/util/d;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
