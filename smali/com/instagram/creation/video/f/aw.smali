.class abstract Lcom/instagram/creation/video/f/aw;
.super Lcom/instagram/base/a/b;
.source "VideoEditFragment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final Y()Lcom/instagram/creation/b/a/b;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/aw;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/creation/video/f/av;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/aw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_mode_filter:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    if-ne p1, v1, :cond_0

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/aw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_mode_trim:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/aw;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-ne p1, v1, :cond_1

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/aw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_mode_cover:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    if-ne p1, v1, :cond_3

    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 119
    :goto_2
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 70
    new-instance v1, Lcom/instagram/creation/video/f/ax;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/ax;-><init>(Lcom/instagram/creation/video/f/aw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 89
    new-instance v1, Lcom/instagram/creation/video/f/ay;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/ay;-><init>(Lcom/instagram/creation/video/f/aw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 99
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 110
    new-instance v1, Lcom/instagram/creation/video/f/az;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/az;-><init>(Lcom/instagram/creation/video/f/aw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method abstract b()V
.end method

.method abstract c(Landroid/os/Bundle;)V
.end method
