.class public final Lcom/instagram/android/fragment/ac;
.super Lcom/instagram/base/a/b;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Lcom/instagram/android/g/b/c;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/EditText;

.field private ac:Landroid/widget/EditText;

.field private ad:Landroid/widget/EditText;

.field private ae:Landroid/widget/EditText;

.field private af:Landroid/widget/EditText;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/Spinner;

.field private ai:Landroid/view/View;

.field private aj:Landroid/widget/CompoundButton;

.field private ak:Landroid/view/View;

.field private final al:Landroid/view/View$OnFocusChangeListener;

.field private final am:Landroid/text/TextWatcher;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/instagram/android/fragment/ao;

.field private f:Lcom/instagram/android/login/c/a;

.field private g:Lcom/instagram/android/g/a;

.field private h:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 91
    new-instance v0, Lcom/instagram/android/fragment/ad;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ad;-><init>(Lcom/instagram/android/fragment/ac;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->al:Landroid/view/View$OnFocusChangeListener;

    .line 102
    new-instance v0, Lcom/instagram/android/fragment/af;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/af;-><init>(Lcom/instagram/android/fragment/ac;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->am:Landroid/text/TextWatcher;

    .line 677
    return-void
.end method

.method private V()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/az;->add_phone_number:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ac;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private W()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->a(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->b(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->d(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->f(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ah:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/ap;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->a(I)V

    .line 393
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->e(Ljava/lang/String;)V

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "^https?://.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1, v0}, Lcom/instagram/android/g/b/c;->c(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->aj:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    .line 408
    :goto_1
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1, v0}, Lcom/instagram/android/g/b/c;->a(Lcom/instagram/user/c/f;)V

    .line 410
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 411
    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/user/c/f;)V

    .line 415
    :goto_2
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/g/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    sget-object v0, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    goto :goto_1

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->X()V

    goto :goto_2
.end method

.method private X()V
    .locals 5

    .prologue
    .line 434
    new-instance v0, Lcom/instagram/android/c/a/ab;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->z()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    new-instance v4, Lcom/instagram/android/fragment/al;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/al;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/ab;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/g/b/c;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/ab;->g()V

    .line 475
    return-void
.end method

.method private Y()V
    .locals 5

    .prologue
    .line 478
    new-instance v0, Lcom/instagram/android/login/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/an;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/an;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->f:Lcom/instagram/android/login/c/a;

    .line 520
    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->aa()V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->ac()V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->f:Lcom/instagram/android/login/c/a;

    invoke-virtual {v1}, Lcom/instagram/android/login/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->g:Lcom/instagram/android/g/a;

    if-eqz v1, :cond_4

    .line 541
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->g:Lcom/instagram/android/g/a;

    invoke-virtual {v0}, Lcom/instagram/android/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->ab()V

    goto :goto_0

    .line 544
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->aa()V

    .line 545
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->g:Lcom/instagram/android/g/a;

    invoke-static {v0}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/g/a;)V

    goto :goto_0

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->f:Lcom/instagram/android/login/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/fragment/ao;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->e:Lcom/instagram/android/fragment/ao;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ac;Lcom/instagram/android/g/a;)Lcom/instagram/android/g/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/fragment/ac;->g:Lcom/instagram/android/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ac;Lcom/instagram/android/g/b/c;)Lcom/instagram/android/g/b/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(I)V

    .line 573
    return-void
.end method

.method private a(Lcom/instagram/user/c/f;)V
    .locals 3
    .parameter

    .prologue
    .line 418
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->ad()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/fragment/ak;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ak;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 431
    return-void

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->ae()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ac;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ac;->b:Z

    return p1
.end method

.method private aa()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username_red:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 557
    return-void
.end method

.method private ab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username_green:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 563
    return-void
.end method

.method private ac()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    sget v1, Lcom/facebook/au;->profile_glyph_username:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 569
    return-void
.end method

.method private ad()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_on_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ac;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_on_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ac;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ae()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_off_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ac;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/az;->toggle_privacy_confirm_turning_off_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/ac;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->Z()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0}, Lcom/instagram/common/y/e;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    sget v0, Lcom/facebook/az;->please_enter_a_valid_email_address:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ac;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ac;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ac;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ac;->b:Z

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/instagram/android/c/a/aa;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/aj;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/aj;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/aa;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/aa;->g()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->edit_profile_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void

    .line 355
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/ac;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ah:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->j()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/ap;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 373
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_1
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->add_phone_number:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v0}, Lcom/instagram/android/g/b/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->V()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/g/b/c;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/fragment/ac;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->aj:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/fragment/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->c(Z)V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->d()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->X()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->ab()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->aa()V

    return-void
.end method

.method static synthetic m(Lcom/instagram/android/fragment/ac;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ai:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->c()V

    return-void
.end method

.method static synthetic o(Lcom/instagram/android/fragment/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->W()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 267
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ac;->d:I

    .line 268
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 271
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 273
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->a(I)V

    .line 278
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->al:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->am:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->c(Z)V

    .line 283
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->c()V

    .line 285
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 291
    iput-object v1, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 293
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->am:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ac;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 299
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->a(I)V

    .line 304
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    sget v0, Lcom/facebook/aw;->fragment_edit_profile:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->x()V

    .line 126
    new-instance v0, Lcom/instagram/android/fragment/ao;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ao;-><init>(Lcom/instagram/android/fragment/ac;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->e:Lcom/instagram/android/fragment/ao;

    .line 127
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    sget v0, Lcom/facebook/av;->full_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    .line 163
    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    .line 164
    sget v0, Lcom/facebook/av;->website:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    .line 165
    sget v0, Lcom/facebook/av;->bio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    .line 166
    sget v0, Lcom/facebook/av;->email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    .line 167
    sget v0, Lcom/facebook/av;->phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/facebook/av;->gender:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ah:Landroid/widget/Spinner;

    .line 169
    sget v0, Lcom/facebook/av;->change_password_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->i:Landroid/view/View;

    .line 170
    sget v0, Lcom/facebook/av;->change_phone_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->aa:Landroid/view/View;

    .line 171
    sget v0, Lcom/facebook/av;->privacy_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ak:Landroid/view/View;

    .line 172
    sget v0, Lcom/facebook/av;->username_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->ai:Landroid/view/View;

    .line 173
    sget v0, Lcom/facebook/av;->privacy_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->aj:Landroid/widget/CompoundButton;

    .line 175
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 176
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 177
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 178
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 179
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 180
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-interface {v0, v3}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ah:Landroid/widget/Spinner;

    new-instance v3, Lcom/instagram/android/fragment/ap;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/android/fragment/ap;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/instagram/ui/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/instagram/ui/c/c;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 191
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    const/16 v3, 0x90

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/f/a;

    iget-object v4, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/instagram/android/f/a;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/f/a;

    iget-object v4, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    sget v5, Lcom/instagram/android/f/c;->a:I

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/f/a;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->aa:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/fragment/ag;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ag;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->i:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/fragment/ah;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ah;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v3, p0, Lcom/instagram/android/fragment/ac;->aj:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    sget-object v4, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->ak:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/fragment/ai;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ai;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/ac;->c(Z)V

    .line 235
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 221
    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 591
    sget v0, Lcom/facebook/az;->edit_profile:I

    new-instance v1, Lcom/instagram/android/fragment/ae;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ae;-><init>(Lcom/instagram/android/fragment/ac;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 602
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/g/b/c;

    if-nez v0, :cond_0

    .line 603
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ac;->b:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 604
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_refresh:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 606
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->h:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ac;->c:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 132
    invoke-direct {p0}, Lcom/instagram/android/fragment/ac;->Y()V

    .line 133
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    const-string v0, "edit_profile"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 241
    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->e:Lcom/instagram/android/fragment/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ao;->removeMessages(I)V

    .line 243
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 245
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 246
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 247
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 248
    iget-object v1, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 250
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ab:Landroid/widget/EditText;

    .line 251
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ac:Landroid/widget/EditText;

    .line 252
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ad:Landroid/widget/EditText;

    .line 253
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ae:Landroid/widget/EditText;

    .line 254
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->af:Landroid/widget/EditText;

    .line 255
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ag:Landroid/widget/TextView;

    .line 256
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ah:Landroid/widget/Spinner;

    .line 257
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->i:Landroid/view/View;

    .line 258
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ak:Landroid/view/View;

    .line 259
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->ai:Landroid/view/View;

    .line 260
    iput-object v2, p0, Lcom/instagram/android/fragment/ac;->aj:Landroid/widget/CompoundButton;

    .line 261
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 137
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ac;->a(I)V

    .line 138
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    return-void
.end method
