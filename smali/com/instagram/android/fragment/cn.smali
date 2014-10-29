.class final Lcom/instagram/android/fragment/cn;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/instagram/android/fragment/cl;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cl;Lcom/instagram/android/widget/x;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/android/fragment/cn;->c:Lcom/instagram/android/fragment/cl;

    iput-object p2, p0, Lcom/instagram/android/fragment/cn;->a:Lcom/instagram/android/widget/x;

    iput-object p3, p0, Lcom/instagram/android/fragment/cn;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/fragment/cn;->a:Lcom/instagram/android/widget/x;

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->d()V

    .line 114
    iget-object v0, p0, Lcom/instagram/android/fragment/cn;->b:Landroid/view/View;

    check-cast v0, Lcom/instagram/ui/menu/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/menu/c;->setChecked(Z)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    return-void
.end method
