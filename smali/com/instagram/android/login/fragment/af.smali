.class final Lcom/instagram/android/login/fragment/af;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/instagram/android/login/fragment/af;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/android/login/fragment/af;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/af;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/login/fragment/af;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/ad;->b(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/af;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->c(Lcom/instagram/android/login/fragment/ad;)V

    .line 124
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    return-void
.end method
