.class final Lcom/instagram/android/creation/a/z;
.super Lcom/instagram/android/widget/w;
.source "FollowersShareFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/y;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/y;Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/instagram/android/creation/a/z;->a:Lcom/instagram/android/creation/a/y;

    invoke-direct {p0, p2, p3}, Lcom/instagram/android/widget/w;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/android/creation/a/z;->a:Lcom/instagram/android/creation/a/y;

    iget-object v0, v0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->e(Lcom/instagram/android/creation/a/t;)Lcom/instagram/android/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/instagram/android/creation/a/z;->a:Lcom/instagram/android/creation/a/y;

    iget-object v0, v0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->e(Lcom/instagram/android/creation/a/t;)Lcom/instagram/android/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/z;->a:Lcom/instagram/android/creation/a/y;

    iget-object v1, v1, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v1}, Lcom/instagram/android/creation/a/t;->d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 204
    :cond_0
    return-void
.end method
