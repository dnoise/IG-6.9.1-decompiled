.class final Lcom/instagram/android/feed/comments/a/n;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a_(I)V

    .line 281
    :cond_0
    return-void
.end method
