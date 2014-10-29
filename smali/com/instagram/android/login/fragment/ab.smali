.class final Lcom/instagram/android/login/fragment/ab;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Lcom/instagram/android/login/j;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/v;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/v;->e(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/android/login/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/d;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    :cond_0
    return-void
.end method
