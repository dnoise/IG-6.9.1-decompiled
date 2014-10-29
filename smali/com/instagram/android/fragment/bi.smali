.class public final Lcom/instagram/android/fragment/bi;
.super Lcom/instagram/base/a/b;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private final a:Lcom/instagram/android/fragment/bo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 33
    new-instance v0, Lcom/instagram/android/fragment/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/bo;-><init>(Lcom/instagram/android/fragment/bi;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/bi;->a:Lcom/instagram/android/fragment/bo;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/bi;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bi;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bi;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 169
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends_item_facebook_friends:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/bi;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 176
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/bi;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v1, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/bi;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/bi;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/bm;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bm;-><init>(Lcom/instagram/android/fragment/bi;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/bl;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bl;-><init>(Lcom/instagram/android/fragment/bi;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/bi;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bc;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bc;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 129
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 78
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 70
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    sget v0, Lcom/facebook/aw;->fragment_find_facebook_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 159
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/instagram/android/fragment/bi;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 163
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bj;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bj;-><init>(Lcom/instagram/android/fragment/bi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/facebook/av;->button_skip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bk;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bk;-><init>(Lcom/instagram/android/fragment/bi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/facebook/av;->find_friends_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    sget v0, Lcom/facebook/az;->find_friends_menu_label:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 181
    sget-object v0, Lcom/instagram/a/i;->c:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/fragment/bn;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bn;-><init>(Lcom/instagram/android/fragment/bi;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 187
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->k()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "register_flow_find_friends_facebook_prompt"

    return-object v0
.end method
