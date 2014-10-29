.class public Lcom/instagram/android/activity/MainTabActivity;
.super Lcom/instagram/base/activity/tabactivity/a;
.source "MainTabActivity.java"

# interfaces
.implements Lcom/instagram/android/activity/e;


# static fields
.field private static a:Z


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/instagram/android/activity/t;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/instagram/android/activity/t;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/instagram/ui/widget/a/a;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/instagram/android/activity/c;

.field private m:Z

.field private n:Z

.field private final o:Landroid/os/Handler;

.field private p:Landroid/os/Bundle;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/android/c2dm/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/a;-><init>()V

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;

    .line 95
    iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z

    .line 100
    iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I

    .line 102
    iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I

    .line 103
    iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/instagram/android/activity/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/l;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;

    .line 677
    new-instance v0, Lcom/instagram/android/activity/q;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/q;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/j/e;

    return-void
.end method

.method private a(Landroid/content/res/Configuration;)I
    .locals 2
    .parameter

    .prologue
    .line 566
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I

    return p1
.end method

.method private a(Lcom/instagram/android/activity/t;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 499
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/ActivityInTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "MainTabActivity.EXTRA_TAB_NAME"

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 506
    const-string v2, "MainTabActivity.INITIAL_TAB"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 508
    const-string v2, "MainTabActivity.INITIAL_TAB_ARGUMENTS"

    const-string v3, "MainTabActivity.INITIAL_TAB_ARGUMENTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Ljava/lang/String;)Lcom/instagram/base/activity/tabactivity/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/base/activity/tabactivity/h;->a(Landroid/view/View;)Lcom/instagram/base/activity/tabactivity/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/base/activity/tabactivity/h;->a(Landroid/content/Intent;)Lcom/instagram/base/activity/tabactivity/h;

    move-result-object v0

    .line 518
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/h;)V

    .line 520
    return-object v1
.end method

.method private a(Lcom/instagram/android/activity/t;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 572
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->tab_button:I

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 573
    sget v0, Lcom/facebook/av;->tab_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 574
    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    sget-object v0, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;

    if-ne p1, v0, :cond_1

    .line 577
    sget v0, Lcom/facebook/au;->tab_background_camera:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    move-object v0, v1

    .line 585
    check-cast v0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;

    .line 588
    new-instance v2, Lcom/instagram/android/activity/n;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/activity/n;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V

    .line 601
    sget-object v2, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;

    if-ne p1, v2, :cond_3

    .line 602
    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->setProxyToOnClickListener(Z)V

    .line 603
    new-instance v2, Lcom/instagram/android/activity/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/activity/o;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V

    .line 629
    :goto_1
    return-object v1

    .line 578
    :cond_1
    sget-object v0, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    if-ne p1, v0, :cond_2

    .line 579
    iput-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;

    .line 580
    sget v0, Lcom/facebook/av;->notification:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->j:Landroid/view/View;

    goto :goto_0

    .line 581
    :cond_2
    sget-object v0, Lcom/instagram/android/activity/t;->f:Lcom/instagram/android/activity/t;

    if-ne p1, v0, :cond_0

    .line 582
    sget v0, Lcom/facebook/av;->notification:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->k:Landroid/view/View;

    goto :goto_0

    .line 610
    :cond_3
    new-instance v2, Lcom/instagram/android/activity/p;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/activity/p;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;

    .line 777
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->i()Lcom/instagram/ui/widget/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/a/a;->a(IIII)V

    .line 787
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v6, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/activity/r;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/r;-><init>(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    const-wide/16 v1, 0x64

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/instagram/android/activity/t;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 734
    invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v1

    if-lez v1, :cond_1

    .line 741
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    if-ne p2, v1, :cond_0

    .line 743
    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    .line 745
    invoke-virtual {v0}, Lcom/instagram/j/c/g;->V()I

    move-result v0

    sget-object v1, Lcom/instagram/j/c/g;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 746
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 753
    invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/activity/MainTabActivity;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/view/View;Lcom/instagram/android/activity/t;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V

    return-void
.end method

.method private a(Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 663
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/android/activity/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 726
    sput-boolean p0, Lcom/instagram/android/activity/MainTabActivity;->a:Z

    .line 727
    return-void
.end method

.method private a(ZLandroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 464
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->g()V

    .line 470
    if-eqz p1, :cond_4

    .line 471
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_2

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    sget-object v0, Lcom/instagram/p/a;->i:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 475
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 476
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v2

    const/16 v3, 0x2714

    invoke-virtual {v2, v0, v4, v3, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    if-eqz v0, :cond_0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lcom/instagram/creation/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    sget-object v0, Lcom/instagram/p/a;->p:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 484
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 485
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_3
    sget v0, Lcom/facebook/az;->video_import_min_requirements:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 494
    :cond_4
    sget v0, Lcom/facebook/az;->must_login_before_share:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    const-string v4, "SAVED_LAST_HANDLED_NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 268
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    const-string v4, "SAVED_LAST_HANDLED_NOTIFICATION"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    const-string v3, "from_notification_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    new-instance v4, Lcom/instagram/common/u/a/a;

    const/4 v5, 0x0

    const-string v6, "notification_clicked"

    invoke-direct {v4, v5, v6}, Lcom/instagram/common/u/a/a;-><init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V

    .line 239
    const-string v5, "pi"

    invoke-virtual {v4, v5, v3}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 240
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 242
    invoke-static {v0}, Lcom/instagram/android/util/a;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v4

    .line 245
    const-string v0, "MainTabActivity.INITIAL_TAB"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 248
    if-eq v5, v7, :cond_4

    .line 250
    invoke-static {}, Lcom/instagram/android/activity/t;->values()[Lcom/instagram/android/activity/t;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v8, v6, v3

    .line 251
    invoke-virtual {v8}, Lcom/instagram/android/activity/t;->a()I

    move-result v9

    if-ne v9, v5, :cond_3

    .line 252
    invoke-direct {p0, v8}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V

    .line 253
    const-string v0, "MainTabActivity.INITIAL_TAB_ARGUMENTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->a(Landroid/os/Bundle;)V

    .line 255
    invoke-direct {p0, v8}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V

    move v0, v1

    .line 250
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 261
    :cond_5
    const/4 v3, 0x3

    if-ne v5, v3, :cond_6

    .line 262
    invoke-static {}, Lcom/instagram/j/c/g;->W()V

    .line 265
    :cond_6
    const-string v3, "MainTabActivity.EXTRA_LAUNCH_CAMERA"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/t;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V

    return-void
.end method

.method private b(Lcom/instagram/android/activity/t;)V
    .locals 3
    .parameter

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MainTabActivity.BROADCAST_POP_TO_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    const-string v1, "MainTabActivity.EXTRA_TAB_NAME"

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 720
    sget-boolean v0, Lcom/instagram/android/activity/MainTabActivity;->a:Z

    .line 721
    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/activity/MainTabActivity;->a:Z

    .line 722
    return v0
.end method

.method static synthetic c(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Lcom/instagram/android/activity/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/a/a;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    return-object v0
.end method

.method private c(Lcom/instagram/android/activity/t;)V
    .locals 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;

    .line 674
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/activity/MainTabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I

    return v0
.end method

.method static synthetic d(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V

    return-void
.end method

.method private d(Lcom/instagram/android/activity/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/ActivityInTab;

    .line 760
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private f()Lcom/instagram/android/activity/c;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/instagram/android/activity/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/c;
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    .line 712
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 715
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/instagram/android/activity/MainTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z

    return v0
.end method

.method private i()Lcom/instagram/ui/widget/a/a;
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/instagram/ui/widget/a/a;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/ui/widget/a/a;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    .line 796
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/a/a;->a(I)V

    .line 799
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    new-instance v1, Lcom/instagram/android/activity/s;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/s;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(I)V

    .line 539
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 867
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    .line 871
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 842
    const/16 v0, 0x2712

    invoke-static {p0, v0, p1}, Lcom/instagram/creation/base/e;->a(Landroid/app/Activity;ILjava/io/File;)V

    .line 843
    return-void
.end method

.method public final a(Ljava/io/File;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-static {p0, p2, p1, p3}, Lcom/instagram/creation/photo/c/a;->a(Landroid/app/Activity;ILjava/io/File;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public final a_(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 833
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 542
    iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I

    .line 546
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/ui/widget/a/a;->a(I)V

    .line 560
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I

    return v0
.end method

.method public final h_()V
    .locals 3

    .prologue
    .line 848
    sget-object v0, Lcom/instagram/p/a;->e:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 849
    invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    const-string v1, "return_to"

    const-string v2, "feed"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 851
    invoke-static {}, Lcom/instagram/android/fragment/cr;->as()V

    .line 852
    sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V

    .line 853
    sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V

    .line 861
    :goto_0
    return-void

    .line 855
    :cond_0
    const-string v1, "return_to"

    const-string v2, "ds_inbox"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 856
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    .line 858
    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/directshare/c/c;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/activity/c;->a(IILandroid/content/Intent;)V

    .line 708
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 525
    invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 527
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/res/Configuration;)I

    move-result v0

    .line 529
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/a/a;->a(I)V

    .line 535
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onCreate(Landroid/os/Bundle;)V

    .line 356
    if-eqz p1, :cond_0

    .line 359
    const-string v0, "SAVED_STATE_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 366
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    .line 443
    :goto_0
    return-void

    .line 380
    :cond_2
    invoke-static {}, Lcom/instagram/k/d;->a()Lcom/instagram/k/d;

    move-result-object v0

    sget-object v3, Lcom/instagram/k/f;->b:Lcom/instagram/k/f;

    invoke-virtual {v0, v3}, Lcom/instagram/k/d;->a(Lcom/instagram/k/f;)V

    .line 383
    :cond_3
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v3

    .line 388
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 389
    if-eqz p1, :cond_5

    const-string v0, "MainTabActivity.tookSendIntent"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    .line 391
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    invoke-direct {p0, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->a(ZLandroid/os/Bundle;)V

    .line 397
    :cond_4
    if-nez v3, :cond_6

    .line 398
    invoke-static {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 389
    goto :goto_1

    .line 402
    :cond_6
    sget v0, Lcom/facebook/aw;->layout_activity_main_tabs:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setContentView(I)V

    .line 404
    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    const-string v0, "failed_to_load_library_logged_in"

    const-string v2, "failed_to_load_library_logged_in"

    invoke-static {v0, v2}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unable_to_start:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/activity/m;

    invoke-direct {v2, p0}, Lcom/instagram/android/activity/m;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 422
    :cond_7
    sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    .line 423
    sget-object v0, Lcom/instagram/m/c;->m:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 424
    sget-object v0, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    .line 428
    :goto_2
    sget-object v0, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    .line 429
    sget-object v0, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    .line 430
    sget-object v0, Lcom/instagram/android/activity/t;->f:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    .line 432
    invoke-direct {p0, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 434
    sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V

    .line 438
    :cond_8
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 439
    invoke-static {}, Lcom/instagram/common/u/b/i;->a()Lcom/instagram/common/u/b/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/u/b/h;->a(Landroid/content/Context;)V

    .line 442
    :cond_9
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/activity/u;

    invoke-direct {v2, p0, v1}, Lcom/instagram/android/activity/u;-><init>(Lcom/instagram/android/activity/MainTabActivity;B)V

    invoke-virtual {v0, v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setOnTabChangedListener(Lcom/instagram/base/activity/tabactivity/g;)V

    goto/16 :goto_0

    .line 426
    :cond_a
    sget-object v0, Lcom/instagram/android/activity/t;->d:Lcom/instagram/android/activity/t;

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/a/a;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/a/a;->a()V

    .line 451
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onDestroy()V

    .line 452
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/Intent;)Z

    .line 216
    invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onNewIntent(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 320
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 344
    const-string v0, "backTabList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/instagram/android/activity/t;->valueOf(Ljava/lang/String;)Lcom/instagram/android/activity/t;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_0
    const-string v0, "MainTabActivity.tookSendIntent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    .line 349
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->b(Landroid/os/Bundle;)V

    .line 350
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onResume()V

    .line 275
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->e()V

    .line 281
    new-instance v0, Lcom/instagram/registrationpush/a;

    invoke-direct {v0, p0}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->b()V

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    const-string v1, "MainTabActivity.BROADCAST_BACK_PUSHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "LogoutManager.BROADCAST_POST_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "NewsfeedStore.BROADCAST_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 295
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z

    if-eqz v0, :cond_0

    .line 296
    iput-boolean v3, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z

    .line 297
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v0, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v0}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z

    if-eqz v0, :cond_1

    .line 303
    iput-boolean v3, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z

    .line 304
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/activity/c;->a(Z)V

    .line 307
    :cond_1
    invoke-static {}, Lcom/instagram/m/j;->a()Lcom/instagram/m/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/m/i;->a()V

    .line 309
    const-string v0, "mainActivityResume"

    invoke-static {v0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/t;

    .line 328
    invoke-virtual {v0}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    const-string v0, "backTabList"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 331
    const-string v0, "MainTabActivity.tookSendIntent"

    iget-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->a(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "SAVED_STATE_BUNDLE"

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 692
    invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onStart()V

    .line 694
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 696
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 700
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 702
    invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onStop()V

    .line 703
    return-void
.end method
