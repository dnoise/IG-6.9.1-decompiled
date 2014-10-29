.class public Lcom/instagram/android/activity/ActivityInTab;
.super Lcom/instagram/base/activity/a;
.source "ActivityInTab.java"


# static fields
.field private static p:Landroid/os/Bundle;


# instance fields
.field private q:Z

.field private r:Lcom/instagram/common/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z

    .line 145
    return-void
.end method

.method private static a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 117
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :pswitch_1
    new-instance v0, Lcom/instagram/android/fragment/fc;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fc;-><init>()V

    goto :goto_0

    .line 111
    :pswitch_2
    new-instance v0, Lcom/instagram/j/c/g;

    invoke-direct {v0}, Lcom/instagram/j/c/g;-><init>()V

    goto :goto_0

    .line 113
    :pswitch_3
    new-instance v0, Lcom/instagram/android/fragment/el;

    invoke-direct {v0}, Lcom/instagram/android/fragment/el;-><init>()V

    goto :goto_0

    .line 115
    :pswitch_4
    new-instance v0, Lcom/instagram/android/fragment/cr;

    invoke-direct {v0}, Lcom/instagram/android/fragment/cr;-><init>()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    sput-object p0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/ActivityInTab;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z

    return v0
.end method

.method private static i()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;

    .line 137
    const/4 v1, 0x0

    sput-object v1, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;

    .line 138
    return-object v0
.end method


# virtual methods
.method protected final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MainTabActivity.EXTRA_TAB_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->f()Z

    .line 88
    return-void
.end method

.method protected final h()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 96
    invoke-static {v1}, Lcom/instagram/android/activity/ActivityInTab;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 97
    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 98
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->b()I

    .line 101
    :cond_0
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/g;

    const/4 v2, 0x0

    const-string v3, "cold_start"

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "ActivityInTab.BROADCAST_BACK_PRESSED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MainTabActivity.BROADCAST_BACK_PUSHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v1, "MainTabActivity.EXTRA_TAB_NAME"

    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-direct {v0, p0}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "MainTabActivity.BROADCAST_POP_TO_ROOT"

    new-instance v2, Lcom/instagram/android/activity/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/activity/b;-><init>(Lcom/instagram/android/activity/ActivityInTab;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/d/h;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 83
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onPostResume()V

    .line 62
    iget-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->g()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z

    .line 67
    :cond_0
    invoke-static {}, Lcom/instagram/android/activity/ActivityInTab;->i()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/util/a;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V

    .line 74
    :cond_1
    return-void
.end method
