.class public abstract Lcom/instagram/base/activity/a;
.super Lcom/instagram/base/activity/d;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/instagram/a/a;


# instance fields
.field private p:Lcom/instagram/a/f;

.field private final q:Landroid/support/v4/app/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    .line 25
    new-instance v0, Lcom/instagram/base/activity/b;

    invoke-direct {v0, p0}, Lcom/instagram/base/activity/b;-><init>(Lcom/instagram/base/activity/a;)V

    iput-object v0, p0, Lcom/instagram/base/activity/a;->q:Landroid/support/v4/app/t;

    return-void
.end method

.method static synthetic a(Lcom/instagram/base/activity/a;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/instagram/base/activity/a;->g()V

    return-void
.end method

.method private static b(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    instance-of v0, p0, Lcom/instagram/a/c;

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->E()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {v0}, Lcom/instagram/base/activity/a;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    :goto_1
    sget v3, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {p0, v3}, Lcom/instagram/base/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Lcom/instagram/base/b/a;

    invoke-interface {v0}, Lcom/instagram/base/b/a;->au()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/instagram/a/f;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/base/activity/a;->p:Lcom/instagram/a/f;

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/base/activity/a;->g()V

    .line 90
    return-void
.end method

.method protected abstract h()V
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/instagram/base/activity/a;->p:Lcom/instagram/a/f;

    instance-of v2, v0, Lcom/instagram/a/c;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/instagram/a/c;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/a/f;->a(Lcom/instagram/a/c;)V

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 46
    sget v0, Lcom/facebook/aw;->activity_fragment_host:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/a;->setContentView(I)V

    .line 51
    new-instance v1, Lcom/instagram/a/f;

    sget v0, Lcom/facebook/av;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/instagram/base/activity/c;

    invoke-direct {v2, p0}, Lcom/instagram/base/activity/c;-><init>(Lcom/instagram/base/activity/a;)V

    invoke-direct {v1, v0, v2}, Lcom/instagram/a/f;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/instagram/base/activity/a;->p:Lcom/instagram/a/f;

    .line 59
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/base/activity/a;->q:Landroid/support/v4/app/t;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/t;)V

    .line 63
    invoke-static {}, Lcom/instagram/creation/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->h()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/instagram/base/activity/d;->onResume()V

    .line 40
    invoke-virtual {p0}, Lcom/instagram/base/activity/a;->k()V

    .line 41
    invoke-direct {p0}, Lcom/instagram/base/activity/a;->g()V

    .line 42
    return-void
.end method
