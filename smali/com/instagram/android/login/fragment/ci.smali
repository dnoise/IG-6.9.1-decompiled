.class public final Lcom/instagram/android/login/fragment/ci;
.super Lcom/instagram/base/a/b;
.source "VerifyFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Lcom/instagram/android/login/c/b;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/os/CountDownTimer;

.field private e:Ljava/lang/String;

.field private f:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private final g:Landroid/os/Handler;

.field private h:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    .line 388
    return-void
.end method

.method private V()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private W()V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/fragment/cv;

    .line 385
    invoke-interface {v0}, Lcom/instagram/android/login/fragment/cv;->b()V

    .line 386
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/ci;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->c()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/instagram/android/c/a/ad;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/cs;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/cs;-><init>(Lcom/instagram/android/login/fragment/ci;B)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->V()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/ad;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/ad;->g()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 198
    new-instance v1, Lcom/instagram/android/login/a;

    invoke-direct {v1}, Lcom/instagram/android/login/a;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v2

    .line 202
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_EMAIL"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->a:Ljava/lang/String;

    .line 203
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->d:Ljava/lang/String;

    .line 204
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_USERNAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->b:Ljava/lang/String;

    .line 205
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PASSWORD"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->c:Ljava/lang/String;

    .line 206
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PROFILE_PIC"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    .line 207
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_GUID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->f:Ljava/lang/String;

    .line 208
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->e:Ljava/lang/String;

    .line 209
    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_NAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->g:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->V()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->i:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->a:Lcom/instagram/android/login/c/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/b;->a(Lcom/instagram/android/login/a;)V

    .line 213
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->W()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->d()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/instagram/android/login/fragment/cr;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/cr;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    .line 150
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 152
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 167
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    .line 169
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 92
    sget v0, Lcom/facebook/aw;->fragment_verify:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    sget v0, Lcom/facebook/av;->no_code_received:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/facebook/av;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    .line 96
    sget v0, Lcom/facebook/av;->confirmation_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    sget v2, Lcom/facebook/az;->code_instructions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/ci;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/ci;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/cn;

    invoke-direct {v2, p0, v5}, Lcom/instagram/android/login/fragment/cn;-><init>(Lcom/instagram/android/login/fragment/ci;B)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/cj;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cj;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->e:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    .line 87
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    sget v0, Lcom/facebook/az;->verify_phone_number:I

    new-instance v1, Lcom/instagram/android/login/fragment/cm;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/cm;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->d(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 180
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->d()V

    .line 181
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 124
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 126
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v6, Lcom/instagram/android/login/c/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v7

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->z()Landroid/support/v4/app/an;

    move-result-object v8

    sget v9, Lcom/instagram/android/login/c/d;->b:I

    new-instance v0, Lcom/instagram/android/login/fragment/ck;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/login/fragment/ck;-><init>(Lcom/instagram/android/login/fragment/ci;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/android/login/c/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object v6, p0, Lcom/instagram/android/login/fragment/ci;->a:Lcom/instagram/android/login/c/b;

    .line 142
    :cond_0
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string v0, "verify"

    return-object v0
.end method

.method public final m_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 157
    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    .line 158
    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    .line 159
    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 160
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 161
    return-void
.end method
