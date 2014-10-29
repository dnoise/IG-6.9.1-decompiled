.class public abstract Lcom/instagram/ui/d/c;
.super Lcom/instagram/ui/d/a;
.source "PagingNoResultsEnhancedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/ui/d/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected m:Z

.field protected final n:Lcom/instagram/ui/widget/loadmore/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    .line 29
    new-instance v0, Lcom/instagram/ui/widget/loadmore/f;

    invoke-direct {v0}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    .line 34
    iput-object p2, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a_(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    .line 109
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->a_(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    .line 118
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    .line 133
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V

    .line 134
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;

    invoke-interface {v3}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    add-int/2addr v0, v2

    .line 44
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget-boolean v2, p0, Lcom/instagram/ui/d/c;->m:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/instagram/ui/d/c;,"Lcom/instagram/ui/d/c<TT;>;"
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    .local p0, this:Lcom/instagram/ui/d/c;,"Lcom/instagram/ui/d/c<TT;>;"
    iget-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;

    invoke-interface {v0}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    .local p0, this:Lcom/instagram/ui/d/c;,"Lcom/instagram/ui/d/c<TT;>;"
    invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/loadmore/e;

    iget-object v1, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V

    move-object v0, p2

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/d/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/instagram/ui/d/c;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    .local p0, this:Lcom/instagram/ui/d/c;,"Lcom/instagram/ui/d/c<TT;>;"
    invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/ui/d/a;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
