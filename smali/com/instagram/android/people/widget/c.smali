.class public final Lcom/instagram/android/people/widget/c;
.super Landroid/view/ViewGroup;
.source "PeopleTagView.java"


# static fields
.field protected static final a:I

.field protected static final b:I

.field protected static final c:I

.field protected static final d:I

.field protected static final e:I

.field protected static final f:I

.field protected static final g:I

.field protected static final h:I

.field protected static final i:I

.field protected static final j:I


# instance fields
.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Landroid/widget/ImageView;

.field protected n:Landroid/widget/ImageView;

.field private o:Z

.field private p:I

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:Z

.field private u:Landroid/graphics/PointF;

.field private v:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x7

    .line 35
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->a:I

    .line 36
    invoke-static {v1}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->b:I

    .line 37
    invoke-static {v1}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->c:I

    .line 38
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->d:I

    .line 39
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->e:I

    .line 41
    invoke-static {v2}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->f:I

    .line 42
    invoke-static {v2}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->g:I

    .line 43
    sget v0, Lcom/instagram/android/people/widget/c;->f:I

    sget v1, Lcom/instagram/android/people/widget/c;->g:I

    add-int/2addr v0, v1

    sput v0, Lcom/instagram/android/people/widget/c;->h:I

    .line 47
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->i:I

    .line 48
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/c;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z

    .line 51
    iput v1, p0, Lcom/instagram/android/people/widget/c;->p:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    .line 62
    iput-boolean v1, p0, Lcom/instagram/android/people/widget/c;->t:Z

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    .line 81
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->e()V

    .line 82
    return-void
.end method

.method private a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .parameter

    .prologue
    .line 478
    iget v0, p1, Landroid/graphics/PointF;->x:F

    sget v1, Lcom/instagram/android/people/widget/c;->i:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 479
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/c;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 480
    iget v0, p1, Landroid/graphics/PointF;->y:F

    sget v1, Lcom/instagram/android/people/widget/c;->j:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 481
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredHeight()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/c;->j:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 482
    return-object p1
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/instagram/android/people/widget/c;->p:I

    .line 211
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 213
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 214
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPosition(Landroid/graphics/PointF;)V

    goto :goto_0
.end method

.method private static e(I)I
    .locals 2
    .parameter

    .prologue
    .line 383
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 85
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->f()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    .line 89
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->g()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    .line 90
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->h()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    .line 91
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->i()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method private f()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    sget v1, Lcom/facebook/au;->tag_bubble_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    sget v1, Lcom/instagram/android/people/widget/c;->h:I

    sget v2, Lcom/instagram/android/people/widget/c;->h:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    const/4 v1, 0x2

    const/high16 v2, 0x4160

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    sget v1, Lcom/instagram/android/people/widget/c;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 109
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    return-object v0
.end method

.method private g()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
    sget v1, Lcom/facebook/au;->carrot_up_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    return-object v0
.end method

.method private h()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    sget v1, Lcom/facebook/au;->carrot_down_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    return-object v0
.end method

.method private i()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    sget v1, Lcom/facebook/au;->tag_close_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowYPosition()I

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v2, v3

    .line 262
    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 264
    sget v4, Lcom/instagram/android/people/widget/c;->b:I

    sub-int v4, v1, v4

    sget v5, Lcom/instagram/android/people/widget/c;->a:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/instagram/android/people/widget/c;->p:I

    if-le v4, v5, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->l()V

    .line 267
    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    sub-int v5, v0, v3

    sget v6, Lcom/instagram/android/people/widget/c;->c:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v3, v0

    sget v7, Lcom/instagram/android/people/widget/c;->c:I

    add-int/2addr v1, v7

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 274
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sget v5, Lcom/instagram/android/people/widget/c;->a:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v2

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sget v6, Lcom/instagram/android/people/widget/c;->a:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sget v3, Lcom/instagram/android/people/widget/c;->i:I

    add-int/2addr v1, v3

    sget v3, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    sget v4, Lcom/instagram/android/people/widget/c;->i:I

    sub-int/2addr v2, v4

    sget v4, Lcom/instagram/android/people/widget/c;->f:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->k()V

    .line 281
    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    sub-int v5, v0, v3

    sget v6, Lcom/instagram/android/people/widget/c;->b:I

    sub-int v6, v1, v6

    add-int/2addr v3, v0

    sget v7, Lcom/instagram/android/people/widget/c;->b:I

    sub-int/2addr v1, v7

    iget-object v7, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 287
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sget v5, Lcom/instagram/android/people/widget/c;->a:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v2

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sget v6, Lcom/instagram/android/people/widget/c;->a:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->b(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 309
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 314
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/instagram/android/people/widget/c;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/instagram/android/people/widget/c;->d:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/instagram/android/people/widget/c;->d:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/instagram/android/people/widget/c;->d:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method final a(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->setAnimation(Landroid/view/animation/Animation;)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z

    .line 349
    return-void
.end method

.method public final a(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 358
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    .line 359
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 360
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 362
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 363
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    const/4 v1, 0x1

    .line 368
    :cond_0
    return v1

    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final b(I)I
    .locals 3
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/c;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 335
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method final b(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z

    .line 354
    return-void
.end method

.method protected final b(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 375
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method final c(I)V
    .locals 5
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 424
    sget v1, Lcom/instagram/android/people/widget/c;->f:I

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I

    move-result v2

    sget v3, Lcom/instagram/android/people/widget/c;->i:I

    sub-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/c;->f:I

    add-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    sget v2, Lcom/instagram/android/people/widget/c;->f:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z

    return v0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getAbsoluteTagPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected final getArrowXPosition()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    return v0
.end method

.method protected final getArrowYPosition()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    return v0
.end method

.method final getBubbleWidth()I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method final getDrawingBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method final getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    sget v0, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final getNormalizedPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    return-object v0
.end method

.method final getPreferredBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getTaggedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 184
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/c;->setMeasuredDimension(II)V

    .line 193
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I

    move-result v0

    .line 194
    iget v1, p0, Lcom/instagram/android/people/widget/c;->p:I

    if-eq v1, v0, :cond_1

    .line 195
    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/c;->d(I)V

    .line 197
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/instagram/android/people/widget/c;->a(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 139
    iput-boolean v2, p0, Lcom/instagram/android/people/widget/c;->t:Z

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 147
    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0, p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/android/people/widget/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->bringToFront()V

    .line 150
    check-cast v1, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->invalidate()V

    :cond_1
    :goto_1
    move v0, v2

    .line 168
    :cond_2
    :goto_2
    return v0

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 141
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->t:Z

    .line 142
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 154
    invoke-virtual {p0, v2}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V

    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->performClick()Z

    goto :goto_1

    .line 161
    :cond_6
    iget-boolean v1, p0, Lcom/instagram/android/people/widget/c;->t:Z

    if-eqz v1, :cond_2

    .line 162
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V

    .line 164
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->t:Z

    move v0, v2

    .line 165
    goto :goto_2
.end method

.method public final performClick()Z
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PeopleTag.BROADCAST_TAG_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v1, "PeopleTag.INTENT_EXTRA_USER_ID"

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getTaggedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "PeopleTag.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 178
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setMediaId(Ljava/lang/String;)V
    .locals 1
    .parameter "mediaId"

    .prologue
    .line 470
    sget v0, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/people/widget/c;->setTag(ILjava/lang/Object;)V

    .line 471
    return-void
.end method

.method public final setNormalizedPosition(Landroid/graphics/PointF;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    .line 201
    return-void
.end method

.method public final setPosition(Landroid/graphics/PointF;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/c;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 244
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/instagram/android/people/widget/c;->p:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 248
    invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->j()V

    .line 249
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->c(I)V

    .line 250
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 221
    iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v0, v1

    .line 222
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 223
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    sget v3, Lcom/instagram/android/people/widget/c;->i:I

    add-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/c;->f:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    sget v4, Lcom/instagram/android/people/widget/c;->i:I

    sub-int/2addr v0, v4

    sget v4, Lcom/instagram/android/people/widget/c;->f:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    return-void
.end method
