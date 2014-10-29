.class final Lcom/instagram/common/analytics/j;
.super Ljava/lang/Object;
.source "AnalyticsSessionSerializer.java"


# direct methods
.method public static a(Lcom/instagram/common/analytics/i;Lcom/fasterxml/jackson/a/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 16
    const-string v0, "seq"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 17
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instagram/common/analytics/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "app_id"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "app_ver"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "build_num"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "device_id"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "session_id"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "uid"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 27
    invoke-virtual {p0}, Lcom/instagram/common/analytics/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/b;

    .line 28
    invoke-static {v0, p1}, Lcom/instagram/common/analytics/c;->a(Lcom/instagram/common/analytics/b;Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 32
    const-string v0, "log_type"

    const-string v1, "client_event"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 35
    return-void
.end method
