.class final Lcom/instagram/android/login/fragment/ah;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ah;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter "actionId"
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ah;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->d(Lcom/instagram/android/login/fragment/ad;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ah;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->e(Lcom/instagram/android/login/fragment/ad;)V

    .line 152
    :cond_0
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
