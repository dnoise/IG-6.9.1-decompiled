.class public Lcom/instagram/android/creation/widget/ShareTableButton;
.super Landroid/widget/CompoundButton;
.source "ShareTableButton.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->b:Z

    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->refreshDrawableState()V

    .line 71
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->b:Z

    if-eqz v1, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 42
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setClickable(Z)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method
