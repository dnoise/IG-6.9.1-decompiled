.class final Lcom/instagram/creation/video/f/bq;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/instagram/creation/video/f/bp;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bp;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/instagram/creation/video/f/bq;->b:Lcom/instagram/creation/video/f/bp;

    iput-wide p2, p0, Lcom/instagram/creation/video/f/bq;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 627
    iget-object v0, p0, Lcom/instagram/creation/video/f/bq;->b:Lcom/instagram/creation/video/f/bp;

    iget-object v0, v0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;

    move-result-object v0

    iget-wide v1, p0, Lcom/instagram/creation/video/f/bq;->a:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->setScrollX(I)V

    .line 628
    return-void
.end method
