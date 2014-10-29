.class public final Lcom/instagram/android/widget/ae;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"


# direct methods
.method static synthetic a(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/instagram/android/widget/ae;->b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p2}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Lcom/instagram/android/widget/ae;->b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    .line 18
    new-instance v0, Lcom/instagram/android/widget/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/widget/af;-><init>(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    invoke-virtual {p2, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/i;)V

    .line 25
    return-void
.end method

.method private static b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    if-ne p0, v0, :cond_0

    .line 34
    new-instance v0, Lcom/instagram/android/widget/ag;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ag;-><init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :goto_0
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    if-ne p0, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 42
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    if-ne p0, v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 44
    invoke-virtual {p3}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    invoke-virtual {p3}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/ag;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ag;-><init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 41
    goto :goto_1

    :cond_2
    move v1, v2

    .line 42
    goto :goto_2
.end method
