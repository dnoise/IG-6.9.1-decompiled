.class public final Lcom/instagram/base/b/b;
.super Ljava/lang/Object;
.source "ScrollableNavigationHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static a:Ljava/lang/Boolean;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:Lcom/instagram/base/b/c;

.field private e:Lcom/instagram/base/b/d;

.field private f:[Landroid/view/View;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/base/b/b;->b:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/instagram/base/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/base/b/c;-><init>(Lcom/instagram/base/b/b;B)V

    iput-object v0, p0, Lcom/instagram/base/b/b;->d:Lcom/instagram/base/b/c;

    .line 91
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/base/b/b;->c:I

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/instagram/base/b/b;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/instagram/base/b/b;->c:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/instagram/base/b/b;
    .locals 2
    .parameter

    .prologue
    .line 109
    check-cast p0, Landroid/support/v4/app/k;

    invoke-virtual {p0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/instagram/base/b/a;

    invoke-interface {v0}, Lcom/instagram/base/b/a;->at()Lcom/instagram/base/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(F)V
    .locals 4
    .parameter

    .prologue
    .line 263
    iget v0, p0, Lcom/instagram/base/b/b;->h:F

    .line 264
    const/4 v1, 0x0

    iget v2, p0, Lcom/instagram/base/b/b;->g:F

    iget v3, p0, Lcom/instagram/base/b/b;->h:F

    add-float/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/instagram/base/b/b;->h:F

    .line 265
    iget v1, p0, Lcom/instagram/base/b/b;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/instagram/base/b/b;->h:F

    invoke-static {v1, v2}, Lcom/instagram/base/b/b;->a(Landroid/view/View;F)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/instagram/base/b/b;->e:Lcom/instagram/base/b/d;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/instagram/base/b/b;->e:Lcom/instagram/base/b/d;

    iget v1, p0, Lcom/instagram/base/b/b;->h:F

    invoke-interface {v0, v1}, Lcom/instagram/base/b/d;->a(F)V

    .line 273
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 276
    neg-float v0, p1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/instagram/ui/a/b;->a(Landroid/view/View;I)V

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->r()Landroid/support/v4/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/instagram/base/b/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/instagram/m/c;->f:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/base/b/b;->a:Ljava/lang/Boolean;

    .line 105
    :cond_1
    sget-object v0, Lcom/instagram/base/b/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/instagram/base/b/a;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/instagram/base/b/b;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/base/b/b;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget v0, p0, Lcom/instagram/base/b/b;->h:F

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/base/b/b;->a(F)V

    .line 186
    iget-object v0, p0, Lcom/instagram/base/b/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 187
    iput-object v1, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    .line 188
    return-void
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iput v1, p0, Lcom/instagram/base/b/b;->i:I

    .line 150
    iput v1, p0, Lcom/instagram/base/b/b;->j:I

    .line 151
    iput v1, p0, Lcom/instagram/base/b/b;->k:I

    .line 161
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget v0, p0, Lcom/instagram/base/b/b;->g:F

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/base/b/b;->a(F)V

    .line 173
    :cond_0
    :goto_1
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/instagram/base/b/b;->i:I

    .line 154
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/base/b/b;->j:I

    .line 155
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/instagram/base/b/b;->k:I

    .line 156
    invoke-virtual {p0, p1, v1}, Lcom/instagram/base/b/b;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/base/b/b;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method public final a(Landroid/widget/ListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    return-void
.end method

.method public final varargs a(Lcom/instagram/base/b/d;F[Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p3, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    .line 177
    iput-object p1, p0, Lcom/instagram/base/b/b;->e:Lcom/instagram/base/b/d;

    .line 179
    iput p2, p0, Lcom/instagram/base/b/b;->g:F

    .line 180
    return-void
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/instagram/base/b/b;->g:F

    iget v1, p0, Lcom/instagram/base/b/b;->h:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v1, v0

    .line 234
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 237
    iget v0, p0, Lcom/instagram/base/b/b;->j:I

    if-le p2, v0, :cond_1

    .line 243
    iget v0, p0, Lcom/instagram/base/b/b;->i:I

    iget v3, p0, Lcom/instagram/base/b/b;->k:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/instagram/base/b/b;->a(F)V

    .line 257
    :cond_0
    iput v2, p0, Lcom/instagram/base/b/b;->i:I

    .line 258
    iput p2, p0, Lcom/instagram/base/b/b;->j:I

    .line 259
    iput v1, p0, Lcom/instagram/base/b/b;->k:I

    .line 260
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lcom/instagram/base/b/b;->j:I

    if-ge p2, v0, :cond_2

    .line 246
    sub-int v0, v2, v1

    iget v3, p0, Lcom/instagram/base/b/b;->k:I

    add-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    .line 250
    :cond_2
    iget v0, p0, Lcom/instagram/base/b/b;->k:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 210
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/instagram/base/b/b;->f:[Landroid/view/View;

    if-nez v0, :cond_1

    .line 225
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/base/b/b;->b()F

    move-result v0

    iget v1, p0, Lcom/instagram/base/b/b;->g:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 217
    :goto_1
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/instagram/base/b/b;->g:F

    .line 219
    :goto_2
    invoke-virtual {p0}, Lcom/instagram/base/b/b;->b()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/instagram/base/b/b;->d:Lcom/instagram/base/b/c;

    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {v2, v0, v1, p1}, Lcom/instagram/base/b/c;->a(FZLandroid/widget/ListView;)V

    .line 224
    iget-object v0, p0, Lcom/instagram/base/b/b;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/base/b/b;->d:Lcom/instagram/base/b/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 216
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter "event"

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/instagram/base/b/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
