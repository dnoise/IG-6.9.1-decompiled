.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter "prop"
    .parameter "vts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;,"Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer<TT;>;"
    .local p1, src:Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;,"Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 76
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;,"Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer<TT;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 71
    return-void
.end method
