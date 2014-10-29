.class public final Lcom/instagram/android/login/fragment/an;
.super Lcom/instagram/base/a/b;
.source "RegisterFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/e/a;
.implements Lcom/instagram/android/login/fragment/cv;
.implements Lcom/instagram/android/nux/e;


# static fields
.field private static a:I


# instance fields
.field private aA:Lcom/instagram/android/login/fragment/bx;

.field private aB:Lcom/instagram/android/login/fragment/bx;

.field private aC:Lcom/instagram/android/login/fragment/bx;

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Ljava/lang/String;

.field private aI:Z

.field private aJ:Ljava/lang/String;

.field private aa:Lcom/instagram/android/login/c/p;

.field private ab:Lcom/instagram/android/d/a;

.field private ac:Lcom/instagram/android/nux/a;

.field private ad:Lcom/instagram/common/d/h;

.field private ae:Lcom/instagram/android/login/k;

.field private af:Lcom/instagram/android/login/k;

.field private ag:Landroid/widget/AutoCompleteTextView;

.field private ah:Landroid/widget/EditText;

.field private ai:Landroid/widget/EditText;

.field private aj:Landroid/widget/EditText;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/EditText;

.field private ao:Landroid/widget/EditText;

.field private ap:Landroid/widget/ImageView;

.field private aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;

.field private ar:Landroid/view/View;

.field private as:Landroid/view/View;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private av:Landroid/view/View;

.field private aw:Lcom/instagram/common/r/a;

.field private ax:Lcom/facebook/i/d;

.field private ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;

.field private az:Lcom/instagram/android/login/fragment/bx;

.field private final b:Lcom/instagram/android/login/fragment/br;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/instagram/quicksand/a;

.field private e:Lcom/instagram/common/a/a/k;

.field private f:Lcom/instagram/android/login/c/l;

.field private g:Lcom/instagram/android/login/fragment/RegisterParameters;

.field private h:Lcom/instagram/android/login/c/a;

.field private i:Lcom/instagram/android/login/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    sput v0, Lcom/instagram/android/login/fragment/an;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 129
    new-instance v0, Lcom/instagram/android/login/fragment/br;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/br;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;

    .line 131
    new-instance v0, Lcom/instagram/android/login/fragment/ao;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/ao;-><init>(Lcom/instagram/android/login/fragment/an;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;

    .line 191
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    .line 192
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    .line 193
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    .line 194
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;

    .line 196
    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aD:Z

    .line 197
    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aE:Z

    .line 198
    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aF:Z

    .line 201
    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aG:Z

    .line 203
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    .line 208
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;

    .line 1511
    return-void
.end method

.method static synthetic A(Lcom/instagram/android/login/fragment/an;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aD:Z

    return v0
.end method

.method static synthetic B(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    return-object v0
.end method

.method static synthetic C(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ad()V

    return-void
.end method

.method static synthetic D(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/quicksand/a;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    return-object v0
.end method

.method static synthetic E(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->am()V

    return-void
.end method

.method static synthetic F(Lcom/instagram/android/login/fragment/an;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    return v0
.end method

.method static synthetic V()I
    .locals 2

    .prologue
    .line 117
    sget v0, Lcom/instagram/android/login/fragment/an;->a:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/instagram/android/login/fragment/an;->a:I

    return v0
.end method

.method private W()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private X()Ljava/lang/String;
    .locals 3

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    .line 567
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 568
    if-gtz v1, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/ui/c/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Y()V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->X()Ljava/lang/String;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V

    .line 591
    new-instance v0, Lcom/instagram/android/login/a;

    invoke-direct {v0}, Lcom/instagram/android/login/a;-><init>()V

    .line 593
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->b:Ljava/lang/String;

    .line 594
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->c:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v1}, Lcom/instagram/android/d/a;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    .line 596
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->f:Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->e:Ljava/lang/String;

    .line 598
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->g:Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-virtual {v1}, Lcom/instagram/quicksand/a;->a()V

    .line 602
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-virtual {v1}, Lcom/instagram/quicksand/a;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->j:Ljava/util/List;

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v1, v2, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->a:Ljava/lang/String;

    .line 607
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->d:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->i:Lcom/instagram/android/login/c/b;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/b;->a(Lcom/instagram/android/login/a;)V

    .line 614
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->a:Ljava/lang/String;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/a;->d:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aa:Lcom/instagram/android/login/c/p;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/p;->a(Lcom/instagram/android/login/a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)Lcom/instagram/android/login/k;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/quicksand/a;)Lcom/instagram/quicksand/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    .line 1297
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1300
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    .line 1302
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/instagram/android/login/fragment/bx;->a(Lcom/instagram/android/login/fragment/bx;Landroid/content/Context;)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 1009
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1010
    if-eqz v4, :cond_0

    .line 1011
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1009
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    .line 1253
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z

    .line 1256
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/instagram/android/login/fragment/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;

    .line 1055
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V

    .line 1056
    return-void
.end method

.method private a(Lcom/instagram/android/login/k;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1017
    sget-object v0, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne p1, v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    sget v0, Lcom/facebook/az;->use_email_address:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->f(Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1024
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1025
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    sget v1, Lcom/facebook/az;->email:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1027
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->profile_glyph_email:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1030
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    sget-object v0, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;

    if-ne p1, v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1037
    sget v0, Lcom/facebook/az;->use_phone_number:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->f(Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1040
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    const-string v1, "0123456789()- "

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1041
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1042
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    sget v1, Lcom/facebook/az;->phone:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1044
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->profile_glyph_phone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1047
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/an;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/instagram/android/login/fragment/an;->aE:Z

    return p1
.end method

.method private aa()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 649
    sget-object v0, Lcom/instagram/p/b;->S:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_0

    .line 651
    const-string v1, "email_error"

    invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_1

    .line 654
    const-string v1, "phone_error"

    invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_2

    .line 657
    const-string v1, "username_available"

    invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_3

    .line 660
    const-string v1, "username_error"

    invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 662
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_4

    .line 663
    const-string v1, "password_error"

    invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 665
    :cond_4
    const-string v1, "method"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    invoke-virtual {v2}, Lcom/instagram/android/login/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 666
    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 669
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x139b37cbc60L

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 670
    sget v0, Lcom/facebook/az;->wrong_datetime:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 717
    :goto_0
    return-void

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 676
    invoke-direct {p0, v4}, Lcom/instagram/android/login/fragment/an;->c(Z)V

    goto :goto_0

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v0, v1, :cond_9

    .line 681
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    .line 682
    iget-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aG:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 683
    :cond_7
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Z()V

    goto :goto_0

    .line 685
    :cond_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 686
    sget v2, Lcom/facebook/az;->you_entered_your_email_as:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 687
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 688
    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 689
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 690
    sget v0, Lcom/facebook/az;->is_this_correct:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 692
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes:I

    new-instance v2, Lcom/instagram/android/login/fragment/bq;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bq;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->no:I

    new-instance v2, Lcom/instagram/android/login/fragment/bp;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bp;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 715
    :cond_9
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Z()V

    goto/16 :goto_0
.end method

.method private ab()V
    .locals 5

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aF:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/d/a;->g()V

    .line 728
    :cond_0
    new-instance v0, Lcom/instagram/android/login/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->z()Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/instagram/android/login/fragment/ap;

    invoke-direct {v4, p0}, Lcom/instagram/android/login/fragment/ap;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;

    .line 779
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Y()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/ar;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ar;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/as;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/as;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/at;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/at;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 843
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/instagram/android/login/fragment/au;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/au;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 865
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/instagram/android/login/fragment/av;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/av;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 878
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/aw;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/aw;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 910
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;

    new-instance v1, Lcom/instagram/android/login/fragment/ay;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ay;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/az;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/az;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 931
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/ba;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ba;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 949
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/bd;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bd;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 962
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/be;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/be;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/bf;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bf;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 982
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/bg;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bg;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 996
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/login/fragment/bh;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bh;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    return-void
.end method

.method private ac()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 1098
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/instagram/common/y/e;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1099
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    :goto_1
    return-void

    .line 1105
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1106
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v3

    sget v4, Lcom/facebook/aw;->row_autocomplete_email:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1109
    iget-object v3, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v4, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v3, v4, :cond_3

    .line 1110
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 1113
    :cond_3
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ad()V
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/instagram/p/b;->O:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 1175
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 1176
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/d/a;->g()V

    .line 1177
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aE:Z

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;

    invoke-virtual {v0}, Lcom/instagram/android/nux/a;->b()V

    .line 1180
    :cond_0
    return-void
.end method

.method private ae()V
    .locals 2

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1219
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1220
    return-void
.end method

.method private af()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private al()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private am()V
    .locals 3

    .prologue
    .line 1328
    invoke-static {}, Lcom/instagram/common/z/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    new-instance v1, Lcom/instagram/android/login/c/l;

    const-string v2, "signup"

    invoke-direct {v1, v2, v0}, Lcom/instagram/android/login/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/l;

    .line 1330
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/l;

    new-instance v1, Lcom/instagram/android/login/fragment/bu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/login/fragment/bu;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/l;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 1331
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->e:Lcom/instagram/common/a/a/k;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/l;

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 1332
    return-void
.end method

.method private an()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1365
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->g()V

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    .line 1370
    invoke-static {}, Lcom/instagram/common/u/b/i;->a()Lcom/instagram/common/u/b/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/u/b/h;->a(Landroid/content/Context;)V

    .line 1372
    invoke-static {}, Lcom/instagram/share/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    invoke-static {}, Lcom/instagram/share/b/a;->e()V

    .line 1376
    :cond_1
    invoke-static {}, Lcom/instagram/share/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1377
    invoke-static {}, Lcom/instagram/share/f/a;->d()V

    .line 1380
    :cond_2
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1381
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->e()V

    .line 1384
    :cond_3
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1388
    new-instance v1, Lcom/instagram/android/fragment/fx;

    invoke-direct {v1}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/az;->find_friends_item_facebook_friends:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v4, v3}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 1410
    :goto_0
    return-void

    .line 1397
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1398
    const-string v0, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1400
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/instagram/android/fragment/bx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/bx;-><init>()V

    .line 1405
    :goto_1
    new-instance v2, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v2, v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 1400
    :cond_5
    new-instance v0, Lcom/instagram/android/fragment/bi;

    invoke-direct {v0}, Lcom/instagram/android/fragment/bi;-><init>()V

    goto :goto_1
.end method

.method private ao()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aw:Lcom/instagram/common/r/a;

    invoke-virtual {v0}, Lcom/instagram/common/r/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;

    invoke-virtual {v2, v0}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;

    const-string v2, "US"

    invoke-virtual {v1, v2}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ap()V
    .locals 2

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1461
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1468
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1469
    sget-object v0, Lcom/instagram/p/b;->R:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 1471
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->an()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/k;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/instagram/android/login/fragment/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    .line 1060
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V

    .line 1061
    return-void
.end method

.method private b(Lcom/instagram/android/nux/j;)V
    .locals 1
    .parameter

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Z)V

    .line 1142
    invoke-virtual {p1}, Lcom/instagram/android/nux/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p1}, Lcom/instagram/android/nux/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->h(Ljava/lang/String;)V

    .line 1145
    sget-object v0, Lcom/instagram/p/b;->M:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 1148
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 372
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 373
    sget v1, Lcom/facebook/az;->email_suggestion_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    .line 374
    invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    .line 375
    sget v1, Lcom/facebook/az;->yes:I

    new-instance v2, Lcom/instagram/android/login/fragment/bl;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/login/fragment/bl;-><init>(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 384
    sget v1, Lcom/facebook/az;->no:I

    new-instance v2, Lcom/instagram/android/login/fragment/bm;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bm;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 392
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 393
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/bx;)V

    return-void
.end method

.method private c(Lcom/instagram/android/login/fragment/bx;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1064
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    .line 1065
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v1, v2}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V

    .line 1066
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1069
    :goto_0
    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Z)V

    .line 1070
    return-void

    .line 1066
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1118
    if-nez p1, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object p1

    .line 1121
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1122
    invoke-static {p1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1123
    if-eqz v0, :cond_1

    .line 1124
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V

    .line 1138
    :cond_1
    :goto_0
    return-void

    .line 1128
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;

    invoke-virtual {v1}, Lcom/instagram/android/login/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    if-eqz v0, :cond_3

    .line 1132
    sget-object v0, Lcom/instagram/p/b;->y:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/login/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 619
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/facebook/az;->username_taken:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/an;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/az;->here_are_some_suggestions:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 624
    new-instance v2, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->b()Lcom/instagram/ui/dialog/b;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/bo;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/login/fragment/bo;-><init>(Lcom/instagram/android/login/fragment/an;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 646
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/bx;)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->g(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/instagram/android/login/fragment/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    .line 1074
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V

    .line 1075
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 720
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 721
    return-void

    .line 720
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1264
    return-void
.end method

.method private e(Z)V
    .locals 6
    .parameter

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    sget v0, Lcom/facebook/as;->grey_2:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1079
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1080
    if-eqz v4, :cond_0

    .line 1081
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1078
    :cond_1
    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_3

    sget v0, Lcom/facebook/as;->grey_medium:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1086
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1087
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1088
    return-void

    .line 1084
    :cond_3
    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    goto :goto_2
.end method

.method static synthetic f(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method static synthetic g(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/d/a;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method static synthetic h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method static synthetic i(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method static synthetic j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Y()V

    return-void
.end method

.method static synthetic m(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ap()V

    return-void
.end method

.method static synthetic o(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aa()V

    return-void
.end method

.method static synthetic p(Lcom/instagram/android/login/fragment/an;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Z()V

    return-void
.end method

.method static synthetic s(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/c/a;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;

    return-object v0
.end method

.method static synthetic t(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/ui/widget/spinner/RefreshSpinner;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    return-object v0
.end method

.method static synthetic u(Lcom/instagram/android/login/fragment/an;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aD:Z

    return v0
.end method

.method static synthetic v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    return-object v0
.end method

.method static synthetic w(Lcom/instagram/android/login/fragment/an;)Lcom/facebook/i/d;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;

    return-object v0
.end method

.method static synthetic x(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    return-object v0
.end method

.method static synthetic y(Lcom/instagram/android/login/fragment/an;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Z)V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 1414
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 1415
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 1417
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-virtual {v0}, Lcom/instagram/quicksand/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1431
    :goto_0
    return-void

    .line 1425
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->am()V

    goto :goto_0

    .line 1429
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->am()V

    goto :goto_0
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 1435
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 1436
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 1438
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-virtual {v0}, Lcom/instagram/quicksand/a;->a()V

    .line 1441
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/d/a;->d()V

    .line 286
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 287
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 398
    sget v0, Lcom/facebook/aw;->fragment_register:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 400
    sget v0, Lcom/facebook/av;->email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    .line 401
    sget v0, Lcom/facebook/av;->phone:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    .line 402
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 403
    sget v0, Lcom/facebook/av;->phone_toggle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    .line 404
    sget v0, Lcom/facebook/av;->country_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    .line 405
    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    .line 406
    sget v0, Lcom/facebook/av;->password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    .line 407
    sget v0, Lcom/facebook/av;->use_my_facebook_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    .line 408
    sget v0, Lcom/facebook/av;->name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    .line 409
    sget v0, Lcom/facebook/av;->optional_contact:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    .line 410
    sget v0, Lcom/facebook/av;->avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;

    .line 411
    sget v0, Lcom/facebook/av;->fragment_sign_up_username_spinner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    .line 413
    sget v0, Lcom/facebook/av;->username_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;

    .line 414
    sget v0, Lcom/facebook/av;->show_suggested_usernames:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;

    .line 415
    sget v0, Lcom/facebook/av;->show_suggested_usernames_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;

    .line 417
    sget v0, Lcom/facebook/av;->phone_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 421
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;

    if-eq v0, v2, :cond_0

    .line 422
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/k;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/bx;)V

    .line 427
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/bx;)V

    .line 428
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V

    .line 429
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/bx;)V

    .line 430
    invoke-direct {p0, v7}, Lcom/instagram/android/login/fragment/an;->e(Z)V

    .line 432
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aF:Z

    .line 434
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 440
    sget-object v0, Lcom/instagram/p/b;->L:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 441
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V

    .line 444
    iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aG:Z

    .line 445
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 451
    sget-object v0, Lcom/instagram/p/b;->K:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 452
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->g(Ljava/lang/String;)V

    .line 455
    iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aD:Z

    .line 456
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 460
    sget-object v0, Lcom/instagram/p/b;->M:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 461
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->h(Ljava/lang/String;)V

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v0, v2, :cond_4

    .line 465
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V

    .line 468
    :cond_4
    new-instance v0, Lcom/instagram/android/login/fragment/bs;

    invoke-direct {v0, p0, v6}, Lcom/instagram/android/login/fragment/bs;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    .line 470
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 472
    iget-boolean v2, p0, Lcom/instagram/android/login/fragment/an;->aG:Z

    if-nez v2, :cond_5

    .line 473
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/instagram/android/login/fragment/bn;

    invoke-direct {v3, p0}, Lcom/instagram/android/login/fragment/bn;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    :cond_5
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 489
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 490
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Lcom/instagram/android/login/fragment/bw;

    invoke-direct {v3, v6}, Lcom/instagram/android/login/fragment/bw;-><init>(B)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 493
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Lcom/instagram/ui/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/ui/c/c;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 499
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    const/16 v2, 0x90

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 501
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 503
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 504
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 505
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 506
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 507
    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 509
    sget v0, Lcom/facebook/av;->tos_warning:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 510
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 511
    sget v2, Lcom/facebook/az;->tos_warning_with_privacy_policy:I

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/terms/&quot;&gt;"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/facebook/az;->terms_of_service:I

    invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lt;/a&gt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/privacy/&quot;&gt;"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/facebook/az;->privacy_policy:I

    invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lt;/a&gt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/an;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-object v1

    .line 447
    :cond_6
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ac()V

    goto/16 :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 295
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 296
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/instagram/android/d/a;->a(IILandroid/content/Intent;Z)V

    .line 297
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1308
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 214
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->e:Lcom/instagram/common/a/a/k;

    .line 216
    new-instance v0, Lcom/instagram/android/d/a;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/a;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    .line 217
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/fragment/RegisterParameters;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 225
    new-instance v1, Lcom/instagram/common/r/a;

    invoke-direct {v1, v0}, Lcom/instagram/common/r/a;-><init>(Landroid/telephony/TelephonyManager;)V

    iput-object v1, p0, Lcom/instagram/android/login/fragment/an;->aw:Lcom/instagram/common/r/a;

    .line 226
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;

    .line 227
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .line 229
    invoke-static {}, Lcom/instagram/android/login/k;->b()Lcom/instagram/android/login/k;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;

    .line 230
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/f/a;->a(Z)V

    .line 234
    sget-object v0, Lcom/instagram/p/b;->w:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "method"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;

    invoke-virtual {v2}, Lcom/instagram/android/login/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "qe_synching"

    invoke-static {}, Lcom/instagram/m/j;->a()Lcom/instagram/m/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/instagram/m/i;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 238
    return-void

    .line 220
    :cond_0
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-direct {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 562
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/d/a;->a()V

    .line 563
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 1318
    sget v0, Lcom/facebook/az;->new_account:I

    new-instance v1, Lcom/instagram/android/login/fragment/bi;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bi;-><init>(Lcom/instagram/android/login/fragment/an;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    .line 1324
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ap()V

    .line 1325
    return-void
.end method

.method public final a(Lcom/instagram/android/nux/j;)V
    .locals 0
    .parameter

    .prologue
    .line 1152
    if-eqz p1, :cond_0

    .line 1153
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/nux/j;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1272
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->an()V

    .line 369
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Z)V

    .line 1160
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 1163
    sget-object v0, Lcom/instagram/p/b;->N:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 1164
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ad()V

    .line 1171
    :goto_0
    return-void

    .line 1168
    :cond_0
    sget-object v1, Lcom/instagram/share/b/g;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 302
    new-instance v0, Lcom/instagram/android/nux/a;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/nux/a;-><init>(Landroid/app/Activity;Lcom/instagram/android/nux/e;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;

    .line 303
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ab()V

    .line 305
    new-instance v6, Lcom/instagram/android/login/c/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v7

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->z()Landroid/support/v4/app/an;

    move-result-object v8

    sget v9, Lcom/instagram/android/login/c/d;->a:I

    new-instance v0, Lcom/instagram/android/login/fragment/bb;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/login/fragment/bb;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/android/login/c/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object v6, p0, Lcom/instagram/android/login/fragment/an;->i:Lcom/instagram/android/login/c/b;

    .line 332
    new-instance v0, Lcom/instagram/android/login/c/p;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/bj;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/instagram/android/login/fragment/bj;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/p;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aa:Lcom/instagram/android/login/c/p;

    .line 363
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/d/h;

    .line 364
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/d/a;->a(Landroid/os/Bundle;)V

    .line 1208
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 1209
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    const-string v0, "register"

    return-object v0
.end method

.method public final k_()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 539
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    .line 553
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 554
    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V

    .line 555
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 557
    :cond_1
    return-void

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    goto :goto_0

    .line 543
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->W()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    goto :goto_0

    .line 550
    :cond_4
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()V

    .line 1214
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 1215
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 252
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 253
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 254
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 255
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 256
    iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 258
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;

    .line 259
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;

    .line 260
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;

    .line 261
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;

    .line 262
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;

    .line 263
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;

    .line 264
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;

    .line 265
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;

    .line 266
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    .line 267
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;

    .line 268
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;

    .line 269
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;

    .line 270
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;

    .line 271
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;

    .line 272
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    invoke-virtual {v0}, Lcom/instagram/quicksand/a;->a()V

    .line 276
    iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;

    invoke-virtual {v0}, Lcom/instagram/android/nux/a;->a()V

    .line 280
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 281
    return-void
.end method
