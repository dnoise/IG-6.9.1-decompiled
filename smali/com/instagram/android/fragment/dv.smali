.class final Lcom/instagram/android/fragment/dv;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/du;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/du;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/du;

    invoke-static {v0}, Lcom/instagram/android/fragment/du;->a(Lcom/instagram/android/fragment/du;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/du;

    invoke-static {v0}, Lcom/instagram/android/fragment/du;->a(Lcom/instagram/android/fragment/du;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 69
    :cond_0
    return-void

    .line 67
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
    .line 58
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    return-void
.end method
