.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonArrayFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;


# instance fields
.field protected _provider:Lcom/fasterxml/jackson/databind/SerializerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-object v0
.end method

.method public itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;

    return-void
.end method
