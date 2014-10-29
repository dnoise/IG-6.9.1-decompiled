.class final Lcom/instagram/android/fragment/al;
.super Lcom/instagram/api/j/a;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 450
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/user/c/i;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 452
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/fragment/ao;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/am;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/am;-><init>(Lcom/instagram/android/fragment/al;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ao;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 439
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ac;->b(Lcom/instagram/android/fragment/ac;Z)Z

    .line 440
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 441
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
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 470
    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V

    .line 473
    :cond_0
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/al;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ac;->b(Lcom/instagram/android/fragment/ac;Z)Z

    .line 446
    return-void
.end method
