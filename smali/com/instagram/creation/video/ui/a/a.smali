.class public final Lcom/instagram/creation/video/ui/a/a;
.super Ljava/lang/Object;
.source "PreviewIndicatorHelper.java"

# interfaces
.implements Lcom/instagram/creation/video/d/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 20
    iput-object p1, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    .line 21
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;

    .line 22
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 24
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;

    .line 25
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 27
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;

    .line 32
    return-object p0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 45
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 52
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 59
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    return-void
.end method
