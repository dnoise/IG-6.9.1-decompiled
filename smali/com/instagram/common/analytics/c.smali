.class final Lcom/instagram/common/analytics/c;
.super Ljava/lang/Object;
.source "AnalyticsEventSerializer.java"


# direct methods
.method public static a(Lcom/instagram/common/analytics/b;Lcom/fasterxml/jackson/a/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 19
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instagram/common/analytics/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "module"

    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/instagram/common/analytics/b;->f()Lcom/instagram/common/analytics/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/common/analytics/q;->a(Lcom/fasterxml/jackson/a/h;)V

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 34
    return-void
.end method
