.class final Lcom/instagram/android/creation/a/ao;
.super Landroid/content/BroadcastReceiver;
.source "MetadataFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/ah;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/support/v4/view/ViewPager;

.field private final e:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ah;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 415
    sget v0, Lcom/facebook/av;->view_switcher_button_first:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ao;->b:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->followers:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 417
    sget v0, Lcom/facebook/av;->view_switcher_button_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ao;->c:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->direct:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->view_switcher_text_selected_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 421
    sget v0, Lcom/facebook/av;->metadata_pager:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ao;->d:Landroid/support/v4/view/ViewPager;

    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ao;->e:Landroid/content/IntentFilter;

    .line 423
    return-void
.end method

.method static a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 445
    new-instance v3, Landroid/content/Intent;

    const-string v0, "MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    const-string v4, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    if-ne p0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-static {v3}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 449
    return-void

    :cond_0
    move v0, v2

    .line 446
    goto :goto_0

    :cond_1
    move v1, v2

    .line 447
    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->e:Landroid/content/IntentFilter;

    invoke-static {p0, v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 430
    return-void
.end method

.method final b()V
    .locals 0

    .prologue
    .line 438
    invoke-static {p0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 439
    return-void
.end method

.method final b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 471
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->b(Lcom/instagram/android/creation/a/ah;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 472
    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->a(Z)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0, p1}, Lcom/instagram/android/creation/a/ah;->c(Lcom/instagram/android/creation/a/ah;I)I

    .line 477
    iget-object v3, p0, Lcom/instagram/android/creation/a/ao;->b:Landroid/widget/TextView;

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 478
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->c:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 480
    if-nez p1, :cond_4

    .line 481
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 488
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 472
    goto :goto_0

    :cond_3
    move v0, v2

    .line 477
    goto :goto_1

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/au;->action_bar_green_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ao;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v1}, Lcom/instagram/android/creation/a/ah;->f(Lcom/instagram/android/creation/a/ah;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;Z)V

    goto :goto_2
.end method

.method final c()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/creation/a/ap;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/ap;-><init>(Lcom/instagram/android/creation/a/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/instagram/android/creation/a/ao;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/creation/a/aq;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/aq;-><init>(Lcom/instagram/android/creation/a/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 493
    const-string v1, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/creation/a/ao;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 502
    return-void

    .line 495
    :cond_0
    const-string v1, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const/4 v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
