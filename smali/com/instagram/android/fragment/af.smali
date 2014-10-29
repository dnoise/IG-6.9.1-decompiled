.class final Lcom/instagram/android/fragment/af;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/fragment/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/ao;->removeMessages(I)V

    .line 112
    iget-object v1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/fragment/ao;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/android/fragment/ao;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    iget-object v1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v1}, Lcom/instagram/android/fragment/ac;->c(Lcom/instagram/android/fragment/ac;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v1}, Lcom/instagram/android/fragment/ac;->d(Lcom/instagram/android/fragment/ac;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 116
    return-void

    .line 114
    :cond_0
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
    .line 104
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    return-void
.end method
