.class public abstract Lcom/instagram/android/feed/ui/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NoLongPressGestureListener.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 26
    iget-boolean v1, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/c;->a()V

    .line 28
    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 37
    iget-boolean v1, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/c;->a()V

    .line 40
    iput-boolean v0, p0, Lcom/instagram/android/feed/ui/c;->a:Z

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
