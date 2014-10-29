.class final Lcom/instagram/android/people/b/j;
.super Lcom/instagram/common/a/a/j;
.source "PeopleTagSearchFragment.java"


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
.field final synthetic a:Lcom/instagram/android/people/b/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/k/b/e;)V
    .locals 4
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Lcom/instagram/android/k/b/e;->b()Ljava/util/List;

    move-result-object v1

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 230
    iget-object v3, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v3}, Lcom/instagram/android/people/b/h;->f(Lcom/instagram/android/people/b/h;)Lcom/instagram/model/people/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->b(Lcom/instagram/android/people/b/h;)Lcom/instagram/android/people/widget/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/d;->d(Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->g(Lcom/instagram/android/people/b/h;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 236
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 241
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/people/b/h;->a:Z

    .line 242
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->h(Lcom/instagram/android/people/b/h;)V

    .line 243
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
    .line 247
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 248
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;Z)Z

    .line 249
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/people/b/h;->a:Z

    .line 250
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->e(Lcom/instagram/android/people/b/h;)V

    .line 251
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    check-cast p1, Lcom/instagram/android/k/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/j;->a(Lcom/instagram/android/k/b/e;)V

    return-void
.end method
