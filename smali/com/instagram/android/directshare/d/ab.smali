.class final Lcom/instagram/android/directshare/d/ab;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;

.field private final b:Landroid/view/GestureDetector$OnGestureListener;

.field private final c:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 3
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/instagram/android/directshare/d/ab;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    new-instance v0, Lcom/instagram/android/directshare/d/ac;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/ac;-><init>(Lcom/instagram/android/directshare/d/ab;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ab;->b:Landroid/view/GestureDetector$OnGestureListener;

    .line 878
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ab;->b:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ab;->c:Landroid/view/GestureDetector;

    .line 879
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ab;->c:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 880
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/d/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/ab;-><init>(Lcom/instagram/android/directshare/d/c;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter "event"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ab;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 885
    const/4 v0, 0x0

    return v0
.end method
