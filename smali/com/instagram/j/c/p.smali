.class final Lcom/instagram/j/c/p;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFragment.java"

# interfaces
.implements Lcom/instagram/base/a/j;


# instance fields
.field final synthetic a:Lcom/instagram/j/c/g;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/support/v4/view/ViewPager;

.field private final e:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/g;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 368
    sget v0, Lcom/facebook/av;->view_switcher_button_first:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/j/c/p;->b:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/instagram/j/c/p;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->news_view_action_bar_following_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 370
    sget v0, Lcom/facebook/av;->view_switcher_button_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/j/c/p;->c:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/instagram/j/c/p;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->news_view_action_bar_you_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 372
    sget v0, Lcom/facebook/av;->newsfeed_pager:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/instagram/j/c/p;->d:Landroid/support/v4/view/ViewPager;

    .line 373
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/j/c/p;->e:Landroid/content/IntentFilter;

    .line 374
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/j/c/p;->e:Landroid/content/IntentFilter;

    invoke-static {p0, v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 378
    return-void
.end method

.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-virtual {v0, p1}, Lcom/instagram/j/c/g;->a(I)V

    .line 387
    new-instance v3, Landroid/content/Intent;

    const-string v0, "NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    const-string v4, "NewsfeedFragment.IS_FOLLOWING_SELECTED"

    sget-object v0, Lcom/instagram/j/c/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    const-string v0, "NewsfeedFragment.IS_YOU_SELECTED"

    sget-object v4, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    invoke-static {v3}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 391
    return-void

    :cond_0
    move v0, v2

    .line 388
    goto :goto_0

    :cond_1
    move v1, v2

    .line 389
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 381
    invoke-static {p0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 382
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/instagram/j/c/p;->b:Landroid/widget/TextView;

    sget-object v0, Lcom/instagram/j/c/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 419
    iget-object v0, p0, Lcom/instagram/j/c/p;->c:Landroid/widget/TextView;

    sget-object v3, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 421
    iget-object v0, p0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-virtual {v0}, Lcom/instagram/j/c/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-virtual {v0}, Lcom/instagram/j/c/g;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-static {v1}, Lcom/instagram/j/c/g;->d(Lcom/instagram/j/c/g;)Lcom/instagram/j/c/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/j/c/n;->V()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 425
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 418
    goto :goto_0

    :cond_2
    move v1, v2

    .line 419
    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/instagram/j/c/p;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/j/c/q;

    invoke-direct {v1, p0}, Lcom/instagram/j/c/q;-><init>(Lcom/instagram/j/c/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/j/c/p;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/j/c/r;

    invoke-direct {v1, p0}, Lcom/instagram/j/c/r;-><init>(Lcom/instagram/j/c/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 430
    const-string v0, "NewsfeedFragment.IS_FOLLOWING_SELECTED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/instagram/j/c/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/instagram/j/c/p;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 438
    return-void

    .line 432
    :cond_0
    const-string v0, "NewsfeedFragment.IS_YOU_SELECTED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget-object v0, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
