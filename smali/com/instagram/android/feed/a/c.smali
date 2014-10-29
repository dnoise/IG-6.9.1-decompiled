.class final Lcom/instagram/android/feed/a/c;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/a/a/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/android/feed/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    iput p2, p0, Lcom/instagram/android/feed/a/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->al()Lcom/instagram/feed/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;)V

    .line 188
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->p_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/a/d;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/d;-><init>(Lcom/instagram/android/feed/a/c;Lcom/instagram/feed/d/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->al()Lcom/instagram/feed/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;I)V

    .line 176
    iget v0, p0, Lcom/instagram/android/feed/a/c;->a:I

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/instagram/feed/c/q;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Lcom/instagram/feed/c/q;->a()Lcom/instagram/feed/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/instagram/feed/c/q;->a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 183
    :cond_1
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->al()Lcom/instagram/feed/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/c;->b(Lcom/instagram/feed/d/l;)V

    .line 198
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->al()Lcom/instagram/feed/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/c;->b(Lcom/instagram/feed/d/l;I)V

    .line 193
    return-void
.end method
