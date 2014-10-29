.class final Lcom/instagram/android/fragment/dt;
.super Lcom/instagram/api/j/f;
.source "RecommendedUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/user/d/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dn;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->a(Lcom/instagram/android/fragment/dn;)Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/m;->a(Ljava/util/ArrayList;)V

    .line 239
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/dn;->a(Ljava/util/ArrayList;)V

    .line 242
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->f(Lcom/instagram/android/fragment/dn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 245
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/dn;->a(Lcom/instagram/android/fragment/dn;Z)Z

    .line 257
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 258
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->g(Lcom/instagram/android/fragment/dn;)Z

    .line 250
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V

    .line 252
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/dt;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/dn;->a(Lcom/instagram/android/fragment/dn;Z)Z

    .line 263
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->g(Lcom/instagram/android/fragment/dn;)Z

    .line 264
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 265
    iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->c(Lcom/instagram/android/fragment/dn;)Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/dn;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 266
    return-void
.end method
