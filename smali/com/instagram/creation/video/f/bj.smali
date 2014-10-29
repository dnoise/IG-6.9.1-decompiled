.class final Lcom/instagram/creation/video/f/bj;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/instagram/creation/video/f/bi;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    iput-object p2, p0, Lcom/instagram/creation/video/f/bj;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter "event"

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/instagram/creation/video/f/bj;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 232
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    return v1

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;Z)Z

    .line 207
    iget-object v0, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->j()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->b(Lcom/instagram/creation/video/f/bi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->c(Lcom/instagram/creation/video/f/bi;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 214
    iget-object v0, p0, Lcom/instagram/creation/video/f/bj;->b:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->i()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
