.class final Lcom/instagram/android/k/c/l;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/k;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/k;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/instagram/android/k/c/l;->a:Lcom/instagram/android/k/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/instagram/android/k/c/l;->a:Lcom/instagram/android/k/c/k;

    iget-object v0, v0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->f(Lcom/instagram/android/k/c/a;)V

    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    return-void
.end method
