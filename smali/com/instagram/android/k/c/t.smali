.class Lcom/instagram/android/k/c/t;
.super Lcom/instagram/api/j/f;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/instagram/android/k/c/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/k/c/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/instagram/android/k/c/t;-><init>(Lcom/instagram/android/k/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/c/u;->a(Z)V

    .line 408
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->o(Lcom/instagram/android/k/c/a;)V

    .line 409
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 415
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->p(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/f/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/k/f/a;->setFollowAllEnabled(Z)V

    .line 416
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 403
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/c/u;->a(Z)V

    .line 397
    iget-object v0, p0, Lcom/instagram/android/k/c/t;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->o(Lcom/instagram/android/k/c/a;)V

    .line 398
    return-void
.end method
