.class public final Lcom/instagram/android/g/b/a;
.super Ljava/lang/Object;
.source "UserBlockRequestHelper.java"


# direct methods
.method public static a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unblock"

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/instagram/user/c/a;->c(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->G()V

    .line 27
    new-instance v1, Lcom/instagram/android/g/b/b;

    invoke-direct {v1, p1, p0}, Lcom/instagram/android/g/b/b;-><init>(Landroid/content/Context;Lcom/instagram/user/c/a;)V

    .line 45
    new-instance v2, Lcom/instagram/android/c/a/a;

    invoke-direct {v2, p1, p2, v1}, Lcom/instagram/android/c/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v2, p0, v0}, Lcom/instagram/android/c/a/a;->a(Lcom/instagram/user/c/a;Ljava/lang/String;)V

    .line 46
    return-void

    .line 23
    :cond_0
    const-string v0, "block"

    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
