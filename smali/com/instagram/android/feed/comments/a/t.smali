.class final Lcom/instagram/android/feed/comments/a/t;
.super Lcom/instagram/api/j/a;
.source "CommentThreadFragment.java"


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


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/comments/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/t;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->we_will_review_this_comment_asap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 770
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/support/v4/app/s;)V

    .line 780
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 1
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
    .line 774
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/content/Context;)V

    .line 775
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/t;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->g(Lcom/instagram/android/feed/comments/a/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/comments/a/u;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/comments/a/u;-><init>(Lcom/instagram/android/feed/comments/a/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method
