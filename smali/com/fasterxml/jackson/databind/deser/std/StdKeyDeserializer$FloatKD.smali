.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 240
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
    .locals 2
    .parameter "key"
    .parameter

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
