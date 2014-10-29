.class final Lcom/instagram/android/login/fragment/co;
.super Lcom/instagram/api/j/a;
.source "VerifyFragment.java"


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
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/co;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lcom/instagram/android/login/fragment/cq;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/cq;-><init>(Lcom/instagram/android/login/fragment/co;)V

    .line 299
    iget-object v1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/fragment/cq;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 300
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 301
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
    .line 292
    iget-object v0, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/a/a;

    .line 307
    iget-object v1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/ci;->d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/cp;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/fragment/cp;-><init>(Lcom/instagram/android/login/fragment/co;Lcom/instagram/base/a/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 317
    return-void
.end method
