.class final Lcom/instagram/android/login/fragment/aj;
.super Lcom/instagram/api/j/a;
.source "PhoneNumberEntryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ad;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/aj;-><init>(Lcom/instagram/android/login/fragment/ad;)V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/instagram/a/f;->b(Z)V

    .line 309
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->password_reset_sent_short:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    sget v2, Lcom/facebook/az;->password_reset_sent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v4}, Lcom/instagram/android/login/fragment/ad;->f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/login/fragment/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/login/fragment/ak;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ak;-><init>(Lcom/instagram/android/login/fragment/aj;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 326
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 338
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 331
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/aj;->c()V

    return-void
.end method
