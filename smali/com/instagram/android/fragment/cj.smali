.class public final Lcom/instagram/android/fragment/cj;
.super Lcom/instagram/android/fragment/eu;
.source "LikedFeedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/instagram/android/fragment/eu;-><init>()V

    return-void
.end method

.method private as()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cj;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->load_more_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cj;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cj;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cj;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected final Y()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/eu;->a(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cj;->c(Z)V

    .line 28
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/eu;->a(Lcom/instagram/a/b;)V

    .line 61
    sget v0, Lcom/facebook/az;->likes:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 62
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "src"

    const-string v1, "liked"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method protected final b(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/eu;->b(Lcom/instagram/feed/a/i;Z)V

    .line 51
    invoke-direct {p0}, Lcom/instagram/android/fragment/cj;->as()V

    .line 52
    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/instagram/android/fragment/ck;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cj;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/ck;-><init>(Lcom/instagram/android/fragment/cj;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "feed_liked"

    return-object v0
.end method
