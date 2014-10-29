.class final Lcom/instagram/android/fragment/aj;
.super Lcom/instagram/api/j/a;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/g/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/g/b/c;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0, p1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;Lcom/instagram/android/g/b/c;)Lcom/instagram/android/g/b/c;

    .line 332
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->h(Lcom/instagram/android/fragment/ac;)V

    .line 337
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->i(Lcom/instagram/android/fragment/ac;)V

    .line 338
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 317
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;Z)Z

    .line 318
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
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
            "Lcom/instagram/android/g/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    .line 344
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 346
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->d(Lcom/instagram/android/fragment/ac;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    check-cast p1, Lcom/instagram/android/g/b/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/aj;->a(Lcom/instagram/android/g/b/c;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ac;->a(Lcom/instagram/android/fragment/ac;Z)Z

    .line 325
    iget-object v0, p0, Lcom/instagram/android/fragment/aj;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    return-void
.end method
