.class public final Lcom/instagram/android/fragment/y;
.super Lcom/instagram/base/a/b;
.source "CompositeSearchFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# static fields
.field public static a:I


# instance fields
.field private b:Lcom/instagram/android/fragment/ea;

.field private c:Lcom/instagram/android/fragment/eh;

.field private d:Lcom/instagram/android/fragment/ej;

.field private e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/instagram/android/fragment/ef;->b:I

    sput v0, Lcom/instagram/android/fragment/y;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ea;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/instagram/android/fragment/ea;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    iget-object v1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    .line 116
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 118
    :goto_0
    iput-object p1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    .line 119
    iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/ea;->W()V

    .line 120
    iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    if-eq v1, v2, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/instagram/android/fragment/ea;->X()V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/ea;->V()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setHint(I)V

    .line 127
    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    .line 131
    :cond_1
    return-void

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/y;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ej;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/ej;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/eh;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/eh;

    return-object v0
.end method

.method private f(I)Lcom/instagram/android/fragment/ea;
    .locals 1
    .parameter

    .prologue
    .line 138
    sget v0, Lcom/instagram/android/fragment/ef;->b:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/ej;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/eh;

    goto :goto_0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/y;->h:I

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/ea;)V

    .line 67
    return-void
.end method

.method public final G()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/y;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 74
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 77
    iput-object v2, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 78
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    sget v1, Lcom/facebook/av;->frame_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 41
    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    sget v0, Lcom/instagram/android/fragment/y;->a:I

    if-eq v0, p1, :cond_0

    .line 107
    sput p1, Lcom/instagram/android/fragment/y;->a:I

    .line 108
    sget v0, Lcom/instagram/android/fragment/y;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->f(I)Lcom/instagram/android/fragment/ea;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/ea;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/instagram/android/fragment/eh;

    invoke-direct {v0}, Lcom/instagram/android/fragment/eh;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/eh;

    .line 48
    new-instance v0, Lcom/instagram/android/fragment/ej;

    invoke-direct {v0}, Lcom/instagram/android/fragment/ej;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/ej;

    .line 50
    sget v0, Lcom/instagram/android/fragment/y;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->f(I)Lcom/instagram/android/fragment/ea;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->q()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 53
    sget v1, Lcom/facebook/av;->frame_layout:I

    iget-object v2, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->frame_layout:I

    iget-object v2, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 57
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->x()V

    .line 58
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 84
    invoke-interface {p1}, Lcom/instagram/a/b;->a()Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v1, Lcom/instagram/android/fragment/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/aa;-><init>(Lcom/instagram/android/fragment/y;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 88
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ea;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setHint(I)V

    .line 89
    new-instance v0, Lcom/instagram/android/fragment/z;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/z;-><init>(Lcom/instagram/android/fragment/y;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    .line 98
    invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z

    .line 102
    :cond_0
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 103
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 135
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "search"

    return-object v0
.end method
