.class final Lcom/instagram/creation/photo/camera/r;
.super Lcom/instagram/creation/photo/c/c;
.source "CameraFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/camera/c;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    .line 1475
    invoke-direct {p0, p2}, Lcom/instagram/creation/photo/c/c;-><init>(Landroid/content/Context;)V

    .line 1476
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    .line 1485
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;F)F

    .line 1510
    :cond_1
    :goto_0
    return-void

    .line 1490
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->A(Lcom/instagram/creation/photo/camera/c;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/camera/h;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;I)I

    .line 1491
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->A(Lcom/instagram/creation/photo/camera/c;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;F)F

    .line 1495
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->x(Lcom/instagram/creation/photo/camera/c;)F

    move-result v0

    const/high16 v1, 0x4334

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->B(Lcom/instagram/creation/photo/camera/c;)F

    goto :goto_1

    .line 1499
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->x(Lcom/instagram/creation/photo/camera/c;)F

    move-result v0

    const/high16 v1, -0x3ccc

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1500
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->C(Lcom/instagram/creation/photo/camera/c;)F

    goto :goto_2

    .line 1505
    :cond_4
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->A(Lcom/instagram/creation/photo/camera/c;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1506
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->D(Lcom/instagram/creation/photo/camera/c;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/camera/c;->b(Lcom/instagram/creation/photo/camera/c;I)I

    .line 1508
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/r;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->D(Lcom/instagram/creation/photo/camera/c;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->c(Lcom/instagram/creation/photo/camera/c;I)V

    goto :goto_0
.end method
