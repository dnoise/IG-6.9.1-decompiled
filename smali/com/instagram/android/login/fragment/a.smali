.class public final Lcom/instagram/android/login/fragment/a;
.super Lcom/instagram/base/a/b;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Lcom/instagram/android/login/fragment/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/a;->a:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/instagram/android/login/fragment/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/f;-><init>(Lcom/instagram/android/login/fragment/a;B)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/a;)Lcom/instagram/android/login/fragment/f;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/login/fragment/a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 50
    sget v0, Lcom/facebook/aw;->fragment_forgot_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    sget v0, Lcom/facebook/av;->fragment_forgot_password_email_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/b;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/b;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/facebook/av;->fragment_forgot_password_sms:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/c;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/d;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/d;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/facebook/av;->fragment_forgot_password_help_center:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/e;-><init>(Lcom/instagram/android/login/fragment/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 98
    sget v0, Lcom/facebook/av;->facebook_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    sget v0, Lcom/facebook/av;->help_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 106
    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 171
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/instagram/android/login/fragment/a;->b:Lcom/instagram/android/login/fragment/f;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 175
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 177
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lcom/instagram/p/b;->ah:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 45
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    sget v0, Lcom/facebook/az;->sign_in_help:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 112
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 113
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "forgot_password"

    return-object v0
.end method
