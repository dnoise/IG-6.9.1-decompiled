.class final Lcom/instagram/android/nux/x;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/w;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/w;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/instagram/android/nux/x;->a:Lcom/instagram/android/nux/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/android/nux/x;->a:Lcom/instagram/android/nux/w;

    iget-object v0, v0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/instagram/android/nux/x;->a:Lcom/instagram/android/nux/w;

    iget-object v0, v0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 216
    :cond_0
    return-void
.end method
