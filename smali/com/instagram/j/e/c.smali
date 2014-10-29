.class public final Lcom/instagram/j/e/c;
.super Lcom/instagram/common/a/a/j;
.source "NewsfeedYouStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/j/d/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/j/e/a;


# direct methods
.method public constructor <init>(Lcom/instagram/j/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/j/d/o;)V
    .locals 6
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-static {v0}, Lcom/instagram/j/e/a;->a(Lcom/instagram/j/e/a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 166
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/j/e/a;->a(Z)V

    .line 167
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->a(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->t()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->b(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->u()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->c(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->d(Lcom/instagram/j/e/a;Ljava/util/List;)Ljava/util/List;

    .line 172
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->d()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->a(Lcom/instagram/j/e/a;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;

    .line 173
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-static {v0}, Lcom/instagram/j/e/a;->b(Lcom/instagram/j/e/a;)Lcom/instagram/feed/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    .line 181
    invoke-virtual {p1}, Lcom/instagram/j/d/o;->b()Lcom/instagram/j/d/p;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/instagram/j/d/p;->b()I

    move-result v1

    .line 183
    invoke-virtual {v0}, Lcom/instagram/j/d/p;->a()I

    move-result v2

    .line 184
    invoke-virtual {v0}, Lcom/instagram/j/d/p;->d()I

    move-result v3

    .line 185
    invoke-virtual {v0}, Lcom/instagram/j/d/p;->c()I

    move-result v0

    .line 187
    add-int v4, v1, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    if-lez v4, :cond_0

    .line 188
    new-instance v4, Landroid/content/Intent;

    const-string v5, "NewsfeedStore.BROADCAST_TOAST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v5, "NewsfeedStore.EXTRA_BROADCAST_TOAST_LIKES"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_COMMENTS"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_USERTAGS"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-static {v4}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 196
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    invoke-virtual {p1}, Lcom/instagram/j/d/o;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 200
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-static {}, Lcom/instagram/j/e/a;->m()V

    .line 201
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 154
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->a(Lcom/instagram/j/e/a;Z)Z

    .line 155
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
            "Lcom/instagram/j/d/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 160
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/j/e/a;->a(Lcom/instagram/j/e/a;Z)Z

    .line 161
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    check-cast p1, Lcom/instagram/j/d/o;

    invoke-direct {p0, p1}, Lcom/instagram/j/e/c;->a(Lcom/instagram/j/d/o;)V

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
            "Lcom/instagram/j/d/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/j/e/a;->a(Z)V

    .line 206
    iget-object v0, p0, Lcom/instagram/j/e/c;->a:Lcom/instagram/j/e/a;

    invoke-static {}, Lcom/instagram/j/e/a;->m()V

    .line 207
    return-void
.end method
