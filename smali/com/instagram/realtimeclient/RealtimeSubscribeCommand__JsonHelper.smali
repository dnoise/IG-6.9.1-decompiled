.class public final Lcom/instagram/realtimeclient/RealtimeSubscribeCommand__JsonHelper;
.super Ljava/lang/Object;
.source "RealtimeSubscribeCommand__JsonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;
    .locals 3
    .parameter "jp"

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;

    invoke-direct {v0}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 25
    const/4 v0, 0x0

    .line 35
    :cond_0
    return-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 31
    invoke-static {v0, v1, p0}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand__JsonHelper;->processSingleField(Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;
    .locals 1
    .parameter "inputString"

    .prologue
    .line 58
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 60
    invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand__JsonHelper;->parseFromJson(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;

    move-result-object v0

    return-object v0
.end method

.method public static processSingleField(Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter "instance"
    .parameter "fieldName"
    .parameter "jp"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    const-string v2, "topic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->topic:Ljava/lang/String;

    move v0, v1

    .line 53
    :goto_1
    return v0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "sequence"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2

    :goto_2
    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->sequence:Ljava/lang/String;

    move v0, v1

    .line 45
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 46
    :cond_3
    const-string v2, "command"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_4

    :goto_3
    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->command:Ljava/lang/String;

    move v0, v1

    .line 48
    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 49
    :cond_5
    const-string v2, "auth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_6

    :goto_4
    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->auth:Ljava/lang/String;

    move v0, v1

    .line 51
    goto :goto_1

    .line 50
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 53
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static serializeToJson(Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;)Ljava/lang/String;
    .locals 3
    .parameter "object"

    .prologue
    .line 87
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 89
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand__JsonHelper;->serializeToJson(Lcom/fasterxml/jackson/a/h;Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;Z)V

    .line 90
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeToJson(Lcom/fasterxml/jackson/a/h;Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;Z)V
    .locals 2
    .parameter "generator"
    .parameter "object"
    .parameter "writeStartAndEnd"

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->topic:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "topic"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->topic:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->sequence:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "sequence"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->sequence:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_2
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->command:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    const-string v0, "command"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->command:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->auth:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 78
    const-string v0, "auth"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;->auth:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_4
    if-eqz p2, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 83
    :cond_5
    return-void
.end method
