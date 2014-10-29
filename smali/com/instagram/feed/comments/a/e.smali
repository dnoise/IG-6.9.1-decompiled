.class final Lcom/instagram/feed/comments/a/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CommentRowViewBinder.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/comments/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/feed/comments/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 100
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->d:Lcom/instagram/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v1, v1, Lcom/instagram/feed/comments/a/d;->c:Lcom/instagram/feed/d/b;

    invoke-interface {v0, v1}, Lcom/instagram/feed/comments/a/g;->a(Lcom/instagram/feed/d/b;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 102
    return-void
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 95
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->d:Lcom/instagram/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v1, v1, Lcom/instagram/feed/comments/a/d;->c:Lcom/instagram/feed/d/b;

    invoke-interface {v0, v1}, Lcom/instagram/feed/comments/a/g;->a(Lcom/instagram/feed/d/b;)V

    .line 120
    return v2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 110
    iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    new-instance v1, Lcom/instagram/feed/comments/a/f;

    invoke-direct {v1, p0}, Lcom/instagram/feed/comments/a/f;-><init>(Lcom/instagram/feed/comments/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
