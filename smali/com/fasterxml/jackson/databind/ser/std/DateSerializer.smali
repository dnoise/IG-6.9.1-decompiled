.class public Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "DateSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ZLjava/text/DateFormat;)V
    .locals 1
    .parameter "useTimestamp"
    .parameter "customFormat"

    .prologue
    .line 31
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_timestamp(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/util/Date;)J
    .locals 2
    .parameter "value"

    .prologue
    .line 45
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_useTimestamp:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_timestamp(Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 56
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter p3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 58
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1

    .line 60
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0
.end method

.method public withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
    .locals 3
    .parameter "timestamp"
    .parameter "customFormat"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V

    goto :goto_0
.end method

.method public bridge synthetic withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    move-result-object v0

    return-object v0
.end method
