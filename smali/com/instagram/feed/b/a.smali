.class public final Lcom/instagram/feed/b/a;
.super Ljava/lang/Object;
.source "FeedAutoLoadMoreHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/instagram/feed/b/b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/instagram/feed/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/feed/b/a;->b:I

    .line 11
    sget v0, Lcom/instagram/feed/b/c;->b:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    .line 14
    iput-object p1, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    .line 15
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/instagram/feed/b/a;->b:I

    if-le v0, p1, :cond_1

    .line 52
    sget v0, Lcom/instagram/feed/b/c;->a:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget v0, p0, Lcom/instagram/feed/b/a;->b:I

    if-ge v0, p1, :cond_0

    .line 54
    sget v0, Lcom/instagram/feed/b/c;->b:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    goto :goto_0
.end method

.method private a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    add-int v0, p1, p2

    .line 43
    if-lez p3, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/instagram/feed/b/a;->c:I

    sget v2, Lcom/instagram/feed/b/c;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    invoke-interface {v1}, Lcom/instagram/feed/b/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/instagram/feed/b/a;->a(I)V

    .line 23
    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/feed/b/a;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    invoke-interface {v0}, Lcom/instagram/feed/b/b;->a()V

    .line 27
    :cond_0
    iput p2, p0, Lcom/instagram/feed/b/a;->b:I

    .line 28
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method
