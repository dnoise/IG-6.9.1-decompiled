.class final Lcom/instagram/android/k/c/j;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/i;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/i;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/instagram/android/k/c/j;->a:Lcom/instagram/android/k/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/instagram/android/k/c/j;->a:Lcom/instagram/android/k/c/i;

    iget-object v0, v0, Lcom/instagram/android/k/c/i;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 167
    return-void
.end method
