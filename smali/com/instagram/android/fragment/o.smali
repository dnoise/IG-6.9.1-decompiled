.class public final Lcom/instagram/android/fragment/o;
.super Lcom/instagram/base/a/b;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:I

.field private aa:Lcom/instagram/android/login/d;

.field private final ab:Lcom/instagram/android/fragment/w;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->b:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/instagram/android/fragment/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/w;-><init>(Lcom/instagram/android/fragment/o;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/o;)Lcom/instagram/android/fragment/w;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/o;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/android/fragment/o;->i:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/o/e;->a(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/instagram/android/c/b/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/instagram/android/fragment/t;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/t;-><init>(Lcom/instagram/android/fragment/o;)V

    .line 285
    invoke-virtual {v0, v1}, Lcom/instagram/android/c/b/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 286
    new-instance v1, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->c()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/o;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/o;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/o;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    :cond_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 301
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/fragment/o;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/o;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 163
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/o;->a:I

    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 167
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 172
    iget-boolean v0, p0, Lcom/instagram/android/fragment/o;->h:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/o;->h:Z

    .line 177
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/o;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 188
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 191
    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 74
    sget v0, Lcom/facebook/aw;->fragment_change_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    sget v0, Lcom/facebook/av;->current_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    .line 76
    sget v0, Lcom/facebook/av;->new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    .line 77
    sget v0, Lcom/facebook/av;->confirm_new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 87
    sget v0, Lcom/facebook/av;->reset_using_facebook_link:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/fragment/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/p;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lcom/instagram/android/login/d;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->o()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/login/d;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    .line 100
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    new-instance v2, Lcom/instagram/android/fragment/q;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/q;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    .line 107
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/r;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/r;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/s;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/s;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 137
    iget-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 138
    iget-object v2, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 140
    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 209
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 213
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 215
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    sget v0, Lcom/facebook/az;->change_password:I

    new-instance v1, Lcom/instagram/android/fragment/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/v;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    .line 315
    iget-boolean v0, p0, Lcom/instagram/android/fragment/o;->i:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 316
    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->c()V

    .line 317
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "change_password"

    return-object v0
.end method

.method public final k_()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 197
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/o;->a(I)V

    .line 198
    return-void
.end method

.method public final l_()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/o;->a(I)V

    .line 204
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 147
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 149
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 150
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    .line 153
    iput-object v2, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    .line 154
    iput-object v2, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    .line 155
    iput-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    .line 156
    iput-object v2, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    .line 157
    return-void
.end method
