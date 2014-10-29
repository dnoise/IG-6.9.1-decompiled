.class final Lcom/instagram/android/login/fragment/ac;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/v;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ac;->a:Lcom/instagram/android/login/fragment/v;

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
    .line 220
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ac;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->e(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/android/login/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ac;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->b(Lcom/instagram/android/login/fragment/v;)V

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
