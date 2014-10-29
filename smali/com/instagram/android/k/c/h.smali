.class final Lcom/instagram/android/k/c/h;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/instagram/android/k/c/h;->a:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/instagram/android/k/c/h;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->d(Lcom/instagram/android/k/c/a;)Lcom/instagram/common/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/k/b/a;

    invoke-direct {v1}, Lcom/instagram/android/k/b/a;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/k/c/h;->a:Lcom/instagram/android/k/c/a;

    iget-object v2, v2, Lcom/instagram/android/k/c/a;->i:Lcom/instagram/common/a/a/j;

    invoke-virtual {v1, v2}, Lcom/instagram/android/k/b/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 152
    return-void
.end method
