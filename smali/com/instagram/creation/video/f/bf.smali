.class public abstract Lcom/instagram/creation/video/f/bf;
.super Lcom/instagram/base/a/b;
.source "VideoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    new-instance v1, Lcom/instagram/creation/video/f/bg;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bg;-><init>(Lcom/instagram/creation/video/f/bf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    sget v0, Lcom/facebook/av;->action_bar_button_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/instagram/creation/video/f/bh;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bh;-><init>(Lcom/instagram/creation/video/f/bf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract V()Ljava/lang/String;
.end method

.method protected final W()Lcom/instagram/creation/b/a/b;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->a(Landroid/view/View;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->b(Landroid/view/View;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->c(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
