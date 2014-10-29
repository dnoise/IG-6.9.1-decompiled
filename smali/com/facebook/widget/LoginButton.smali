.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/g/q;

.field private d:Lcom/facebook/h/h;

.field private e:Lcom/facebook/bo;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/widget/g;

.field private k:Landroid/support/v4/app/Fragment;

.field private l:Lcom/facebook/widget/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    .line 59
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;

    .line 66
    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    .line 187
    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    .line 189
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    .line 59
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;

    .line 66
    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    .line 200
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->com_facebook_loginview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    .line 207
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/at;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    .line 211
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->com_facebook_loginview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setWidth(I)V

    .line 212
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->com_facebook_loginview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setHeight(I)V

    .line 213
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    .line 219
    const-string v0, "Log in"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    .line 224
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    .line 225
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    .line 228
    :cond_1
    return-void

    .line 221
    :cond_2
    sget v0, Lcom/facebook/au;->com_facebook_loginbutton_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    .line 59
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;

    .line 66
    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    .line 237
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    .line 238
    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    .line 239
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/g/q;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;Lcom/facebook/h/h;)Lcom/facebook/h/h;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 519
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->com_facebook_login_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 520
    sget v1, Lcom/facebook/bb;->com_facebook_login_view_confirm_logout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->f:Z

    .line 521
    sget v1, Lcom/facebook/bb;->com_facebook_login_view_fetch_user_info:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->g:Z

    .line 522
    sget v1, Lcom/facebook/bb;->com_facebook_login_view_login_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    .line 523
    sget v1, Lcom/facebook/bb;->com_facebook_login_view_logout_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    .line 524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 525
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 538
    if-nez p0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_2

    .line 544
    invoke-virtual {v1}, Lcom/facebook/bo;->a()Z

    move-result v0

    goto :goto_0

    .line 547
    :cond_2
    invoke-static {p0}, Lcom/facebook/g/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_0

    .line 552
    invoke-static {p0}, Lcom/facebook/bo;->a(Landroid/content/Context;)Lcom/facebook/bo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/g;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    new-instance v0, Lcom/facebook/widget/d;

    invoke-direct {v0, p0, v3}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    .line 473
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/facebook/g/q;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/b;

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/q;-><init>(Landroid/content/Context;Lcom/facebook/cc;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    .line 475
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    .line 477
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/h/h;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->b()Lcom/facebook/bo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :goto_1
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private d()V
    .locals 4

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->g:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->b()Lcom/facebook/bo;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    .line 559
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;

    if-eq v0, v1, :cond_0

    .line 560
    new-instance v1, Lcom/facebook/widget/a;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/a;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/bo;)V

    invoke-static {v0, v1}, Lcom/facebook/bc;->a(Lcom/facebook/bo;Lcom/facebook/bh;)Lcom/facebook/bc;

    move-result-object v1

    .line 574
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/bc;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/bc;->a([Lcom/facebook/bc;)Lcom/facebook/bk;

    .line 575
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/bo;

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    .line 579
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/h/h;

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/widget/LoginButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    instance-of v0, p1, Lcom/facebook/z;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;

    new-instance v0, Lcom/facebook/z;

    invoke-direct {v0, p1}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDefaultAudience()Lcom/facebook/cf;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0}, Lcom/facebook/widget/c;->b()Lcom/facebook/cf;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/cg;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0}, Lcom/facebook/widget/c;->d()Lcom/facebook/cg;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/f;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0}, Lcom/facebook/widget/c;->a()Lcom/facebook/widget/f;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0}, Lcom/facebook/widget/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/cc;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0}, Lcom/facebook/widget/c;->e()Lcom/facebook/cc;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/g;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 494
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->c()V

    .line 496
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    .line 497
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    .line 499
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 504
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->d()V

    .line 507
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 467
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V

    .line 468
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/cf;)V
    .locals 1
    .parameter "defaultAudience"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cf;)V

    .line 269
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;

    .line 489
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/cg;)V
    .locals 1
    .parameter "loginBehavior"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cg;)V

    .line 352
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/f;)V
    .locals 1
    .parameter "onErrorListener"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/f;)V

    .line 249
    return-void
.end method

.method setProperties(Lcom/facebook/widget/c;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    .line 516
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v1}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/c;->b(Ljava/util/List;Lcom/facebook/bo;)V

    .line 331
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v1}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/bo;)V

    .line 305
    return-void
.end method

.method public setSession(Lcom/facebook/bo;)V
    .locals 1
    .parameter "newSession"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/g/q;

    invoke-virtual {v0, p1}, Lcom/facebook/g/q;->a(Lcom/facebook/bo;)V

    .line 460
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    .line 461
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    .line 462
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/cc;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/c;->a(Lcom/facebook/cc;)V

    .line 402
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/g;)V
    .locals 0
    .parameter "userInfoChangedCallback"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/g;

    .line 391
    return-void
.end method
