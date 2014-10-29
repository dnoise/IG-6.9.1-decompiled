.class public final Lcom/instagram/android/k/c/a;
.super Lcom/instagram/base/a/c;
.source "UserListFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Lcom/instagram/android/k/a/a;

.field private ad:Z

.field private ae:Lcom/instagram/android/k/f/a;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Lcom/instagram/user/follow/h;

.field private ai:Landroid/os/Handler;

.field private aj:Lcom/instagram/android/k/c/u;

.field private ak:Lcom/instagram/common/a/a/k;

.field private al:Lcom/instagram/common/d/h;

.field private final am:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/android/k/b/e;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/k/c/a;->ag:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->ai:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/instagram/android/k/c/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/i;-><init>(Lcom/instagram/android/k/c/a;)V

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->i:Lcom/instagram/common/a/a/j;

    .line 319
    new-instance v0, Lcom/instagram/android/k/c/n;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/n;-><init>(Lcom/instagram/android/k/c/a;)V

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->am:Lcom/instagram/common/a/a/j;

    .line 419
    return-void
.end method

.method private V()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    sget v0, Lcom/facebook/az;->disconnect_contacts:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 129
    new-instance v2, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/instagram/android/k/c/g;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/k/c/g;-><init>(Lcom/instagram/android/k/c/a;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1, v3}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 141
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->disconnect_contacts_dialog_msg:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->disconnect:I

    new-instance v2, Lcom/instagram/android/k/c/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/k/c/h;-><init>(Lcom/instagram/android/k/c/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 156
    return-void
.end method

.method private X()Z
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private Y()Z
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_IS_FACEBOOK_LINKING_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private Z()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/instagram/android/k/c/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/k;-><init>(Lcom/instagram/android/k/c/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ac()V

    return-void
.end method

.method private aa()V
    .locals 4

    .prologue
    .line 217
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/n/a;->a(Ljava/lang/String;)V

    .line 219
    sget-object v1, Lcom/instagram/p/b;->aC:Lcom/instagram/p/b;

    invoke-virtual {v1}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "is_facebook_linking_flow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "instagram_id"

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 223
    invoke-static {}, Lcom/instagram/share/b/a;->e()V

    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    .line 225
    return-void
.end method

.method private ab()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-nez v0, :cond_0

    move v0, v2

    .line 253
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    .line 233
    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 235
    goto :goto_0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    invoke-virtual {v1}, Lcom/instagram/android/k/c/u;->o_()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    .line 242
    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    .line 247
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v4, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-eq v1, v4, :cond_4

    .line 248
    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->i()V

    move v0, v2

    .line 249
    goto :goto_0

    .line 253
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ac()V
    .locals 3

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/k/c/m;

    invoke-direct {v2, p0}, Lcom/instagram/android/k/c/m;-><init>(Lcom/instagram/android/k/c/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ad()V

    goto :goto_0
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->aa()V

    .line 286
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->a:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->c:I

    if-ne v0, v1, :cond_2

    .line 278
    :cond_1
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bc;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bc;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/dn;

    invoke-direct {v1}, Lcom/instagram/android/fragment/dn;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0
.end method

.method private ae()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    invoke-virtual {v0, v5}, Lcom/instagram/android/k/f/a;->setFollowAllEnabled(Z)V

    .line 290
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->af()Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ad()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    new-instance v1, Lcom/instagram/android/k/b/b;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/k/c/r;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/k/c/r;-><init>(Lcom/instagram/android/k/c/a;B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/k/b/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/b/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 301
    :cond_2
    new-instance v1, Lcom/instagram/android/k/b/c;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/k/c/t;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/k/c/t;-><init>(Lcom/instagram/android/k/c/a;B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/k/b/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/b/c;->a(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private af()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 310
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-eq v3, v4, :cond_0

    invoke-static {v0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_1
    return-object v1
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/u;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 442
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ah()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 455
    iget v1, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v2, Lcom/instagram/android/k/d/a;->b:I

    if-ne v1, v2, :cond_1

    .line 456
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/l/b/a;->a(I)V

    .line 460
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/f/a;->a(I)V

    .line 461
    return-void

    .line 457
    :cond_1
    iget v1, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v2, Lcom/instagram/android/k/d/a;->a:I

    if-ne v1, v2, :cond_0

    .line 458
    invoke-static {v0}, Lcom/instagram/share/b/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->V()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->W()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/k/c/a;)Lcom/instagram/common/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/k/c/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ai:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ae()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/k/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ad()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ah()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/k/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Y()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->aa()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/k/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/android/k/c/a;->ad:Z

    return v0
.end method

.method static synthetic o(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ag()V

    return-void
.end method

.method static synthetic p(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/f/a;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/android/k/c/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ab:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 470
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 471
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ah()V

    .line 472
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->al:Lcom/instagram/common/d/h;

    if-nez v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->al:Lcom/instagram/common/d/h;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 476
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 450
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 451
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->d()V

    .line 524
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 525
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 530
    new-instance v0, Lcom/instagram/android/k/f/a;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/k/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    .line 531
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    iget v1, p0, Lcom/instagram/android/k/c/a;->aa:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/f/a;->setType$1b988d18(I)V

    .line 532
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Z()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/f/a;->setOnFollowAll(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/f/a;->setUser(Lcom/instagram/user/c/a;)V

    .line 537
    :cond_0
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 538
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 539
    iget-object v2, p0, Lcom/instagram/android/k/c/a;->ae:Lcom/instagram/android/k/f/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 540
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 480
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 481
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lcom/instagram/android/k/d/a;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UserListFragment.ARGUMENTS_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget v0, v0, v3

    iput v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    .line 483
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_ACCESS_TOKEN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->ab:Ljava/lang/String;

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/k/c/a;->ad:Z

    .line 486
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_CLICK_THROUGH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/k/c/a;->ag:Z

    .line 487
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/k/c/a;->af:Ljava/lang/String;

    .line 488
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v3, Lcom/instagram/android/k/d/a;->c:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v3, Lcom/instagram/android/k/d/a;->b:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v3, Lcom/instagram/android/k/d/a;->a:I

    if-ne v0, v3, :cond_3

    :cond_1
    move v0, v2

    .line 490
    :goto_1
    new-instance v1, Lcom/instagram/android/k/c/u;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/u;-><init>(Lcom/instagram/android/k/c/a;)V

    iput-object v1, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    .line 491
    new-instance v1, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v1, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    .line 492
    sget-object v1, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v1}, Lcom/instagram/m/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_2
    iput-object v1, p0, Lcom/instagram/android/k/c/a;->ah:Lcom/instagram/user/follow/h;

    .line 495
    new-instance v1, Lcom/instagram/android/k/a/e;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/k/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/k/a/e;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/k/a/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/k/a/e;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/k/a/e;

    move-result-object v1

    iget-boolean v2, p0, Lcom/instagram/android/k/c/a;->ad:Z

    invoke-virtual {v1, v2}, Lcom/instagram/android/k/a/e;->b(Z)Lcom/instagram/android/k/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/a/e;->a(Z)Lcom/instagram/android/k/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/e;->a(Lcom/instagram/ui/widget/loadmore/c;)Lcom/instagram/android/k/a/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/k/c/a;->ag:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/e;->c(Z)Lcom/instagram/android/k/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ah:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/e;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/k/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/e;->a()Lcom/instagram/android/k/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    .line 505
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->d()V

    .line 506
    return-void

    .line 487
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 488
    goto :goto_1

    .line 492
    :cond_4
    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_2
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 512
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ac:Lcom/instagram/android/k/a/a;

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/c/a;->a(Landroid/widget/ListAdapter;)V

    .line 513
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->af:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 103
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Lcom/instagram/a/i;->c:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/k/c/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/b;-><init>(Lcom/instagram/android/k/c/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_3
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->b:I

    if-ne v0, v1, :cond_1

    .line 114
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/k/c/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/f;-><init>(Lcom/instagram/android/k/c/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Lcom/instagram/user/follow/a;

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-virtual {v0, p1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V

    .line 643
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->aj:Lcom/instagram/android/k/c/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/c/u;->b(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/instagram/android/k/c/q;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/k/c/q;-><init>(Lcom/instagram/android/k/c/a;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/k/c/a;->am:Lcom/instagram/common/a/a/j;

    invoke-virtual {v1, v2}, Lcom/instagram/android/k/b/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->b:I

    if-ne v0, v1, :cond_2

    .line 574
    new-instance v0, Lcom/instagram/android/k/c/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/c;-><init>(Lcom/instagram/android/k/c/a;)V

    .line 594
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/k/c/a;->am:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/b/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0

    .line 595
    :cond_2
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->a:I

    if-ne v0, v1, :cond_3

    .line 597
    new-instance v0, Lcom/instagram/android/k/c/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/d;-><init>(Lcom/instagram/android/k/c/a;)V

    .line 615
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/k/c/a;->am:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/b/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0

    .line 616
    :cond_3
    iget v0, p0, Lcom/instagram/android/k/c/a;->aa:I

    sget v1, Lcom/instagram/android/k/d/a;->c:I

    if-ne v0, v1, :cond_0

    .line 618
    new-instance v0, Lcom/instagram/android/k/c/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/c/e;-><init>(Lcom/instagram/android/k/c/a;)V

    .line 635
    iget-object v1, p0, Lcom/instagram/android/k/c/a;->ak:Lcom/instagram/common/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/k/c/a;->am:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/b/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/instagram/android/k/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_list"

    goto :goto_0
.end method

.method public final k_()V
    .locals 0

    .prologue
    .line 517
    invoke-super {p0}, Lcom/instagram/base/a/c;->k_()V

    .line 518
    invoke-direct {p0}, Lcom/instagram/android/k/c/a;->ag()V

    .line 519
    return-void
.end method
