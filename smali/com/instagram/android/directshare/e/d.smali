.class final Lcom/instagram/android/directshare/e/d;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/c;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 111
    new-instance v0, Lcom/instagram/f/a/a/m;

    iget-object v1, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;

    iget-object v1, v1, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;

    iget-object v2, v2, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/e/b;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/directshare/e/n;

    iget-object v4, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;

    iget-object v4, v4, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/directshare/e/n;-><init>(Lcom/instagram/android/directshare/e/b;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/m;->g()V

    .line 116
    return-void
.end method
