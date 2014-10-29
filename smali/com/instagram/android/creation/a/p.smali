.class final Lcom/instagram/android/creation/a/p;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Lcom/instagram/android/directshare/widget/g;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->p(Lcom/instagram/android/creation/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->o(Lcom/instagram/android/creation/a/d;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    .line 324
    iget-object v1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/g;->b(Lcom/instagram/creation/b/a/f;)V

    .line 325
    iget-object v0, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0, v2}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Z)Z

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Z)Z

    .line 328
    iget-object v1, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->q(Lcom/instagram/android/creation/a/d;)Lcom/instagram/common/ui/a/a;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/p;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0, v2}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Z)Z

    goto :goto_0
.end method
