.class public final Lcom/instagram/android/nux/n;
.super Lcom/instagram/base/a/b;
.source "LandingPageFragment.java"


# instance fields
.field private a:I

.field private final b:Lcom/facebook/b/e;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 68
    new-instance v0, Lcom/instagram/android/nux/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/nux/ae;-><init>(Lcom/instagram/android/nux/n;B)V

    iput-object v0, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;

    .line 518
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/instagram/android/nux/ad;

    invoke-direct {v0}, Lcom/instagram/android/nux/ad;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 297
    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/ag;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/support/v4/app/f;->b()V

    .line 306
    :cond_0
    return-void
.end method

.method private X()V
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 406
    sget v1, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    .line 407
    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/nux/ab;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/ab;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 414
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/login/fragment/h;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 447
    return-void
.end method

.method private Z()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 464
    sget-object v0, Lcom/instagram/p/b;->u:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 465
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-direct {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>()V

    invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/login/fragment/RegisterParameters;)V

    .line 466
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->button_developer_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/instagram/android/nux/w;

    invoke-direct {v1, p0}, Lcom/instagram/android/nux/w;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method private a(Lcom/instagram/android/login/fragment/RegisterParameters;)V
    .locals 3
    .parameter

    .prologue
    .line 450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 451
    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    iget-object v1, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/nux/q;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/nux/q;-><init>(Lcom/instagram/android/nux/n;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->Z()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/nux/n;Lcom/instagram/android/login/fragment/RegisterParameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/login/fragment/RegisterParameters;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/user/c/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 474
    sget-object v0, Lcom/instagram/p/b;->l:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 475
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 476
    sget v1, Lcom/facebook/az;->reset_to_login:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    .line 477
    sget v1, Lcom/facebook/az;->reset_password:I

    new-instance v2, Lcom/instagram/android/nux/r;

    invoke-direct {v2, p0, p1, p2}, Lcom/instagram/android/nux/r;-><init>(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 485
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 486
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 309
    new-instance v0, Lcom/instagram/android/nux/z;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/nux/z;-><init>(Lcom/instagram/android/nux/n;Ljava/lang/String;)V

    .line 390
    new-instance v1, Lcom/instagram/android/nux/f;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/instagram/android/nux/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/instagram/p/b;->h:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 396
    invoke-virtual {v1}, Lcom/instagram/android/nux/f;->g()V

    .line 397
    return-void
.end method

.method private static aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/instagram/android/login/fragment/RegisterParameters;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    sget-object v0, Lcom/instagram/p/b;->s:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 470
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/login/fragment/RegisterParameters;)V

    .line 471
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->Y()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/user/c/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 489
    sget-object v0, Lcom/instagram/p/b;->m:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 491
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/user/c/i;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    const-string v1, "argument_reset_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "argument_user_id"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/login/fragment/v;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/v;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 498
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 418
    sget-object v0, Lcom/instagram/p/b;->i:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 419
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 421
    sget v1, Lcom/facebook/az;->nux_dayone_duplicate_email:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    .line 422
    sget v1, Lcom/facebook/az;->nux_dayone_log_in:I

    new-instance v2, Lcom/instagram/android/nux/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/ac;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 431
    sget v1, Lcom/facebook/az;->nux_dayone_new_account:I

    new-instance v2, Lcom/instagram/android/nux/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/p;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 440
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 441
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 502
    :try_start_0
    invoke-static {p0}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/nux/n;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/android/nux/n;->aa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/instagram/android/nux/n;->aa()Ljava/lang/String;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    sget-object v0, Lcom/instagram/p/b;->d:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 271
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/share/b/g;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->X()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->V()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->W()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 87
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f/b;->b(Landroid/content/Context;)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/instagram/m/j;->a()Lcom/instagram/m/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/m/i;->a()V

    .line 92
    sget-object v0, Lcom/instagram/p/b;->b:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 93
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 98
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->W()V

    .line 99
    iget-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 153
    sget v0, Lcom/facebook/aw;->nux_dayone_landing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 155
    sget v1, Lcom/facebook/av;->nux_dayone_register_facebook:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 156
    new-instance v2, Lcom/instagram/android/nux/t;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/t;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v1, Lcom/facebook/av;->nux_dayone_register_email:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    new-instance v2, Lcom/instagram/android/nux/u;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/u;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v1, Lcom/facebook/av;->nux_dayone_log_in:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    new-instance v2, Lcom/instagram/android/nux/v;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/v;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Landroid/view/ViewGroup;)V

    .line 189
    :cond_0
    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 284
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 264
    invoke-direct {p0}, Lcom/instagram/android/nux/n;->d()V

    .line 265
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "failed_to_load_library_logged_out"

    const-string v1, "failed_to_load_library_logged_out"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->incompatible_device:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unsupported_device_message:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "http://bit.ly/igdevices"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/nux/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/o;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "failed_to_write_to_fs"

    const-string v1, "logged out"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->read_only_filesystem_message:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "http://bit.ly/igfilesystem"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    new-instance v2, Lcom/instagram/android/nux/s;

    invoke-direct {v2, p0}, Lcom/instagram/android/nux/s;-><init>(Lcom/instagram/android/nux/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/b/b;->a(Landroid/content/Context;)Z

    move-result v1

    .line 142
    sget-object v2, Lcom/instagram/p/b;->a:Lcom/instagram/p/b;

    invoke-virtual {v2}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "did_log_in"

    invoke-static {}, Lcom/instagram/n/a;->c()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "did_facebook_sso"

    invoke-static {}, Lcom/instagram/n/a;->a()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "fb4a_installed"

    invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "network_type"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 148
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string v0, "landing"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/nux/n;->a:I

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 75
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 76
    return-void
.end method

.method public final l_()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/nux/n;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 81
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 82
    return-void
.end method
