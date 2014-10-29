.class final Lcom/instagram/android/login/fragment/p;
.super Lcom/instagram/api/j/a;
.source "LookupFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/login/c/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/login/c/k;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/q;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/q;-><init>(Lcom/instagram/android/login/fragment/p;Lcom/instagram/android/login/c/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 96
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
            "Lcom/instagram/android/login/c/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 76
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/r;-><init>(Lcom/instagram/android/login/fragment/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    check-cast p1, Lcom/instagram/android/login/c/k;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/p;->a(Lcom/instagram/android/login/c/k;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 102
    return-void
.end method
