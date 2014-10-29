.class final Lcom/instagram/j/c/d;
.super Lcom/instagram/common/a/a/j;
.source "NewsfeedFollowRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/user/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/j/c/a;


# direct methods
.method private constructor <init>(Lcom/instagram/j/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/j/c/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/instagram/j/c/d;-><init>(Lcom/instagram/j/c/a;)V

    return-void
.end method

.method private a(Lcom/instagram/user/e/b;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-static {v0}, Lcom/instagram/j/c/a;->a(Lcom/instagram/j/c/a;)Lcom/instagram/j/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/e/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/j/a/c;->a(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-virtual {p1}, Lcom/instagram/user/e/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/c/a;->a(Lcom/instagram/j/c/a;Ljava/util/List;)V

    .line 189
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 176
    iget-object v0, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-virtual {v0}, Lcom/instagram/j/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 177
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
            "Lcom/instagram/user/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 182
    iget-object v0, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-virtual {v0}, Lcom/instagram/j/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 183
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    check-cast p1, Lcom/instagram/user/e/b;

    invoke-direct {p0, p1}, Lcom/instagram/j/c/d;->a(Lcom/instagram/user/e/b;)V

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
            "Lcom/instagram/user/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 194
    iget-object v0, p0, Lcom/instagram/j/c/d;->a:Lcom/instagram/j/c/a;

    invoke-virtual {v0}, Lcom/instagram/j/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method
