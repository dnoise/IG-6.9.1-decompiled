.class public Lcom/instagram/ui/widget/triangleshape/TriangleShape;
.super Landroid/view/View;
.source "TriangleShape.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:[I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a(Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p2}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->TriangleShape:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    sget v1, Lcom/facebook/bb;->TriangleShape_fillColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->b:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->c:[I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->d:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    .line 55
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->getHeight()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->getBottom()I

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->c:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 72
    iget-object v2, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 74
    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 75
    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    sub-int v4, v2, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    add-int v4, v2, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v3, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    int-to-float v2, v2

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 80
    iget-object v0, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public setNotchCenterXOn(Landroid/view/View;)V
    .locals 0
    .parameter "notchCenterXOn"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->a:Landroid/view/View;

    .line 60
    return-void
.end method
