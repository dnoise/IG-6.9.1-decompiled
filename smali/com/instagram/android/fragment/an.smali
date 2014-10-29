.class final Lcom/instagram/android/fragment/an;
.super Lcom/instagram/api/j/f;
.source "EditProfileFragment.java"


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
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/g/a;)V
    .locals 2
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0, p1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;Lcom/instagram/android/g/a;)Lcom/instagram/android/g/a;

    .line 488
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->c(Lcom/instagram/android/fragment/ac;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->c(Lcom/instagram/android/fragment/ac;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->c(Lcom/instagram/android/fragment/ac;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->k(Lcom/instagram/android/fragment/ac;)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->l(Lcom/instagram/android/fragment/ac;)V

    .line 498
    invoke-static {p1}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/g/a;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->m(Lcom/instagram/android/fragment/ac;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->m(Lcom/instagram/android/fragment/ac;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 509
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    check-cast p1, Lcom/instagram/android/g/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/an;->a(Lcom/instagram/android/g/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->m(Lcom/instagram/android/fragment/ac;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->m(Lcom/instagram/android/fragment/ac;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 517
    return-void
.end method
