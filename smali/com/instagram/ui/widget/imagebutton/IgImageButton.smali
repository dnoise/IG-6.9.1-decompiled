.class public Lcom/instagram/ui/widget/imagebutton/IgImageButton;
.super Landroid/widget/FrameLayout;
.source "IgImageButton.java"


# instance fields
.field private final a:Lcom/instagram/ui/widget/imagebutton/b;

.field private b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/animation/AlphaAnimation;

.field private f:Lcom/instagram/common/ui/a/a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Lcom/instagram/ui/widget/imagebutton/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/ui/widget/imagebutton/b;-><init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;B)V

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->a:Lcom/instagram/ui/widget/imagebutton/b;

    .line 36
    iput-boolean v2, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->g:Z

    .line 48
    invoke-virtual {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_imagebutton:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    invoke-direct {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->d()V

    .line 52
    sget v0, Lcom/facebook/av;->image_button_image_view:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    .line 53
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    new-instance v1, Lcom/instagram/ui/widget/imagebutton/a;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/imagebutton/a;-><init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    sget v0, Lcom/facebook/au;->grid_camera_icon:I

    .line 94
    sget v0, Lcom/facebook/av;->touch_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    .line 95
    sget v0, Lcom/facebook/av;->video_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->d:Landroid/view/View;

    .line 96
    invoke-direct {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b()V

    .line 97
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 132
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->f:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->a:Lcom/instagram/ui/widget/imagebutton/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->f:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->b(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->f:Lcom/instagram/common/ui/a/a;

    .line 145
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->e:Landroid/view/animation/AlphaAnimation;

    .line 146
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->e:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 147
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->e:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 148
    return-void
.end method

.method static synthetic d(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->a()V

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    return-object v0
.end method

.method public getVideoOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->d:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 111
    invoke-virtual {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 124
    return-void
.end method

.method public setEnableTouchOverlay(Z)V
    .locals 0
    .parameter "enableTouchOverlay"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->g:Z

    .line 128
    return-void
.end method
