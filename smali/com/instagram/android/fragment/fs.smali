.class final Lcom/instagram/android/fragment/fs;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->f(Lcom/instagram/android/fragment/fo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/fy;

    invoke-direct {v1}, Lcom/instagram/android/fragment/fy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->g(Lcom/instagram/android/fragment/fo;)V

    goto :goto_0
.end method
