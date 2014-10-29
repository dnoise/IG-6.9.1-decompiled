.class final Lcom/instagram/common/analytics/q;
.super Ljava/lang/Object;
.source "ExtraBundle.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/analytics/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    .line 210
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 34
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-virtual {v2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/t;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 25
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/t;

    invoke-interface {v0, p1}, Lcom/instagram/common/analytics/t;->a(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 31
    return-void
.end method

.method final a(Ljava/lang/String;D)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/s;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/instagram/common/analytics/s;-><init>(DB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/u;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/u;-><init>(IB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method final a(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/v;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/instagram/common/analytics/v;-><init>(JB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/x;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/x;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/r;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/r;-><init>(ZB)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    new-instance v1, Lcom/instagram/common/analytics/w;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/analytics/w;-><init>([Ljava/lang/String;B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/common/analytics/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
