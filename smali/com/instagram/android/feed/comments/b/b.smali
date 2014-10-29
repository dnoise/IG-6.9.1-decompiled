.class final Lcom/instagram/android/feed/comments/b/b;
.super Lcom/instagram/api/j/a;
.source "CommentPoster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;

.field final synthetic b:Lcom/instagram/feed/d/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v0, v1, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/j;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/feed/d/b;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method
