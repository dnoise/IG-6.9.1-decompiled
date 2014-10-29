.class public Lcom/instagram/user/follow/ChainingButton;
.super Landroid/widget/ImageButton;
.source "ChainingButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/user/follow/ChainingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/user/follow/ChainingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p1}, Lcom/instagram/user/follow/i;->b(Lcom/instagram/user/c/c;)I

    move-result v0

    .line 31
    invoke-static {p1}, Lcom/instagram/user/follow/i;->a(Lcom/instagram/user/c/c;)I

    move-result v1

    .line 32
    if-eqz p2, :cond_0

    .line 33
    sget v1, Lcom/facebook/au;->rounded_layout_border_fill:I

    .line 34
    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    if-eq v0, v2, :cond_0

    .line 35
    invoke-static {v0}, Lcom/instagram/user/follow/i;->a(I)I

    move-result v0

    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Lcom/instagram/user/follow/ChainingButton;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/instagram/user/follow/ChainingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/instagram/user/follow/ChainingButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 44
    sget v2, Lcom/facebook/au;->rounded_layout_border_fill:I

    if-ne v1, v2, :cond_1

    .line 45
    sget v0, Lcom/facebook/as;->white:I

    .line 46
    invoke-virtual {p0}, Lcom/instagram/user/follow/ChainingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/user/follow/ChainingButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/instagram/user/follow/ChainingButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 53
    :cond_2
    return-void
.end method
