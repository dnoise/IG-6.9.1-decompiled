.class public Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
.super Landroid/widget/HorizontalScrollView;
.source "EffectPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/instagram/cliffjumper/edit/common/ui/f;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 27
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 32
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 37
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V

    .line 38
    return-void
.end method

.method private a(Landroid/view/ViewGroup;[Lcom/instagram/cliffjumper/edit/common/ui/c;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 100
    new-instance v3, Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v4, p2, v0

    sget v5, Lcom/instagram/cliffjumper/edit/common/ui/k;->d:I

    invoke-direct {v3, v2, v4, v5}, Lcom/instagram/cliffjumper/edit/common/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/common/ui/c;I)V

    .line 102
    invoke-virtual {v3, p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setId(I)V

    .line 104
    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I

    iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I

    invoke-virtual {v3, v2, v1, v4, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPadding(IIII)V

    .line 105
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a(Z)V

    .line 107
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;

    invoke-interface {v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/f;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 105
    goto :goto_1

    .line 113
    :cond_1
    return-void
.end method

.method private a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    .line 123
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    .line 124
    if-lez v0, :cond_1

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 130
    invoke-virtual {p0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 131
    sub-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 135
    invoke-virtual {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->smoothScrollBy(II)V

    .line 137
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;

    invoke-interface {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/ui/f;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;ZI)V

    .line 140
    :cond_0
    return-void

    .line 124
    :cond_1
    if-gez v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setHorizontalFadingEdgeEnabled(Z)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setHorizontalScrollBarEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->effect_tile_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I

    .line 60
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    sget v1, Lcom/instagram/creation/base/ui/c;->d:I

    if-ne v0, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I

    .line 64
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 70
    new-instance v1, Lcom/instagram/cliffjumper/edit/common/ui/d;

    invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/d;-><init>(Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;I)V

    invoke-virtual {p0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method private setRestoreScrollPosition(I)V
    .locals 0
    .parameter "scrollX"

    .prologue
    .line 164
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    .line 165
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/g;

    .end local p1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V

    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c()V

    .line 48
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    .end local p1
    :goto_0
    return-void

    .line 158
    .restart local p1
    :cond_0
    check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;

    .line 159
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 160
    iget v0, p1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setRestoreScrollPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 146
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I

    move-result v0

    iput v0, v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->a:I

    .line 147
    return-object v1
.end method

.method public setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V
    .locals 2
    .parameter "effectInfos"

    .prologue
    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/av;->filter_tile_group:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 82
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Landroid/view/ViewGroup;[Lcom/instagram/cliffjumper/edit/common/ui/c;)V

    .line 86
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c()V

    .line 92
    :cond_0
    return-void
.end method

.method public setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;

    .line 52
    return-void
.end method
