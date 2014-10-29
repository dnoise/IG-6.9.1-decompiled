.class public Lcom/instagram/android/directshare/d/c;
.super Lcom/instagram/base/a/b;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/directshare/d/b;
.implements Lcom/instagram/android/feed/a/a/q;
.implements Lcom/instagram/feed/g/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private aa:Landroid/widget/AutoCompleteTextView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:Lcom/instagram/model/b/a;

.field private ak:Lcom/instagram/ui/f/b;

.field private al:Lcom/instagram/android/feed/e/k;

.field private am:Lcom/instagram/common/a/a/k;

.field private an:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/android/c2dm/a;",
            ">;"
        }
    .end annotation
.end field

.field private final ao:Lcom/instagram/common/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/d",
            "<",
            "Lcom/instagram/feed/d/t;",
            ">;"
        }
    .end annotation
.end field

.field private final ap:Landroid/content/BroadcastReceiver;

.field private final aq:Landroid/content/BroadcastReceiver;

.field private final ar:Landroid/text/TextWatcher;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Lcom/instagram/feed/d/l;

.field private e:Lcom/instagram/android/directshare/d/a;

.field private f:Lcom/instagram/android/feed/a/a/m;

.field private g:Landroid/widget/ListView;

.field private h:Z

.field private i:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/instagram/android/directshare/d/c;

    sput-object v0, Lcom/instagram/android/directshare/d/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    .line 144
    new-instance v0, Lcom/instagram/android/directshare/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/d;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ao:Lcom/instagram/common/j/d;

    .line 157
    new-instance v0, Lcom/instagram/android/directshare/d/o;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/o;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcom/instagram/android/directshare/d/s;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/s;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    .line 903
    new-instance v0, Lcom/instagram/android/directshare/d/r;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/r;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ar:Landroid/text/TextWatcher;

    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    .line 390
    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    .line 391
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Z()V

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->X()V

    .line 396
    return-void
.end method

.method private X()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/a/a/k;

    new-instance v1, Lcom/instagram/f/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/instagram/f/a/a/k;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/instagram/android/directshare/d/x;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/x;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v1, v2}, Lcom/instagram/f/a/a/k;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 449
    return-void
.end method

.method private Y()V
    .locals 3

    .prologue
    .line 452
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->post_deleted:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/directshare/d/y;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/y;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 463
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->C()I

    move-result v0

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/d/a;->a(Lcom/instagram/feed/d/l;)V

    .line 468
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ab()V

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ah:Z

    if-nez v0, :cond_1

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ah:Z

    .line 474
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "opened_via_push"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/a/a;->a(Lcom/instagram/feed/d/l;Z)V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    return-object p1
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/a/a/k;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Lcom/instagram/common/a/a/k;Lcom/instagram/feed/d/l;II)V

    .line 585
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/c;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/feed/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aa()V
    .locals 2

    .prologue
    .line 483
    invoke-static {}, Lcom/instagram/feed/d/ak;->a()Lcom/instagram/feed/d/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ak;->a(Lcom/instagram/feed/d/l;)V

    .line 484
    return-void
.end method

.method private ab()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 491
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 492
    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/au;->feed_button_like_background_liked:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/directshare/d/z;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/z;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->ar:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/e;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 520
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/f;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/f;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 528
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/directshare/d/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/g;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/directshare/d/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/h;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->E()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 545
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ae:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    .line 547
    iput-boolean v1, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    .line 549
    :cond_1
    return-void

    .line 492
    :cond_2
    sget v0, Lcom/facebook/au;->feed_button_like_background:I

    goto :goto_0

    .line 543
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ad()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->b(Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void
.end method

.method private ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ae()V
    .locals 2

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 571
    return-void

    .line 569
    :cond_0
    const/16 v0, 0x4d

    goto :goto_0
.end method

.method private af()Lcom/instagram/android/directshare/d/a;
    .locals 3

    .prologue
    .line 574
    new-instance v0, Lcom/instagram/android/directshare/d/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/directshare/d/a;-><init>(Landroid/content/Context;Lcom/instagram/android/directshare/d/b;Lcom/instagram/android/feed/a/a/ah;)V

    return-object v0
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/d/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 605
    :cond_0
    return-void
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/i;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 616
    :cond_0
    return-void
.end method

.method private ai()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 629
    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/d/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 630
    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->scrollBy(II)V

    .line 638
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->scrollBy(II)V

    goto :goto_0
.end method

.method private aj()V
    .locals 4

    .prologue
    .line 643
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    .line 646
    :cond_0
    return-void
.end method

.method private ak()Z
    .locals 1

    .prologue
    .line 654
    invoke-static {}, Lcom/instagram/creation/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Z()V

    return-void
.end method

.method private b(Lcom/instagram/model/b/a;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    .line 802
    new-instance v0, Lcom/instagram/ui/g/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/ui/g/a;-><init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V

    .line 805
    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->a(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Lcom/instagram/ui/g/a;->c()V

    .line 807
    new-instance v1, Lcom/instagram/android/directshare/d/n;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/directshare/d/n;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/model/b/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->a(Landroid/view/View$OnClickListener;)V

    .line 815
    invoke-static {}, Lcom/instagram/ui/f/a;->a()Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/ui/f/a;->a(Landroid/view/View;)Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/f/a;->a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/a;->b()Lcom/instagram/ui/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/f/a;->a(Landroid/content/Context;)Lcom/instagram/ui/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    .line 821
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->a()V

    .line 822
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 588
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->z()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/instagram/android/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;)V

    .line 591
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/instagram/model/b/c;->c:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    .line 598
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    .line 599
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/directshare/d/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->af:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 732
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->delete_comment_are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/directshare/d/l;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/directshare/d/l;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 747
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/directshare/d/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/instagram/android/directshare/d/c;->ag:Z

    return p1
.end method

.method static synthetic d(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ai()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->X()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/directshare/d/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .locals 1
    .parameter

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 853
    return-void
.end method

.method static synthetic g(Lcom/instagram/android/directshare/d/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->af:Z

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ah()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/directshare/d/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aa()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ae()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->Y()V

    return-void
.end method

.method static synthetic m(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ac()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ag()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 326
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 327
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aj()V

    .line 330
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->aa()V

    .line 333
    :cond_0
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 335
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/directshare/d/c;->ai:I

    .line 336
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 338
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ae()V

    .line 340
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->a()V

    .line 341
    return-void
.end method

.method public final G()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 309
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->i()V

    .line 310
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 312
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/directshare/d/c;->ai:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 313
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 315
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->b()V

    .line 316
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->ao:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 371
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 373
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 375
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 377
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 378
    return-void
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 249
    sget v0, Lcom/facebook/aw;->layout_directshare_permalink:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v2, v1}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V

    .line 667
    iput-boolean v2, p0, Lcom/instagram/android/directshare/d/c;->ac:Z

    .line 670
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mediaId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ae:Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    .line 187
    :cond_0
    new-instance v0, Lcom/instagram/android/feed/e/k;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/k;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->al:Lcom/instagram/android/feed/e/k;

    .line 188
    new-instance v0, Lcom/instagram/android/feed/a/a/m;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/a/a/m;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    .line 189
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/q;)V

    .line 190
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->af()Lcom/instagram/android/directshare/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    .line 191
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->am:Lcom/instagram/common/a/a/k;

    .line 193
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->W()V

    .line 195
    new-instance v0, Lcom/instagram/android/directshare/d/t;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/t;-><init>(Lcom/instagram/android/directshare/d/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->an:Lcom/instagram/common/j/e;

    .line 219
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/c;->ao:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 227
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->ap:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 231
    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aq:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/feed/d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 235
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 256
    sget v0, Lcom/facebook/av;->permalink_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ObservableLinearLayout;

    .line 258
    new-instance v1, Lcom/instagram/android/directshare/d/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/v;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ObservableLinearLayout;->setOnSizeChangedListener(Lcom/instagram/android/widget/p;)V

    .line 272
    sget v0, Lcom/facebook/av;->button_like_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    .line 275
    sget v0, Lcom/facebook/av;->button_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    .line 276
    sget v0, Lcom/facebook/av;->layout_comment_thread_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    .line 278
    sget v0, Lcom/facebook/av;->layout_comment_thread_button_send:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    .line 280
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v2}, Lcom/instagram/common/y/f;->d(Landroid/view/View;I)V

    .line 282
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ab()V

    .line 284
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 286
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/ab;

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/directshare/d/ab;-><init>(Lcom/instagram/android/directshare/d/c;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->e:Lcom/instagram/android/directshare/d/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/d/w;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/w;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 303
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 826
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 827
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Lcom/instagram/android/directshare/d/p;

    invoke-direct {v3, p0}, Lcom/instagram/android/directshare/d/p;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-interface {p1, v0, v3}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 833
    iget-boolean v0, p0, Lcom/instagram/android/directshare/d/c;->ag:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 835
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 836
    sget v0, Lcom/facebook/az;->directshare_permalink_title:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/directshare/d/c;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->al()Lcom/instagram/model/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/directshare/d/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/directshare/d/q;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/q;-><init>(Lcom/instagram/android/directshare/d/c;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 849
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 827
    goto :goto_0
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 696
    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 706
    :goto_0
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/instagram/android/directshare/d/k;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/android/directshare/d/k;-><init>(Lcom/instagram/android/directshare/d/c;[Ljava/lang/String;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 729
    return-void

    .line 696
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/m;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V

    .line 677
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/model/b/a;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    .line 784
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->c()V

    .line 786
    invoke-virtual {p1, v0}, Lcom/instagram/model/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/model/b/a;Landroid/view/View;)V

    .line 789
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 754
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/c;->ak()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 758
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 759
    new-instance v1, Lcom/instagram/android/directshare/d/m;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/directshare/d/m;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V

    .line 773
    sget v2, Lcom/facebook/az;->failed:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->try_again:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 778
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    sget v0, Lcom/instagram/feed/d/o;->a:I

    sget v1, Lcom/instagram/android/g/g;->b:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/directshare/d/c;->a(II)V

    .line 683
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/directshare/d/j;

    invoke-direct {v1, p0, p3}, Lcom/instagram/android/directshare/d/j;-><init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/android/feed/a/b/ac;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V

    .line 794
    iput-object v1, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    .line 796
    :cond_0
    iput-object v1, p0, Lcom/instagram/android/directshare/d/c;->aj:Lcom/instagram/model/b/a;

    .line 797
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 321
    const-string v0, "scroll"

    iget-boolean v1, p0, Lcom/instagram/android/directshare/d/c;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-void
.end method

.method public final i_()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->f:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->d()V

    .line 660
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    const-string v0, "direct_share_permalink"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 240
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 244
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->f(I)V

    .line 245
    return-void
.end method

.method public final l_()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 361
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/d/c;->f(I)V

    .line 364
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 346
    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->aa:Landroid/widget/AutoCompleteTextView;

    .line 347
    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->i:Landroid/widget/ImageView;

    .line 348
    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->g:Landroid/widget/ListView;

    .line 349
    iput-object v2, p0, Lcom/instagram/android/directshare/d/c;->ab:Landroid/widget/ImageView;

    .line 351
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/instagram/android/directshare/d/c;->ak:Lcom/instagram/ui/f/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/f/b;->a(Landroid/os/Handler;)V

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 356
    return-void
.end method

.method public final p_()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public final r_()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 383
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/c;->c()V

    .line 384
    return-void
.end method
