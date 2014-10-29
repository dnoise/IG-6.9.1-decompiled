.class final Lcom/instagram/android/directshare/e/i;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/f/c/a;

.field final synthetic b:Lcom/instagram/android/directshare/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/instagram/android/directshare/e/i;->b:Lcom/instagram/android/directshare/e/b;

    iput-object p2, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/f/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 397
    new-instance v0, Lcom/instagram/f/a/a/j;

    iget-object v1, p0, Lcom/instagram/android/directshare/e/i;->b:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/e/i;->b:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/e/b;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/directshare/e/k;

    iget-object v4, p0, Lcom/instagram/android/directshare/e/i;->b:Lcom/instagram/android/directshare/e/b;

    iget-object v5, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/f/c/a;

    sget-object v6, Lcom/instagram/android/directshare/e/l;->a:Lcom/instagram/android/directshare/e/l;

    invoke-direct {v3, v4, v5, v6}, Lcom/instagram/android/directshare/e/k;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/l;)V

    iget-object v4, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/f/c/a;

    invoke-virtual {v4}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/f/a/a/j;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/j;->g()V

    .line 403
    iget-object v0, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/f/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/a/a;->a(Lcom/instagram/f/c/a;Z)V

    .line 404
    return-void
.end method
