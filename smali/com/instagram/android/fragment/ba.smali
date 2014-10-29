.class final Lcom/instagram/android/fragment/ba;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/az;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/az;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/instagram/android/fragment/ba;->a:Lcom/instagram/android/fragment/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 173
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/ba;->a:Lcom/instagram/android/fragment/az;

    iget-object v0, v0, Lcom/instagram/android/fragment/az;->a:Lcom/instagram/android/fragment/aw;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/aw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 175
    return-void
.end method
