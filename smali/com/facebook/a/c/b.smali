.class public final Lcom/facebook/a/c/b;
.super Ljava/util/LinkedList;
.source "BoundedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/a/c/b;->a:I

    .line 42
    iput p1, p0, Lcom/facebook/a/c/b;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/facebook/a/c/b;,"Lcom/facebook/a/c/b<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/a/c/b;->a:I

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->removeFirst()Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/facebook/a/c/b;,"Lcom/facebook/a/c/b<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/a/c/b;->a:I

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->removeFirst()Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/facebook/a/c/b;,"Lcom/facebook/a/c/b<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget v1, p0, Lcom/facebook/a/c/b;->a:I

    sub-int/2addr v0, v1

    .line 80
    if-lez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/a/c/b;->removeRange(II)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/facebook/a/c/b;,"Lcom/facebook/a/c/b<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/facebook/a/c/b;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/facebook/a/c/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
