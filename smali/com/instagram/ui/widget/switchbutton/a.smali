.class final Lcom/instagram/ui/widget/switchbutton/a;
.super Landroid/view/animation/Animation;
.source "IgSwitch.java"


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/switchbutton/IgSwitch;

.field private final b:F

.field private final c:F


# direct methods
.method private constructor <init>(Lcom/instagram/ui/widget/switchbutton/IgSwitch;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/instagram/ui/widget/switchbutton/a;->a:Lcom/instagram/ui/widget/switchbutton/IgSwitch;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 302
    iput p2, p0, Lcom/instagram/ui/widget/switchbutton/a;->b:F

    .line 303
    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/a;->b:F

    sub-float v0, p3, v0

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/a;->c:F

    .line 304
    const/high16 v0, 0x437a

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/a;->c:F

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/switchbutton/a;->setDuration(J)V

    .line 305
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/switchbutton/a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/ui/widget/switchbutton/IgSwitch;FFB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/switchbutton/a;-><init>(Lcom/instagram/ui/widget/switchbutton/IgSwitch;FF)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/a;->a:Lcom/instagram/ui/widget/switchbutton/IgSwitch;

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/a;->b:F

    iget v2, p0, Lcom/instagram/ui/widget/switchbutton/a;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;F)F

    .line 311
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/a;->a:Lcom/instagram/ui/widget/switchbutton/IgSwitch;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->invalidate()V

    .line 312
    return-void
.end method
