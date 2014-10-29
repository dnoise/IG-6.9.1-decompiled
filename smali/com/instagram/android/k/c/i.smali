.class final Lcom/instagram/android/k/c/i;
.super Lcom/instagram/common/a/a/j;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/instagram/android/k/c/i;->a:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/api/k/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/l/b/a;->h(Z)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/k/c/i;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->e(Lcom/instagram/android/k/c/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/k/c/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/k/c/j;-><init>(Lcom/instagram/android/k/c/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    check-cast p1, Lcom/instagram/api/k/a/d;

    invoke-direct {p0, p1}, Lcom/instagram/android/k/c/i;->a(Lcom/instagram/api/k/a/d;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/k/c/i;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->disconnect_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method
