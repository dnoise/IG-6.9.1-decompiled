.class final Lcom/instagram/android/directshare/c/d;
.super Lcom/instagram/common/a/a/j;
.source "InboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/f/a/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/f/a/b/c;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/o;->a(Z)V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->b(Lcom/instagram/android/directshare/c/c;)V

    .line 139
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->a()V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->d(Lcom/instagram/android/directshare/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->a(Ljava/util/List;)V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->e(Lcom/instagram/android/directshare/c/c;)Z

    .line 146
    :cond_0
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->a(I)V

    .line 150
    :cond_1
    invoke-static {}, Lcom/instagram/android/directshare/f/a;->a()Lcom/instagram/android/directshare/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/f/a;->b()V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->f(Lcom/instagram/android/directshare/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->s_()V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->g(Lcom/instagram/android/directshare/c/c;)Z

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->h(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/c/c;->h(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 161
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/o;->a()V

    .line 163
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 116
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/o;->a(Z)V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 120
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
            "Lcom/instagram/f/a/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 125
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    check-cast p1, Lcom/instagram/f/a/b/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/d;->a(Lcom/instagram/f/a/b/c;)V

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
            "Lcom/instagram/f/a/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 169
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/o;->a(Z)V

    .line 171
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    :cond_0
    invoke-static {}, Lcom/instagram/android/directshare/a/a;->a()V

    .line 176
    return-void
.end method
