.class public abstract Lcom/instagram/android/feed/a/a/h;
.super Ljava/lang/Object;
.source "FeedMediaCacheWarmer.java"


# instance fields
.field private final a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/android/feed/a/a/h;->b:I

    .line 65
    const v0, 0x7fffffff

    iput v0, p0, Lcom/instagram/android/feed/a/a/h;->c:I

    .line 68
    iput p1, p0, Lcom/instagram/android/feed/a/a/h;->a:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/h;-><init>(I)V

    return-void
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    const v0, 0x7fffffff

    iput v0, p0, Lcom/instagram/android/feed/a/a/h;->c:I

    .line 77
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/a/a/h;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/instagram/android/feed/a/a/h;->a:I

    add-int/2addr v1, v2

    .line 80
    :goto_0
    if-gt v0, v1, :cond_0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/a/a/h;->a(Landroid/widget/AbsListView;I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iput v1, p0, Lcom/instagram/android/feed/a/a/h;->b:I

    .line 84
    return-void
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/instagram/feed/d/l;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/h;->a(Lcom/instagram/feed/d/l;)V

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/h;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private b(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/android/feed/a/a/h;->b:I

    .line 101
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/a/a/h;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 102
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/instagram/android/feed/a/a/h;->a:I

    sub-int/2addr v1, v2

    .line 104
    :goto_0
    if-lt v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/a/a/h;->a(Landroid/widget/AbsListView;I)V

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    :cond_0
    iput v1, p0, Lcom/instagram/android/feed/a/a/h;->c:I

    .line 108
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/h;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/h;->b(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/instagram/feed/d/l;)V
.end method
