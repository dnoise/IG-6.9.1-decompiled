.class final Lcom/instagram/android/login/fragment/cs;
.super Lcom/instagram/api/j/a;
.source "VerifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/g/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cs;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method

.method private a(Lcom/instagram/android/g/h;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/ct;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/ct;-><init>(Lcom/instagram/android/login/fragment/cs;Lcom/instagram/android/g/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 270
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
            "Lcom/instagram/android/g/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 246
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/login/fragment/cu;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cu;-><init>(Lcom/instagram/android/login/fragment/cs;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    check-cast p1, Lcom/instagram/android/g/h;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cs;->a(Lcom/instagram/android/g/h;)V

    return-void
.end method
