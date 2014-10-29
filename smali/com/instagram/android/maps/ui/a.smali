.class final Lcom/instagram/android/maps/ui/a;
.super Landroid/view/animation/Animation;
.source "IgAnimatingMapItem.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 208
    const v0, 0x3f666666

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/e;->a()V

    .line 213
    :cond_0
    return-void
.end method
