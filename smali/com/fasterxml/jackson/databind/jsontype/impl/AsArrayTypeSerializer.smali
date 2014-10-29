.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .parameter "idRes"
    .parameter "property"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
    .locals 2
    .parameter "prop"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    .line 28
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 146
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 147
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 149
    return-void
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 138
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 140
    return-void
.end method

.method public writeCustomTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 155
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 156
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 169
    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 163
    return-void
.end method

.method public writeCustomTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 175
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 66
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 74
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 76
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 47
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 57
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 94
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 118
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 109
    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 126
    return-void
.end method
