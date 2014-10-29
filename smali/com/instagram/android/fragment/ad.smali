.class final Lcom/instagram/android/fragment/ad;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter "hasFocus"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/fragment/ao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ao;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->b(Lcom/instagram/android/fragment/ac;)V

    .line 99
    :cond_0
    return-void
.end method
