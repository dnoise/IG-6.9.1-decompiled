.class public final Lcom/instagram/android/maps/ui/b;
.super Landroid/widget/LinearLayout;
.source "IgGeneratePhotoLayout.java"


# instance fields
.field public a:Lcom/instagram/android/maps/ui/d;

.field public b:Lcom/instagram/android/maps/ui/f;

.field private c:I

.field private d:I

.field private e:F

.field private f:Lcom/instagram/android/maps/ui/e;

.field private g:Lcom/instagram/android/maps/ui/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/b;->b()V

    .line 37
    return-void
.end method

.method private static a(Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/facebook/as;->iosblue:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setBackgroundResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/instagram/android/maps/ui/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/ui/c;-><init>(Lcom/instagram/android/maps/ui/b;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setLayoutListener(Lcom/instagram/android/maps/ui/g;)V

    .line 81
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 139
    invoke-virtual {p0, v1}, Lcom/instagram/android/maps/ui/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    .line 141
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    add-int/2addr v6, v3

    move v3, v2

    .line 142
    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v8, v4

    .line 145
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v6

    .line 146
    new-instance v10, Lcom/instagram/android/maps/ui/h;

    invoke-static {v0, v7}, Lcom/instagram/android/maps/ui/b;->a(Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result v11

    invoke-direct {v10, p0, v8, v9, v11}, Lcom/instagram/android/maps/ui/h;-><init>(Lcom/instagram/android/maps/ui/b;IIZ)V

    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 153
    if-nez v3, :cond_2

    .line 154
    iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->a:Lcom/instagram/android/maps/ui/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setReverseAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V

    .line 155
    iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->b:Lcom/instagram/android/maps/ui/f;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V

    .line 156
    iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->f:Lcom/instagram/android/maps/ui/e;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    .line 158
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/maps/ui/h;

    .line 160
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    iget v4, v1, Lcom/instagram/android/maps/ui/h;->a:I

    iget v8, v1, Lcom/instagram/android/maps/ui/h;->b:I

    invoke-virtual {v7, v4, v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    const/16 v4, 0x33

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget v4, p0, Lcom/instagram/android/maps/ui/b;->c:I

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setOriginalSize(I)V

    .line 165
    iget v4, p0, Lcom/instagram/android/maps/ui/b;->d:I

    iget v8, v1, Lcom/instagram/android/maps/ui/h;->a:I

    sub-int/2addr v4, v8

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setStartX(I)V

    .line 166
    iget v4, p0, Lcom/instagram/android/maps/ui/b;->e:F

    iget v8, v1, Lcom/instagram/android/maps/ui/h;->b:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setStartY(F)V

    .line 167
    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a()V

    .line 169
    iget-boolean v4, v1, Lcom/instagram/android/maps/ui/h;->c:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_3
    invoke-virtual {p1, v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "View "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/instagram/android/maps/ui/h;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/instagram/android/maps/ui/h;->b:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v3, v0

    .line 172
    goto/16 :goto_2

    :cond_3
    move v4, v2

    .line 169
    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->forceLayout()V

    .line 175
    return-void
.end method

.method public final getParentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final onAnimationStart()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationStart()V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setVisibility(I)V

    .line 91
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 63
    iget-object v0, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;

    invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/g;->a(Lcom/instagram/android/maps/ui/b;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 55
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setVisibility(I)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 57
    return-void
.end method

.method public final setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V
    .locals 0
    .parameter "animationStartListener"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->b:Lcom/instagram/android/maps/ui/f;

    .line 95
    return-void
.end method

.method public final setLayoutListener(Lcom/instagram/android/maps/ui/g;)V
    .locals 0
    .parameter "layoutListener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;

    .line 70
    return-void
.end method

.method public final setOriginalSize(I)V
    .locals 0
    .parameter "originalSize"

    .prologue
    .line 113
    iput p1, p0, Lcom/instagram/android/maps/ui/b;->c:I

    .line 114
    return-void
.end method

.method public final setReverAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
    .locals 0
    .parameter "reverAnimationFinishListener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->a:Lcom/instagram/android/maps/ui/d;

    .line 127
    return-void
.end method

.method public final setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
    .locals 0
    .parameter "reverseAnimationPreFinishListener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->f:Lcom/instagram/android/maps/ui/e;

    .line 132
    return-void
.end method

.method public final setStartX(I)V
    .locals 0
    .parameter "startX"

    .prologue
    .line 117
    iput p1, p0, Lcom/instagram/android/maps/ui/b;->d:I

    .line 118
    return-void
.end method

.method public final setStartY(F)V
    .locals 0
    .parameter "startY"

    .prologue
    .line 121
    iput p1, p0, Lcom/instagram/android/maps/ui/b;->e:F

    .line 122
    return-void
.end method
