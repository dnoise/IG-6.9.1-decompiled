.class final Lcom/instagram/android/feed/a/a/ad;
.super Lcom/instagram/common/a/a/j;
.source "MediaOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/c/a/l;",
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
    .line 314
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/x;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/ad;-><init>(Lcom/instagram/android/feed/a/a/x;)V

    return-void
.end method

.method private a(Lcom/instagram/android/c/a/l;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 319
    invoke-virtual {p1}, Lcom/instagram/android/c/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->o(Lcom/instagram/android/feed/a/a/x;)V

    .line 321
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->f(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/support/v4/app/s;)V

    .line 331
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 332
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/c/a/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->n(Lcom/instagram/android/feed/a/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/a/a/ae;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/ae;-><init>(Lcom/instagram/android/feed/a/a/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 343
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    check-cast p1, Lcom/instagram/android/c/a/l;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/ad;->a(Lcom/instagram/android/c/a/l;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/c/a/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->c(Landroid/content/Context;)V

    .line 326
    return-void
.end method
