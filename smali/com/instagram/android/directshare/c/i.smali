.class final Lcom/instagram/android/directshare/c/i;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/instagram/android/directshare/c/i;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/i;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/c/c;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    .line 290
    new-instance v1, Lcom/instagram/android/directshare/e/b;

    invoke-direct {v1}, Lcom/instagram/android/directshare/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 291
    return-void
.end method
