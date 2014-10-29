.class final Lcom/instagram/android/directshare/c/v;
.super Lcom/instagram/common/a/a/j;
.source "InboxStore.java"


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
.field final synthetic a:Lcom/instagram/android/directshare/c/t;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/c/t;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 191
    iput-boolean p2, p0, Lcom/instagram/android/directshare/c/v;->b:Z

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/c/t;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/c/v;-><init>(Lcom/instagram/android/directshare/c/t;Z)V

    return-void
.end method

.method private a(Lcom/instagram/f/a/b/c;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->c()Lcom/instagram/f/b/a;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/f/b/a;)V

    .line 218
    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->t()Lcom/instagram/realtimeclient/RealtimeSubscription;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/h/f;->a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/v;->b:Z

    if-eqz v0, :cond_3

    .line 224
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/h/f;->d()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v0

    .line 225
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->f()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v0

    .line 227
    :goto_0
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/h/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(Ljava/util/List;)V

    .line 234
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->f()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V

    .line 235
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/f;->a(Ljava/util/Map;)V

    .line 237
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->b()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;

    .line 238
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/t;->b(Lcom/instagram/android/directshare/c/t;)Lcom/instagram/feed/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-eq v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(I)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/j;

    .line 245
    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->f()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->union(Lcom/instagram/realtimeclient/RealtimePatchRange;)Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_3
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/f/a/b/c;->f()Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/h/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V

    .line 230
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->g()V

    goto :goto_1

    .line 247
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 197
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;Z)Z

    .line 198
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/j;

    .line 199
    invoke-virtual {v0}, Lcom/instagram/common/a/a/j;->a()V

    goto :goto_0

    .line 201
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
    .line 205
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 206
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;Z)Z

    .line 208
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/j;

    .line 209
    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    check-cast p1, Lcom/instagram/f/a/b/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/v;->a(Lcom/instagram/f/a/b/c;)V

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
            "Lcom/instagram/f/a/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/instagram/android/directshare/c/v;->a:Lcom/instagram/android/directshare/c/t;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/android/directshare/c/t;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/j;

    .line 252
    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method
