.class final Lcom/instagram/android/login/fragment/ap;
.super Lcom/instagram/api/j/f;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/android/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/g/a;)V
    .locals 2
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/aq;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/aq;-><init>(Lcom/instagram/android/login/fragment/ap;Lcom/instagram/android/g/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->s(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/login/c/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->t(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->setVisibility(I)V

    .line 768
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 769
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    check-cast p1, Lcom/instagram/android/g/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/ap;->a(Lcom/instagram/android/g/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->u(Lcom/instagram/android/login/fragment/an;)Z

    .line 774
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->t(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->setVisibility(I)V

    .line 775
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 776
    return-void
.end method
