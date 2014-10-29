.class public abstract Lcom/instagram/android/feed/a/m;
.super Lcom/instagram/android/feed/a/a;
.source "SimpleHeaderFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/android/feed/a/a;"
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/m;->getItemViewType(I)I

    move-result v0

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/m;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/m;->getItemViewType(I)I

    move-result v0

    .line 82
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/m;->b(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method protected abstract b(Landroid/content/Context;Landroid/view/View;I)V
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    .local p0, this:Lcom/instagram/android/feed/a/m;,"Lcom/instagram/android/feed/a/m<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    .local p0, this:Lcom/instagram/android/feed/a/m;,"Lcom/instagram/android/feed/a/m<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/instagram/android/feed/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
