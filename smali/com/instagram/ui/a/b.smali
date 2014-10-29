.class public final Lcom/instagram/ui/a/b;
.super Ljava/lang/Object;
.source "ViewTranslationUtil.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 15
    invoke-static {p0, p1}, Lcom/instagram/ui/a/b;->b(Landroid/view/View;I)V

    .line 21
    :goto_0
    return-void

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0, p1}, Lcom/instagram/ui/a/b;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private static b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 25
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 26
    return-void
.end method

.method private static c(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 30
    instance-of v0, v1, Lcom/instagram/ui/a/a;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 33
    check-cast v0, Lcom/instagram/ui/a/a;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/instagram/ui/a/a;->b(F)V

    move-object v0, v1

    .line 34
    check-cast v0, Lcom/instagram/ui/a/a;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/instagram/ui/a/a;->c(F)V

    .line 48
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 51
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/instagram/ui/a/a;

    int-to-float v0, p1

    int-to-float v2, p1

    invoke-direct {v1, v0, v2}, Lcom/instagram/ui/a/a;-><init>(FF)V

    goto :goto_0
.end method
