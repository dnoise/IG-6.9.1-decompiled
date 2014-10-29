.class final Lcom/instagram/creation/video/f/p;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/instagram/creation/video/f/p;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    sub-int v0, p4, p2

    .line 448
    sub-int v1, p5, p3

    .line 450
    iget-object v2, p0, Lcom/instagram/creation/video/f/p;->a:Lcom/instagram/creation/video/f/a;

    iget-object v2, v2, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/a/a;->b(II)V

    .line 451
    iget-object v0, p0, Lcom/instagram/creation/video/f/p;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->a()V

    goto :goto_0
.end method
