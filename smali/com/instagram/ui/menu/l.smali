.class public final Lcom/instagram/ui/menu/l;
.super Ljava/lang/Object;
.source "SimpleCheckRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 23
    new-instance v1, Lcom/instagram/ui/menu/c;

    invoke-direct {v1, p0}, Lcom/instagram/ui/menu/c;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v2, Lcom/instagram/ui/menu/m;

    invoke-direct {v2}, Lcom/instagram/ui/menu/m;-><init>()V

    .line 25
    iput-object v1, v2, Lcom/instagram/ui/menu/m;->a:Lcom/instagram/ui/menu/c;

    .line 26
    sget v0, Lcom/facebook/av;->row_simple_text_textview:I

    invoke-virtual {v1, v0}, Lcom/instagram/ui/menu/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/ui/menu/m;->b:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v1, v2}, Lcom/instagram/ui/menu/c;->setTag(Ljava/lang/Object;)V

    .line 28
    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/m;

    .line 16
    iget-object v1, v0, Lcom/instagram/ui/menu/m;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/b;->c()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 17
    iget-object v1, v0, Lcom/instagram/ui/menu/m;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, v0, Lcom/instagram/ui/menu/m;->a:Lcom/instagram/ui/menu/c;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/menu/c;->setChecked(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/instagram/ui/menu/b;->d()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method
