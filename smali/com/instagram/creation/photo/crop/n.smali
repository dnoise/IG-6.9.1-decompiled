.class public final Lcom/instagram/creation/photo/crop/n;
.super Ljava/lang/Object;
.source "CropUtil.java"


# direct methods
.method public static a(Lcom/instagram/creation/photo/crop/y;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/instagram/creation/photo/crop/o;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/instagram/creation/photo/crop/o;-><init>(Lcom/instagram/creation/photo/crop/y;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method
