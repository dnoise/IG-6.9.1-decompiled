.class final Lcom/instagram/android/k/c/k;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 191
    new-instance v1, Lcom/instagram/android/k/c/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/l;-><init>(Lcom/instagram/android/k/c/k;)V

    .line 198
    iget-object v0, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    .line 200
    iget-object v0, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->h(Lcom/instagram/android/k/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    sget v2, Lcom/facebook/az;->confirm_follow_all_request_in_signup:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v5}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/k/a/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/instagram/android/k/c/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    new-instance v2, Lcom/instagram/ui/dialog/b;

    iget-object v3, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v3}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->follow_all:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    :goto_1
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    sget v2, Lcom/facebook/az;->are_you_sure:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/k/c/k;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->f(Lcom/instagram/android/k/c/a;)V

    goto :goto_1
.end method
