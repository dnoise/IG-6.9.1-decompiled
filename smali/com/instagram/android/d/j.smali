.class public final Lcom/instagram/android/d/j;
.super Lcom/instagram/api/j/a;
.source "AvatarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/d/f;


# direct methods
.method protected constructor <init>(Lcom/instagram/android/d/f;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/user/c/i;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->profile_picture_changed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 257
    iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/d/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/d/l;-><init>(Lcom/instagram/android/d/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    iget-object v1, v1, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_update_profile_picture:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    new-instance v2, Lcom/instagram/android/d/k;

    invoke-direct {v2, p0}, Lcom/instagram/android/d/k;-><init>(Lcom/instagram/android/d/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 252
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/d/j;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 268
    iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;

    invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/d/m;

    invoke-direct {v1, p0}, Lcom/instagram/android/d/m;-><init>(Lcom/instagram/android/d/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
