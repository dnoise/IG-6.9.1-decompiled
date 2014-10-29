.class final Lcom/instagram/android/creation/a/i;
.super Lcom/instagram/common/a/a/j;
.source "DirectShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/k/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/k/b/e;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->e(Lcom/instagram/android/creation/a/d;)V

    .line 135
    invoke-virtual {p1}, Lcom/instagram/android/k/b/e;->b()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/i;->a(Ljava/util/List;)V

    .line 139
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 144
    iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
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
            "Lcom/instagram/android/k/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    check-cast p1, Lcom/instagram/android/k/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/i;->a(Lcom/instagram/android/k/b/e;)V

    return-void
.end method
