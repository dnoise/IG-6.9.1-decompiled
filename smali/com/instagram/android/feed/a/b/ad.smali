.class final Lcom/instagram/android/feed/a/b/ad;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/x;

.field private b:Landroid/view/GestureDetector;

.field private c:Lcom/instagram/android/feed/a/b/ac;

.field private d:Ljava/lang/Integer;

.field private e:Lcom/instagram/feed/d/l;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/b/x;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ad;->a:Lcom/instagram/android/feed/a/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {p1}, Lcom/instagram/android/feed/a/b/x;->c(Lcom/instagram/android/feed/a/b/x;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/a/b/ae;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/b/ae;-><init>(Lcom/instagram/android/feed/a/b/ad;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->b:Landroid/view/GestureDetector;

    .line 158
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->b:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->e:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/b/ad;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/android/feed/a/b/ac;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->c:Lcom/instagram/android/feed/a/b/ac;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ad;->c:Lcom/instagram/android/feed/a/b/ac;

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->d:Ljava/lang/Integer;

    .line 169
    iput-object p3, p0, Lcom/instagram/android/feed/a/b/ad;->e:Lcom/instagram/feed/d/l;

    .line 171
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ad;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
