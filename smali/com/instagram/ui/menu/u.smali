.class public final Lcom/instagram/ui/menu/u;
.super Ljava/lang/Object;
.source "SimpleSwitchRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_switch_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/instagram/ui/menu/x;

    invoke-direct {v2}, Lcom/instagram/ui/menu/x;-><init>()V

    .line 38
    sget v0, Lcom/facebook/av;->row_simple_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/ui/menu/x;->a:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/facebook/av;->row_menu_item_switch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, v2, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/instagram/ui/menu/w;

    invoke-direct {v0, v2}, Lcom/instagram/ui/menu/w;-><init>(Lcom/instagram/ui/menu/x;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/aa;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/x;

    .line 18
    invoke-virtual {p1}, Lcom/instagram/ui/menu/aa;->b()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, v0, Lcom/instagram/ui/menu/x;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/aa;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_0
    iget-object v1, v0, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    iget-object v2, v0, Lcom/instagram/ui/menu/x;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    iget-object v1, v0, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/aa;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 26
    iget-object v0, v0, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/ui/menu/v;

    invoke-direct {v1, p1}, Lcom/instagram/ui/menu/v;-><init>(Lcom/instagram/ui/menu/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    return-void

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/instagram/ui/menu/x;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/aa;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
