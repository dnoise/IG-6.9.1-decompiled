.class final Lcom/instagram/creation/video/f/q;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->camcorder_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->camcorder_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Landroid/view/View;)V

    .line 511
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->l(Lcom/instagram/creation/video/f/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->g(Lcom/instagram/creation/video/f/a;)V

    .line 519
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->m(Lcom/instagram/creation/video/f/a;)Z

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->n(Lcom/instagram/creation/video/f/a;)Z

    .line 524
    :cond_2
    return-void
.end method
