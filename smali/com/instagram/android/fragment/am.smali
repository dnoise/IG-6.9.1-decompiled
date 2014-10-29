.class final Lcom/instagram/android/fragment/am;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/al;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/al;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/al;

    iget-object v0, v0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/al;

    iget-object v0, v0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/al;

    iget-object v1, v1, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ac;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/el;

    invoke-direct {v1}, Lcom/instagram/android/fragment/el;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    .line 462
    :cond_0
    return-void
.end method
