.class public Lcom/instagram/android/feed/ui/StickyHeaderListView;
.super Landroid/widget/FrameLayout;
.source "StickyHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static k:Ljava/lang/Boolean;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/widget/ListView;

.field protected d:Lcom/instagram/android/feed/ui/d;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:I

.field protected i:Ljava/lang/Object;

.field protected j:I

.field private l:Lcom/instagram/base/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I

    .line 124
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 265
    if-eqz p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/instagram/ui/a/b;->a(Landroid/view/View;I)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContentPosition()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/instagram/ui/a/b;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x140

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;

    .line 94
    :cond_0
    sget-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 250
    iget v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;

    iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    invoke-interface {v1, p1}, Lcom/instagram/android/feed/ui/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    invoke-interface {v0, p1, v1, p0}, Lcom/instagram/android/feed/ui/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    if-lez v0, :cond_0

    .line 331
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 337
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    return-object v0

    .line 333
    :cond_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v1

    .line 311
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getAdjustedTopChildView()Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;

    if-ne v0, v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 291
    if-eqz p2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v2

    .line 300
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContentPosition()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 299
    :goto_2
    if-eqz v3, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    move v3, v1

    .line 298
    goto :goto_2

    .line 299
    :cond_4
    const/4 v0, 0x4

    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a:Z

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d()V

    .line 356
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b:Z

    .line 357
    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/content/Context;)Lcom/instagram/base/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->l:Lcom/instagram/base/b/b;

    .line 358
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 363
    :goto_0
    if-ge v1, v3, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    instance-of v4, v0, Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 366
    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V

    .line 363
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;

    .line 372
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x30

    invoke-direct {v0, v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 374
    iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    iput-boolean v5, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a:Z

    .line 378
    return-void
.end method

.method private getAdjustedHeaderItemPosition()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I

    sub-int/2addr v2, v3

    .line 223
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContentPosition()F

    move-result v3

    float-to-int v3, v3

    .line 228
    iget-object v4, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_0

    iget-object v4, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_0

    :goto_0
    add-int/2addr v0, v2

    .line 230
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method private getAdjustedTopChildView()Landroid/view/View;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I

    sub-int/2addr v0, v1

    .line 239
    iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getAdjustedHeaderItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContentPosition()F
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->l:Lcom/instagram/base/b/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->l:Lcom/instagram/base/b/b;

    invoke-virtual {v0}, Lcom/instagram/base/b/b;->b()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 159
    iget-object v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    iput v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I

    .line 160
    iget v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I

    if-lez v3, :cond_2

    .line 162
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 164
    :cond_2
    check-cast v0, Lcom/instagram/android/feed/ui/d;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->setAdapter(Lcom/instagram/android/feed/ui/d;)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getAdjustedHeaderItemPosition()I

    move-result v3

    .line 171
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    invoke-interface {v0, v3}, Lcom/instagram/android/feed/ui/d;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 174
    invoke-direct {p0, v3}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_a

    .line 175
    :cond_4
    iget-object v5, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    invoke-interface {v0, v3}, Lcom/instagram/android/feed/ui/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    if-eq v5, v0, :cond_9

    .line 180
    invoke-virtual {p0, v5}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->removeView(Landroid/view/View;)V

    move v0, v1

    .line 184
    :goto_2
    iput v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I

    .line 185
    iput-object v4, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;

    .line 190
    :goto_3
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getAdjustedTopChildView()Landroid/view/View;

    move-result-object v3

    .line 191
    if-eqz v3, :cond_5

    .line 192
    iget-object v4, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContentPosition()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 195
    :goto_4
    invoke-direct {p0, v3, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(Landroid/view/View;Z)V

    .line 196
    invoke-direct {p0, v3, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b(Landroid/view/View;Z)V

    .line 199
    :cond_5
    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->addView(Landroid/view/View;)V

    .line 203
    :cond_6
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b()V

    goto/16 :goto_0

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;

    goto :goto_1

    :cond_8
    move v1, v2

    .line 192
    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 349
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c()V

    .line 350
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 343
    invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c()V

    .line 344
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(Z)V

    .line 149
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public setAdapter(Lcom/instagram/android/feed/ui/d;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;

    .line 105
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "lv"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;

    .line 114
    return-void
.end method
