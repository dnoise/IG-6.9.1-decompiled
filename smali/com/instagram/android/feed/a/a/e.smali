.class public final Lcom/instagram/android/feed/a/a/e;
.super Ljava/lang/Object;
.source "FeedMediaCacheWarmer.java"


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a/h;

.field private final b:Lcom/instagram/android/feed/a/a/h;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/instagram/common/g/b/h;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->c:I

    .line 25
    invoke-static {p2}, Lcom/instagram/feed/d/w;->a(Landroid/content/Context;)Lcom/instagram/feed/d/w;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/instagram/android/feed/a/a/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/feed/a/a/f;-><init>(Lcom/instagram/android/feed/a/a/e;Lcom/instagram/common/g/b/h;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a/h;

    .line 32
    new-instance v1, Lcom/instagram/android/feed/a/a/g;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/feed/a/a/g;-><init>(Lcom/instagram/android/feed/a/a/e;Lcom/instagram/feed/d/w;)V

    iput-object v1, p0, Lcom/instagram/android/feed/a/a/e;->b:Lcom/instagram/android/feed/a/a/h;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 43
    iget v1, p0, Lcom/instagram/android/feed/a/a/e;->c:I

    if-le v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/e;->b:Lcom/instagram/android/feed/a/a/h;

    invoke-static {v1, p1}, Lcom/instagram/android/feed/a/a/h;->a(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V

    .line 45
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a/h;

    invoke-static {v1, p1}, Lcom/instagram/android/feed/a/a/h;->a(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V

    .line 51
    :cond_0
    :goto_0
    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->c:I

    .line 52
    return-void

    .line 46
    :cond_1
    iget v1, p0, Lcom/instagram/android/feed/a/a/e;->c:I

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/e;->b:Lcom/instagram/android/feed/a/a/h;

    invoke-static {v1, p1}, Lcom/instagram/android/feed/a/a/h;->b(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V

    .line 48
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a/h;

    invoke-static {v1, p1}, Lcom/instagram/android/feed/a/a/h;->b(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
