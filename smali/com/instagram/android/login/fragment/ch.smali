.class final Lcom/instagram/android/login/fragment/ch;
.super Lcom/instagram/api/j/a;
.source "UserPasswordRecoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/bz;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/ch;-><init>(Lcom/instagram/android/login/fragment/bz;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->e(Lcom/instagram/android/login/fragment/bz;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/bz;->d(Lcom/instagram/android/login/fragment/bz;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    sget v1, Lcom/facebook/az;->instagram_help_center:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/bz;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "http://help.instagram.com/374546259294234/"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/bz;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/bz;->f(Lcom/instagram/android/login/fragment/bz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/instagram/android/login/b/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->E()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/facebook/av;->fragment_user_password_recovery_textview_request_sent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->h(Lcom/instagram/android/login/fragment/bz;)V

    .line 251
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->i(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->g(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 254
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    sget v0, Lcom/facebook/az;->request_error:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->i(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 265
    :cond_2
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    .line 266
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ch;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 243
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ch;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/bz;->g(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    return-void
.end method
