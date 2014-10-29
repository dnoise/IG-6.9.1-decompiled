.class public final Lcom/instagram/android/login/fragment/o;
.super Lcom/instagram/base/a/b;
.source "LookupFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field public final a:Lcom/instagram/api/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/android/login/c/k;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/instagram/ui/widget/refresh/RefreshButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->c:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/instagram/android/login/fragment/p;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/p;-><init>(Lcom/instagram/android/login/fragment/o;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->a:Lcom/instagram/api/j/a;

    .line 105
    new-instance v0, Lcom/instagram/android/login/fragment/s;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/s;-><init>(Lcom/instagram/android/login/fragment/o;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->b:Landroid/view/View$OnClickListener;

    .line 196
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 219
    :cond_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/o;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/instagram/p/b;->an:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 114
    new-instance v0, Lcom/instagram/android/login/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->z()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/o;->a:Lcom/instagram/api/j/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/j;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/j;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 169
    iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 170
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 174
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 181
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()V

    .line 182
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 133
    sget v0, Lcom/facebook/aw;->fragment_lookup:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    sget v0, Lcom/facebook/av;->fragment_lookup_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    .line 136
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.instagram.android.login.fragment.ARGUMENT_USERNAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/u;

    invoke-direct {v2, p0, v4}, Lcom/instagram/android/login/fragment/u;-><init>(Lcom/instagram/android/login/fragment/o;B)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/t;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/t;-><init>(Lcom/instagram/android/login/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 154
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 121
    sget-object v0, Lcom/instagram/p/b;->am:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 122
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    sget v0, Lcom/facebook/az;->reset_password:I

    iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->b:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 228
    iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_arrow_next:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 229
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()V

    .line 230
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->fragment_lookup_edittext:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 128
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "password_lookup"

    return-object v0
.end method

.method public final k_()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->c()V

    .line 187
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 188
    return-void
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->d()V

    .line 193
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 194
    return-void
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 161
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;

    .line 163
    return-void
.end method
