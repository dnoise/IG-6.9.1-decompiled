.class public Lcom/instagram/android/widget/ProfileMapButton;
.super Landroid/widget/ImageView;
.source "ProfileMapButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 36
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUser(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter "user"

    .prologue
    const/16 v1, 0x80

    const/4 v2, 0x1

    .line 40
    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->invalidate()V

    .line 57
    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V

    goto :goto_0
.end method
