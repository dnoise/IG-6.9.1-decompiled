.class public final Lcom/instagram/android/fragment/du;
.super Lcom/instagram/base/a/b;
.source "ReportProblemFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private c:Landroid/app/Dialog;

.field private final d:Landroid/os/Handler;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/du;->d:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/du;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/fragment/du;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/du;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 193
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/du;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/du;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/du;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->c:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/du;->e:I

    .line 113
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 119
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/du;->a(I)V

    .line 121
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/du;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/du;->a(I)V

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/du;->c:Landroid/app/Dialog;

    .line 107
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    sget v0, Lcom/facebook/aw;->fragment_report_problem:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    sget v0, Lcom/facebook/av;->edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/dv;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/dv;-><init>(Lcom/instagram/android/fragment/du;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    return-object v1
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-array v3, v0, [Ljava/lang/Object;

    sget v4, Lcom/facebook/az;->report_problem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/fragment/du;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v3, Lcom/instagram/android/fragment/dw;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/dw;-><init>(Lcom/instagram/android/fragment/du;)V

    invoke-interface {p1, v2, v3}, Lcom/instagram/a/b;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/fragment/du;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 188
    iget-object v2, p0, Lcom/instagram/android/fragment/du;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v3, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 189
    return-void

    :cond_0
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v0, Lcom/instagram/bugreport/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/bugreport/a/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/g;->a(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/bugreport/a/d;->a()Lcom/instagram/bugreport/a/b;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/instagram/android/fragment/dx;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/dx;-><init>(Lcom/instagram/android/fragment/du;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/b;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 130
    new-instance v1, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/du;->z()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    .line 132
    iget-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "report_problem"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 78
    iput-object v0, p0, Lcom/instagram/android/fragment/du;->a:Landroid/widget/EditText;

    .line 79
    iput-object v0, p0, Lcom/instagram/android/fragment/du;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 80
    return-void
.end method
