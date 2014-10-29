.class public abstract Lcom/instagram/base/a/d;
.super Lcom/instagram/base/a/a;
.source "IgTrackedDialogFragment.java"

# interfaces
.implements Lcom/instagram/common/analytics/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/instagram/base/a/a;->F()V

    .line 19
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;)V

    .line 20
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I

    move-result v1

    const-string v2, "dialog_dismiss"

    invoke-virtual {v0, p0, v1, v2}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 37
    instance-of v1, v0, Lcom/instagram/common/analytics/g;

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/g;

    invoke-virtual {v1, v0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/base/a/a;->onDismiss(Landroid/content/DialogInterface;)V

    .line 43
    return-void
.end method
