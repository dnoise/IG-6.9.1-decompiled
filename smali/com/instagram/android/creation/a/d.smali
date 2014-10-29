.class public final Lcom/instagram/android/creation/a/d;
.super Lcom/instagram/base/a/b;
.source "DirectShareFragment.java"

# interfaces
.implements Lcom/instagram/android/directshare/widget/j;
.implements Lcom/instagram/creation/b/a/h;


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;

.field private aa:Lcom/instagram/android/creation/a/a;

.field private ab:Lcom/instagram/common/a/a/k;

.field private ac:Lcom/instagram/android/directshare/widget/i;

.field private ad:Z

.field private ae:Lcom/instagram/android/directshare/widget/d;

.field private af:Ljava/lang/Runnable;

.field private ag:Landroid/app/Dialog;

.field private final ah:Lcom/instagram/common/ui/a/a;

.field private final ai:Landroid/os/Handler;

.field private aj:Lcom/instagram/android/creation/a;

.field private ak:Z

.field private al:Lcom/instagram/common/d/h;

.field private am:Lcom/instagram/android/creation/a/r;

.field private an:Lcom/instagram/android/creation/a/s;

.field private final ao:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/android/k/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/HorizontalScrollView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 91
    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    .line 92
    new-instance v0, Lcom/instagram/android/creation/a/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/e;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/instagram/android/creation/a/r;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/r;-><init>(Lcom/instagram/android/creation/a/d;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->am:Lcom/instagram/android/creation/a/r;

    .line 117
    new-instance v0, Lcom/instagram/android/creation/a/s;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/s;-><init>(Lcom/instagram/android/creation/a/d;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->an:Lcom/instagram/android/creation/a/s;

    .line 127
    new-instance v0, Lcom/instagram/android/creation/a/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/i;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ao:Lcom/instagram/common/a/a/j;

    .line 600
    return-void
.end method

.method private X()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ae()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    .line 383
    :cond_0
    return-void
.end method

.method private Y()Lcom/instagram/android/directshare/widget/i;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/instagram/android/directshare/widget/i;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/directshare/widget/i;-><init>(Landroid/content/Context;Lcom/instagram/android/directshare/widget/j;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    return-object v0
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    sget v1, Lcom/facebook/az;->directshare_search_edit_text_hint:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setHint(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method private a(Landroid/view/View;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/directshare/widget/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 391
    :cond_0
    sget v0, Lcom/facebook/av;->recipient_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 392
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;

    move-result-object v3

    .line 393
    new-instance v4, Lcom/instagram/creation/b/a/f;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/instagram/creation/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/g;->b(Lcom/instagram/creation/b/a/f;)V

    .line 398
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/g;->a()I

    move-result v3

    const/16 v5, 0xf

    if-ge v3, v5, :cond_4

    .line 401
    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/g;->a(Lcom/instagram/creation/b/a/f;)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 404
    :cond_4
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->directshare_max_recipients_reached_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_max_recipients_reached_body:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    .line 409
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/a/d;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->search_for_x:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    return p1
.end method

.method private aa()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ac()V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ab()V

    goto :goto_0
.end method

.method private ab()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setVisibility(I)V

    .line 564
    return-void
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setVisibility(I)V

    .line 569
    return-void
.end method

.method private ad()V
    .locals 2

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->W()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->b(Ljava/util/List;)V

    .line 593
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/i;->notifyDataSetChanged()V

    .line 594
    return-void
.end method

.method private ae()I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private af()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 652
    const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    .line 653
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 649
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->aa()V

    return-void
.end method

.method private static c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v1, "MetadataFragment.IS_DS_SHARE_ENABLED"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 541
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->af()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ad()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/creation/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    return v0
.end method

.method static synthetic k(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ab()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/android/creation/a/d;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/instagram/android/creation/a/d;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ae()I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/instagram/android/creation/a/d;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/android/creation/a/d;)Lcom/instagram/common/ui/a/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/instagram/android/creation/a/d;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 424
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 433
    :cond_1
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 434
    return-void
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->b()Z

    move-result v0

    return v0
.end method

.method public final W()Ljava/util/List;
    .locals 1
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
    .line 588
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 175
    sget v0, Lcom/facebook/aw;->layout_listview:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 177
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    .line 178
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 179
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget v0, Lcom/facebook/aw;->view_switcher_buttons:I

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 186
    sget v2, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    new-instance v2, Lcom/instagram/android/creation/a/a;

    invoke-direct {v2, v0}, Lcom/instagram/android/creation/a/a;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    .line 189
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/a/a;->a(I)V

    .line 190
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/a;->a()V

    .line 193
    :cond_0
    sget v0, Lcom/facebook/aw;->row_directshare_metadata_header:I

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 195
    sget v0, Lcom/facebook/av;->recipients_scroll_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    .line 197
    sget v0, Lcom/facebook/av;->recipients_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    .line 198
    sget v0, Lcom/facebook/av;->people_picker_search:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/facebook/av;->search_edit_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    .line 201
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v5}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setClearButtonEnabled(Z)V

    .line 203
    sget v0, Lcom/facebook/aw;->directshare_row_search:I

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    const-string v3, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v3, Lcom/facebook/av;->search_glyph:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 207
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v3, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    .line 209
    sget v0, Lcom/facebook/aw;->row_caption:I

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 210
    sget v0, Lcom/facebook/av;->row_caption_directshare:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 211
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/instagram/common/y/f;->b(Landroid/view/View;I)V

    .line 214
    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    .line 216
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/instagram/common/y/f;->a(Landroid/view/View;I)V

    .line 220
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 221
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->af()V

    .line 223
    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 470
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->an:Lcom/instagram/android/creation/a/s;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED"

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->am:Lcom/instagram/android/creation/a/r;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/d/h;

    .line 477
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 478
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 169
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ab:Lcom/instagram/common/a/a/k;

    .line 170
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    new-instance v0, Lcom/instagram/android/creation/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, v1, p1, p0}, Lcom/instagram/android/creation/a;-><init>(Lcom/instagram/creation/b/a/b;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    .line 246
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a;->a()V

    .line 248
    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/instagram/android/creation/a/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/k;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 258
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    new-instance v1, Lcom/instagram/android/creation/a/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/l;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->W()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->b(Ljava/util/List;)V

    .line 270
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/creation/a/m;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/m;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/creation/a/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/n;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/o;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/o;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/p;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/g;)V

    .line 336
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 338
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/creation/a/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/f;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    new-instance v0, Lcom/instagram/android/creation/a/g;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/g;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ae:Lcom/instagram/android/directshare/widget/d;

    .line 355
    new-instance v0, Lcom/instagram/android/creation/a/h;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/h;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->af:Ljava/lang/Runnable;

    .line 375
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->b()V

    .line 376
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/j;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/creation/a/j;-><init>(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 626
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->clearFocus()V

    .line 630
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->ab:Lcom/instagram/common/a/a/k;

    new-instance v2, Lcom/instagram/android/c/a/ac;

    invoke-direct {v2, v0}, Lcom/instagram/android/c/a/ac;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ao:Lcom/instagram/common/a/a/j;

    invoke-virtual {v2, v0}, Lcom/instagram/android/c/a/ac;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v5

    .line 497
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 501
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ae()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    move v2, v3

    .line 503
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 504
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    .line 505
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v7, Lcom/facebook/aw;->directshare_recipient:I

    iget-object v8, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    .line 508
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setTooltipString(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setUrl(Ljava/lang/String;)V

    .line 510
    iget-object v7, p0, Lcom/instagram/android/creation/a/d;->ae:Lcom/instagram/android/directshare/widget/d;

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/d;)V

    .line 511
    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setTag(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 503
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 520
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Z()V

    .line 526
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->aa()V

    .line 528
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 531
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->af:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Lcom/instagram/android/creation/a/d;->c(Z)V

    .line 535
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->e()Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->f()I

    move-result v0

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->h(Landroid/os/Bundle;)V

    .line 417
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/creation/a/q;-><init>(Lcom/instagram/android/creation/a/d;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 418
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    const-string v0, "metadata_direct_share"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 440
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/g;->a(Lcom/instagram/creation/b/a/h;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v2}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 448
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v2}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/g;)V

    .line 449
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 452
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    .line 453
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    .line 454
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    .line 455
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 458
    :cond_1
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    .line 459
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    .line 460
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    .line 461
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    .line 462
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    .line 464
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    .line 465
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 483
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 484
    return-void
.end method
