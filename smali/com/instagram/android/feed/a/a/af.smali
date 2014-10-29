.class final Lcom/instagram/android/feed/a/a/af;
.super Lcom/instagram/api/j/a;
.source "MediaOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/x;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/af;-><init>(Lcom/instagram/android/feed/a/a/x;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->we_will_review_this_photo_asap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->m(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/support/v4/app/s;)V

    .line 265
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 266
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/af;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->n(Lcom/instagram/android/feed/a/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/a/a/ag;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/ag;-><init>(Lcom/instagram/android/feed/a/a/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 277
    return-void
.end method
