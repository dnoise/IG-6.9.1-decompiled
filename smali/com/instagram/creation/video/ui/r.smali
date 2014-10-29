.class public final Lcom/instagram/creation/video/ui/r;
.super Landroid/widget/PopupWindow;
.source "TooltipPopup.java"


# instance fields
.field private a:Lcom/instagram/creation/video/ui/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 48
    invoke-static {p1, p2}, Lcom/instagram/creation/video/ui/r;->a(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 52
    iput-object p2, p0, Lcom/instagram/creation/video/ui/r;->a:Lcom/instagram/creation/video/ui/s;

    .line 53
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 56
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->tooltip_popup_window:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/facebook/av;->tooltip_popup_window_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->a(Lcom/instagram/creation/video/ui/s;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    sget v0, Lcom/facebook/av;->tooltip_bold_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->b(Lcom/instagram/creation/video/ui/s;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->b(Lcom/instagram/creation/video/ui/s;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :goto_0
    sget v0, Lcom/facebook/av;->tooltip_plain_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->c(Lcom/instagram/creation/video/ui/s;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->c(Lcom/instagram/creation/video/ui/s;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_1
    return-object v1

    .line 64
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/instagram/creation/video/ui/s;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/creation/video/ui/r;->a:Lcom/instagram/creation/video/ui/s;

    return-object v0
.end method
