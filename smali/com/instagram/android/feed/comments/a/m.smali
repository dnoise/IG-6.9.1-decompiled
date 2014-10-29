.class final Lcom/instagram/android/feed/comments/a/m;
.super Lcom/instagram/common/a/a/j;
.source "CommentThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/feed/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/a/i;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-static {v1, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    .line 204
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->d(Lcom/instagram/android/feed/comments/a/a;)V

    .line 206
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/android/feed/comments/a/a;)Z

    .line 207
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    check-cast p1, Lcom/instagram/feed/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/m;->a(Lcom/instagram/feed/a/i;)V

    return-void
.end method
