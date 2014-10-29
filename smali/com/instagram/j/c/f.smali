.class final Lcom/instagram/j/c/f;
.super Lcom/instagram/common/a/a/j;
.source "NewsfeedFollowingFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/j/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/j/c/e;


# direct methods
.method private constructor <init>(Lcom/instagram/j/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/j/c/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/instagram/j/c/f;-><init>(Lcom/instagram/j/c/e;)V

    return-void
.end method

.method private a(Lcom/instagram/j/d/a;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/j/c/e;->a(Lcom/instagram/j/c/e;Z)Z

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/instagram/j/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/d/c;

    .line 112
    invoke-virtual {v0}, Lcom/instagram/j/d/c;->a()Lcom/instagram/j/d/g;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0}, Lcom/instagram/j/c/e;->a(Lcom/instagram/j/c/e;)Lcom/instagram/j/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/j/a/a;->a(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0}, Lcom/instagram/j/c/e;->b(Lcom/instagram/j/c/e;)V

    .line 118
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->W()V

    .line 119
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 132
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0, v1}, Lcom/instagram/j/c/e;->b(Lcom/instagram/j/c/e;Z)Z

    .line 133
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0}, Lcom/instagram/j/c/e;->c(Lcom/instagram/j/c/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    iget-object v1, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/n;)V

    .line 138
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
            "Lcom/instagram/j/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 143
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0, v1}, Lcom/instagram/j/c/e;->b(Lcom/instagram/j/c/e;Z)Z

    .line 144
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0}, Lcom/instagram/j/c/e;->d(Lcom/instagram/j/c/e;)Z

    .line 145
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->E()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    iget-object v1, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/n;)V

    .line 148
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    check-cast p1, Lcom/instagram/j/d/a;

    invoke-direct {p0, p1}, Lcom/instagram/j/c/f;->a(Lcom/instagram/j/d/a;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/j/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 124
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/j/c/e;->a(Lcom/instagram/j/c/e;Z)Z

    .line 125
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-static {v0}, Lcom/instagram/j/c/e;->b(Lcom/instagram/j/c/e;)V

    .line 126
    iget-object v0, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0}, Lcom/instagram/j/c/e;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    iget-object v1, p0, Lcom/instagram/j/c/f;->a:Lcom/instagram/j/c/e;

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/g;->b(Lcom/instagram/j/c/n;)V

    .line 127
    return-void
.end method
