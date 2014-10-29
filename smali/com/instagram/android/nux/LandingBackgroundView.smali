.class public Lcom/instagram/android/nux/LandingBackgroundView;
.super Landroid/view/View;
.source "LandingBackgroundView.java"


# instance fields
.field private final a:Lcom/instagram/android/nux/m;

.field private final b:Lcom/instagram/android/nux/m;

.field private final c:Lcom/instagram/android/nux/m;

.field private final d:Lcom/instagram/android/nux/m;

.field private final e:Lcom/instagram/android/nux/m;

.field private final f:Lcom/instagram/android/nux/m;

.field private final g:[Lcom/instagram/android/nux/m;

.field private final h:[Lcom/instagram/android/nux/m;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/nux/l;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_small:I

    const/16 v2, 0x140

    const/16 v3, 0x239

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    .line 64
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_medium:I

    const/16 v2, 0x1e0

    const/16 v3, 0x354

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    .line 69
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_large:I

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    .line 74
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_small:I

    const/16 v2, 0x12c

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    .line 79
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_medium:I

    const/16 v2, 0x1f4

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    .line 84
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_large:I

    const/16 v2, 0x294

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    .line 89
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->g:[Lcom/instagram/android/nux/m;

    .line 92
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->h:[Lcom/instagram/android/nux/m;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->j:Landroid/graphics/Paint;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_small:I

    const/16 v2, 0x140

    const/16 v3, 0x239

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    .line 64
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_medium:I

    const/16 v2, 0x1e0

    const/16 v3, 0x354

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    .line 69
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_large:I

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    .line 74
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_small:I

    const/16 v2, 0x12c

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    .line 79
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_medium:I

    const/16 v2, 0x1f4

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    .line 84
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_large:I

    const/16 v2, 0x294

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    .line 89
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->g:[Lcom/instagram/android/nux/m;

    .line 92
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->h:[Lcom/instagram/android/nux/m;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->j:Landroid/graphics/Paint;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_small:I

    const/16 v2, 0x140

    const/16 v3, 0x239

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    .line 64
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_medium:I

    const/16 v2, 0x1e0

    const/16 v3, 0x354

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    .line 69
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_background_large:I

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    .line 74
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_small:I

    const/16 v2, 0x12c

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    .line 79
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_medium:I

    const/16 v2, 0x1f4

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    .line 84
    new-instance v0, Lcom/instagram/android/nux/m;

    sget v1, Lcom/facebook/au;->nux_dayone_landing_logo_large:I

    const/16 v2, 0x294

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/nux/m;-><init>(III)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    .line 89
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->a:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->b:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->c:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->g:[Lcom/instagram/android/nux/m;

    .line 92
    new-array v0, v7, [Lcom/instagram/android/nux/m;

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->d:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->e:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->f:Lcom/instagram/android/nux/m;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->h:[Lcom/instagram/android/nux/m;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->j:Landroid/graphics/Paint;

    .line 109
    return-void
.end method

.method private static a(Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/l;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    int-to-float v1, p1

    iget v2, p0, Lcom/instagram/android/nux/m;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 124
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    new-instance v2, Lcom/instagram/android/nux/l;

    new-instance v3, Lcom/instagram/android/nux/m;

    iget v4, p0, Lcom/instagram/android/nux/m;->a:I

    iget v5, p0, Lcom/instagram/android/nux/m;->c:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-direct {v3, v4, p1, v1}, Lcom/instagram/android/nux/m;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lcom/instagram/android/nux/l;-><init>(Lcom/instagram/android/nux/m;Landroid/graphics/Matrix;)V

    return-object v2
.end method

.method private static a([Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 113
    aget-object v1, p0, v0

    iget v1, v1, Lcom/instagram/android/nux/m;->b:I

    if-lt v1, p1, :cond_0

    .line 114
    aget-object v0, p0, v0

    .line 118
    :goto_1
    return-object v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/l;

    .line 132
    iget-object v0, v0, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    invoke-virtual {p0}, Lcom/instagram/android/nux/LandingBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/nux/m;->a(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/instagram/android/nux/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p2, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget-object v0, v0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p2, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget-object v0, v0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    iget-object v1, p2, Lcom/instagram/android/nux/l;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/instagram/android/nux/LandingBackgroundView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 146
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/l;

    .line 138
    iget-object v0, v0, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    invoke-virtual {v0}, Lcom/instagram/android/nux/m;->a()V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 212
    invoke-direct {p0}, Lcom/instagram/android/nux/LandingBackgroundView;->a()V

    .line 213
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 218
    invoke-direct {p0}, Lcom/instagram/android/nux/LandingBackgroundView;->b()V

    .line 219
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/l;

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/nux/LandingBackgroundView;->a(Landroid/graphics/Canvas;Lcom/instagram/android/nux/l;)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 161
    iget-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->g:[Lcom/instagram/android/nux/m;

    invoke-static {v0, p1}, Lcom/instagram/android/nux/LandingBackgroundView;->a([Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/m;

    move-result-object v0

    .line 162
    invoke-static {v0, p1}, Lcom/instagram/android/nux/LandingBackgroundView;->a(Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/l;

    move-result-object v0

    .line 163
    iget-object v1, v0, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget v1, v1, Lcom/instagram/android/nux/m;->c:I

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 166
    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3ee147ae

    mul-float/2addr v1, v2

    .line 169
    int-to-float v2, p2

    iget-object v3, v0, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget v3, v3, Lcom/instagram/android/nux/m;->c:I

    int-to-float v3, v3

    const v4, 0x3f0ccccd

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, p1

    const v4, 0x3f1eb852

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 172
    iget-object v2, v0, Lcom/instagram/android/nux/l;->b:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 175
    int-to-float v2, p1

    const v3, 0x3f23d70a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 176
    iget-object v3, p0, Lcom/instagram/android/nux/LandingBackgroundView;->h:[Lcom/instagram/android/nux/m;

    invoke-static {v3, v2}, Lcom/instagram/android/nux/LandingBackgroundView;->a([Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/m;

    move-result-object v3

    .line 179
    iget v4, v3, Lcom/instagram/android/nux/m;->b:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Lcom/instagram/android/nux/LandingBackgroundView;->a(Lcom/instagram/android/nux/m;I)Lcom/instagram/android/nux/l;

    move-result-object v2

    .line 182
    iget-object v3, v0, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget v3, v3, Lcom/instagram/android/nux/m;->c:I

    int-to-float v3, v3

    const v4, 0x3eca3d71

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 185
    iget-object v3, v2, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget v3, v3, Lcom/instagram/android/nux/m;->b:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 186
    div-float/2addr v1, v5

    iget-object v4, v2, Lcom/instagram/android/nux/l;->a:Lcom/instagram/android/nux/m;

    iget v4, v4, Lcom/instagram/android/nux/m;->c:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 187
    iget-object v4, v2, Lcom/instagram/android/nux/l;->b:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 194
    invoke-direct {p0}, Lcom/instagram/android/nux/LandingBackgroundView;->b()V

    .line 198
    iput-object v1, p0, Lcom/instagram/android/nux/LandingBackgroundView;->i:Ljava/util/List;

    .line 199
    invoke-direct {p0}, Lcom/instagram/android/nux/LandingBackgroundView;->a()V

    .line 200
    return-void
.end method
