.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/JsonNode;
.source "BaseJsonNode.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public final findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public numberType$72641f5()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public abstract serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method

.method public abstract serializeWithType(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.end method

.method public traverse()Lcom/fasterxml/jackson/a/l;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-object v0
.end method

.method public traverse(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "codec"

    .prologue
    .line 53
    new-instance v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method
