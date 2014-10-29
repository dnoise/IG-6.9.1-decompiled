.class public Lcom/instagram/creation/base/ui/FilterPicker;
.super Landroid/widget/HorizontalScrollView;
.source "FilterPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Lcom/instagram/creation/base/ui/e;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 31
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 36
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 41
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setHorizontalFadingEdgeEnabled(Z)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    .line 70
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    sget v1, Lcom/instagram/creation/base/ui/c;->d:I

    if-ne v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    .line 74
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;[Lcom/instagram/creation/base/ui/h;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 115
    new-instance v2, Lcom/instagram/creation/base/ui/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/instagram/creation/base/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/creation/base/ui/h;)V

    .line 116
    invoke-virtual {v2, p0}, Lcom/instagram/creation/base/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v2, v0}, Lcom/instagram/creation/base/ui/g;->setId(I)V

    .line 118
    iget v3, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    iget v4, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    invoke-virtual {v2, v3, v1, v4, v1}, Lcom/instagram/creation/base/ui/g;->setPadding(IIII)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 80
    new-instance v1, Lcom/instagram/creation/base/ui/d;

    invoke-direct {v1, p0, v0}, Lcom/instagram/creation/base/ui/d;-><init>(Lcom/instagram/creation/base/ui/FilterPicker;I)V

    invoke-virtual {p0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method private setRestoreScrollPosition(I)V
    .locals 0
    .parameter "scrollX"

    .prologue
    .line 174
    iput p1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    .line 175
    return-void
.end method


# virtual methods
.method public getSelectedFilter()Lcom/instagram/creation/base/ui/h;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/ui/g;

    .line 61
    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/ui/g;

    .line 127
    iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/creation/base/ui/e;->a(Lcom/instagram/creation/base/ui/h;)V

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 133
    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getRight()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    .line 135
    if-lez v0, :cond_2

    .line 136
    invoke-virtual {p0, v0, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollBy(II)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    if-gez v1, :cond_1

    .line 138
    invoke-virtual {p0, v1, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    check-cast p1, Lcom/instagram/creation/base/ui/g;

    .line 145
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/creation/base/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;

    invoke-virtual {p1}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;

    .line 150
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->b()V

    .line 52
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 171
    .end local p1
    :goto_0
    return-void

    .line 168
    .restart local p1
    :cond_0
    check-cast p1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    .line 169
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    iget v0, p1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setRestoreScrollPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 156
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I

    move-result v0

    iput v0, v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I

    .line 157
    return-object v1
.end method

.method public setFilterListener(Lcom/instagram/creation/base/ui/e;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;

    .line 56
    return-void
.end method

.method public setFilters([Lcom/instagram/creation/base/ui/h;)V
    .locals 6
    .parameter "filters"

    .prologue
    const/4 v5, -0x1

    .line 89
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    .line 90
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    sget v1, Lcom/facebook/av;->filter_tile_group:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setId(I)V

    .line 91
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 92
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 94
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    iget v2, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    iget v4, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 95
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0, p1}, Lcom/instagram/creation/base/ui/FilterPicker;->a(Landroid/view/ViewGroup;[Lcom/instagram/creation/base/ui/h;)V

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I

    if-eq v0, v5, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->b()V

    .line 107
    :cond_0
    return-void
.end method

.method public setSelectedFilterIndex(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/ui/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/g;->setChecked(Z)V

    .line 111
    return-void
.end method
