.class final Lcom/instagram/android/fragment/fl;
.super Landroid/content/BroadcastReceiver;
.source "TabbedExploreFragment.java"

# interfaces
.implements Lcom/instagram/base/a/j;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fc;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

.field private final f:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/fc;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 318
    iput-object p1, p0, Lcom/instagram/android/fragment/fl;->a:Lcom/instagram/android/fragment/fc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 319
    sget v0, Lcom/facebook/av;->view_switcher_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fl;->b:Landroid/view/View;

    .line 320
    sget v0, Lcom/facebook/av;->view_switcher_button_first:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/fl;->c:Landroid/widget/TextView;

    .line 321
    sget v0, Lcom/facebook/av;->view_switcher_button_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/fl;->d:Landroid/widget/TextView;

    .line 322
    sget v0, Lcom/facebook/av;->tabbed_explore_pager:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    iput-object v0, p0, Lcom/instagram/android/fragment/fl;->e:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    .line 324
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->tabbed_explore_action_bar_photos_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->d:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->people:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "TabbedExploreFragment.INTENT_ACTION_EXPLORE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fl;->f:Landroid/content/IntentFilter;

    .line 329
    invoke-static {p1}, Lcom/instagram/android/fragment/fc;->f(Lcom/instagram/android/fragment/fc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->e:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    invoke-virtual {v0, v3}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setScrollingEnabled(Z)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->e:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    invoke-virtual {p1}, Lcom/instagram/android/fragment/fc;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->row_height_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->f:Landroid/content/IntentFilter;

    invoke-static {p0, v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 344
    return-void
.end method

.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->a:Lcom/instagram/android/fragment/fc;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/fc;->a(I)V

    .line 353
    new-instance v3, Landroid/content/Intent;

    const-string v0, "TabbedExploreFragment.INTENT_ACTION_EXPLORE_MODE_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    const-string v4, "TabbedExploreFragment.IS_PHOTOS_SELECTED"

    sget-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const-string v0, "TabbedExploreFragment.IS_PEOPLE_SELECTED"

    sget-object v4, Lcom/instagram/android/fragment/fc;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-static {v3}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 357
    return-void

    :cond_0
    move v0, v2

    .line 354
    goto :goto_0

    :cond_1
    move v1, v2

    .line 355
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 347
    invoke-static {p0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 348
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    iget-object v3, p0, Lcom/instagram/android/fragment/fl;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 382
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->d:Landroid/widget/TextView;

    sget-object v3, Lcom/instagram/android/fragment/fc;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 383
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->a:Lcom/instagram/android/fragment/fc;

    iget-object v1, p0, Lcom/instagram/android/fragment/fl;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v1}, Lcom/instagram/android/fragment/fc;->d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fj;)V

    .line 384
    return-void

    :cond_0
    move v0, v2

    .line 381
    goto :goto_0

    :cond_1
    move v1, v2

    .line 382
    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/fragment/fm;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/fm;-><init>(Lcom/instagram/android/fragment/fl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/instagram/android/fragment/fl;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/fragment/fn;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/fn;-><init>(Lcom/instagram/android/fragment/fl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 389
    const-string v0, "TabbedExploreFragment.IS_PHOTOS_SELECTED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/fl;->e:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    invoke-virtual {v1, v0}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setCurrentItem(I)V

    .line 397
    return-void

    .line 391
    :cond_0
    const-string v0, "TabbedExploreFragment.IS_PEOPLE_SELECTED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    sget-object v0, Lcom/instagram/android/fragment/fc;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
