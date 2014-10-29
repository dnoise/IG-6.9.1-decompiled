.class final Lcom/instagram/android/k/c/p;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/n;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/instagram/android/k/c/p;->a:Lcom/instagram/android/k/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/instagram/android/k/c/p;->a:Lcom/instagram/android/k/c/n;

    iget-object v0, v0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->d()V

    .line 375
    return-void
.end method
