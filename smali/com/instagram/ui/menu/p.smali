.class public final Lcom/instagram/ui/menu/p;
.super Ljava/lang/Object;
.source "SimpleMenuItemRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/instagram/ui/menu/q;

    invoke-direct {v2}, Lcom/instagram/ui/menu/q;-><init>()V

    .line 56
    sget v0, Lcom/facebook/av;->row_simple_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/facebook/av;->row_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/ui/menu/q;->b:Landroid/view/View;

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/f;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/q;

    .line 22
    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->c()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, v0, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_1
    if-eqz p2, :cond_3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    sget v2, Lcom/facebook/au;->dialog_row_single:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    :goto_2
    iget-object v2, v0, Lcom/instagram/ui/menu/q;->b:Landroid/view/View;

    if-eqz p3, :cond_5

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v2, v0, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 39
    :cond_2
    sget v2, Lcom/facebook/au;->dialog_row_top:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 41
    :cond_3
    if-eqz p3, :cond_4

    .line 42
    sget v2, Lcom/facebook/au;->dialog_row_bottom:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 44
    :cond_4
    sget v2, Lcom/facebook/au;->bg_simple_row:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 50
    goto :goto_3
.end method
