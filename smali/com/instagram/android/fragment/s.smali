.class final Lcom/instagram/android/fragment/s;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

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
    .line 123
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->c(Lcom/instagram/android/fragment/o;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->d(Lcom/instagram/android/fragment/o;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
