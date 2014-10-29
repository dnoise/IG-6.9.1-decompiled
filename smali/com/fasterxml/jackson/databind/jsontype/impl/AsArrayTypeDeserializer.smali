.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.source "AsArrayTypeDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4a2f47f9ad71b962L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .parameter "bt"
    .parameter "idRes"
    .parameter "typePropertyName"
    .parameter "typeIdVisible"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p5, defaultImpl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .parameter "src"
    .parameter "property"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 37
    return-void
.end method

.method private final _deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->isExpectedStartArrayToken()Z

    move-result v0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_locateTypeId(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 104
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_typeIdVisible:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v3, v4, :cond_0

    .line 107
    new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V

    .line 108
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 109
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/a/g/m;->a(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/g/m;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 114
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v2, :cond_1

    .line 117
    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    const-string v1, "expected closing END_ARRAY after type information and deserialized value"

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/r;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 120
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected final _locateTypeId(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
    .locals 3
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromBaseType()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/r;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromBaseType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/r;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeTypedFromAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromScalar(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1
    .parameter "prop"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_0

    .line 44
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
