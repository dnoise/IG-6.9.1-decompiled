.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _currentNode:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1
    .parameter "n"
    .parameter "p"

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    .line 147
    return-void
.end method


# virtual methods
.method public final currentHasChildren()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ContainerNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public final endToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public final bridge synthetic getParent()Lcom/fasterxml/jackson/a/q;
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/a/r;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 157
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_0
.end method

.method public final nextValue()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0
.end method
