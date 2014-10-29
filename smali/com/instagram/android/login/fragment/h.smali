.class public final Lcom/instagram/android/login/fragment/h;
.super Lcom/instagram/base/a/b;
.source "LoginFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Lcom/instagram/common/a/a/k;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 209
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->d:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->d:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 234
    :cond_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/h;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->d:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x139b37cbc60L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 56
    sget v0, Lcom/facebook/az;->wrong_datetime:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/instagram/p/b;->ag:Lcom/instagram/p/b;

    invoke-virtual {v1}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "log_in_token"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    .line 62
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/instagram/android/login/fragment/h;->a:Lcom/instagram/common/a/a/k;

    new-instance v4, Lcom/instagram/android/login/c/g;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/instagram/android/login/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/login/a/h;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/login/a/h;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/instagram/android/login/c/g;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/h;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->b()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/h;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->V()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 101
    sget v0, Lcom/facebook/aw;->fragment_login:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    sget v1, Lcom/facebook/av;->username:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->j()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.login.fragment.ARGUMENT_USERNAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/instagram/n/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/e;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-static {}, Lcom/instagram/n/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_1
    if-eqz v1, :cond_2

    .line 113
    sget-object v2, Lcom/instagram/p/b;->ad:Lcom/instagram/p/b;

    invoke-virtual {v2}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "log_in_token"

    invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/analytics/b;->a()V

    .line 114
    iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    sget v1, Lcom/facebook/av;->password:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    .line 120
    sget v1, Lcom/facebook/av;->forgot_password_link:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->e:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 126
    new-instance v1, Lcom/instagram/android/login/fragment/n;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/login/fragment/n;-><init>(Lcom/instagram/android/login/fragment/h;B)V

    .line 127
    iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/login/fragment/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/i;-><init>(Lcom/instagram/android/login/fragment/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 144
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 145
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 147
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->e:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/login/fragment/j;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/j;-><init>(Lcom/instagram/android/login/fragment/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/login/fragment/k;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/k;-><init>(Lcom/instagram/android/login/fragment/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/login/fragment/l;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/l;-><init>(Lcom/instagram/android/login/fragment/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    return-object v0

    .line 116
    :cond_2
    sget-object v1, Lcom/instagram/p/b;->ad:Lcom/instagram/p/b;

    invoke-virtual {v1}, Lcom/instagram/p/b;->c()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/h;->a:Lcom/instagram/common/a/a/k;

    .line 97
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    sget v0, Lcom/facebook/az;->nux_dayone_log_in:I

    new-instance v1, Lcom/instagram/android/login/fragment/m;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/m;-><init>(Lcom/instagram/android/login/fragment/h;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/h;->d:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 206
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->V()V

    .line 207
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "login"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 83
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    :cond_1
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final l_()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 90
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 181
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 182
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 184
    iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;

    .line 185
    iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->c:Landroid/widget/TextView;

    .line 186
    iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->d:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 187
    iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->e:Landroid/view/View;

    .line 188
    return-void
.end method
