.class public abstract Lcom/instagram/android/activity/ab;
.super Lcom/instagram/base/activity/d;
.source "XAuthActivity.java"


# instance fields
.field protected p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/ab;->p:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/activity/ab;->p:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/activity/ae;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/activity/ae;-><init>(Lcom/instagram/android/activity/ab;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    :cond_0
    sget v0, Lcom/facebook/aw;->activity_xauth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->setContentView(I)V

    .line 38
    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/instagram/android/activity/ac;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/ac;-><init>(Lcom/instagram/android/activity/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v1, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget v0, Lcom/facebook/av;->follow_instagram_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/ad;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/ad;-><init>(Lcom/instagram/android/activity/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->g()V

    .line 58
    return-void
.end method
