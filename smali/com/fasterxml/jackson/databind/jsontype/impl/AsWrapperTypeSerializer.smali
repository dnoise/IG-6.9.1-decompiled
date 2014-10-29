.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsWrapperTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .parameter "idRes"
    .parameter "property"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;
    .locals 2
    .parameter "prop"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    .line 32
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 145
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 146
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 138
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public writeCustomTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "jgen"
    .parameter "typeId"

    .prologue
    .line 153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 154
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 167
    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 161
    return-void
.end method

.method public writeCustomTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    .line 173
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 67
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
    .line 75
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 77
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 46
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
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 56
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"

    .prologue
    .line 85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 87
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
    .line 95
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 96
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 117
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 107
    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter "jgen"

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 125
    return-void
.end method
