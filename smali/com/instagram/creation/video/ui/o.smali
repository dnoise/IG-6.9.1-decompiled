.class public final Lcom/instagram/creation/video/ui/o;
.super Landroid/view/SurfaceView;
.source "SquareSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/o;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/o;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/ui/o;->setMeasuredDimension(II)V

    .line 28
    return-void
.end method
