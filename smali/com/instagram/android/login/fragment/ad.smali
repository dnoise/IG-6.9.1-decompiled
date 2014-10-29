.class public final Lcom/instagram/android/login/fragment/ad;
.super Lcom/instagram/base/a/b;
.source "PhoneNumberEntryFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/e/a;
.implements Lcom/instagram/android/login/fragment/cv;


# instance fields
.field private a:Lcom/instagram/common/r/a;

.field private b:Lcom/facebook/i/d;

.field private c:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->h:Landroid/os/Handler;

    .line 305
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private W()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 220
    return-void
.end method

.method private X()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string v1, "new_phone_number"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/ac;

    invoke-direct {v2}, Lcom/instagram/android/fragment/ac;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/instagram/android/c/a/w;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/al;

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/al;-><init>(Lcom/instagram/android/login/fragment/ad;B)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/w;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/w;->g()V

    goto :goto_0

    .line 236
    :cond_1
    new-instance v0, Lcom/instagram/android/login/c/n;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/aj;

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/aj;-><init>(Lcom/instagram/android/login/fragment/ad;B)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/login/c/n;->g()V

    goto :goto_0
.end method

.method private Y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->a:Lcom/instagram/common/r/a;

    invoke-virtual {v0}, Lcom/instagram/common/r/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;

    invoke-virtual {v2, v0}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;

    const-string v2, "US"

    invoke-virtual {v1, v2}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/ad;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ad;->g:Ljava/lang/String;

    return-object p1
.end method

.method private aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 177
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 179
    iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 180
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->V()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/ad;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->X()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/login/fragment/ad;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 88
    sget v0, Lcom/facebook/aw;->fragment_phone_number_entry:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    sget v0, Lcom/facebook/av;->country_code_picker:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/facebook/av;->phone_number:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    sget v0, Lcom/facebook/av;->clear_phone_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/login/fragment/ae;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ae;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/af;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/af;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->Y()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/ad;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/login/fragment/ag;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ag;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/ah;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ah;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget v0, Lcom/facebook/av;->instructions_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 165
    return-object v1

    .line 129
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 81
    new-instance v1, Lcom/instagram/common/r/a;

    invoke-direct {v1, v0}, Lcom/instagram/common/r/a;-><init>(Landroid/telephony/TelephonyManager;)V

    iput-object v1, p0, Lcom/instagram/android/login/fragment/ad;->a:Lcom/instagram/common/r/a;

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->b:Lcom/facebook/i/d;

    .line 83
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 360
    sget v0, Lcom/facebook/az;->phone_number:I

    new-instance v1, Lcom/instagram/android/login/fragment/ai;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ai;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 366
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_arrow_next:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 367
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->V()V

    .line 368
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ad;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V

    .line 260
    const-string v1, "new_phone_number"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/ad;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/ac;

    invoke-direct {v2}, Lcom/instagram/android/fragment/ac;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 264
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    const-string v0, "phone_number_entry"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->c()V

    .line 191
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->W()V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 196
    return-void
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ad;->d()V

    .line 201
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 202
    return-void
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 171
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ad;->d:Landroid/widget/EditText;

    .line 173
    return-void
.end method
