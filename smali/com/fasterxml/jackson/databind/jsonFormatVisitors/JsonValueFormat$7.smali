.class final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat$7;
.super Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
.source "JsonValueFormat.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat$1;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "style"

    return-object v0
.end method
