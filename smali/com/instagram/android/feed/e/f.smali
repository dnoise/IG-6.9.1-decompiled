.class public final Lcom/instagram/android/feed/e/f;
.super Ljava/lang/Object;
.source "ExploreAnalyticsUtil.java"


# direct methods
.method private static a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 54
    :try_start_0
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 59
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/instagram/common/analytics/g;Ljava/lang/String;Lcom/instagram/feed/d/ai;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    rem-int/lit8 v0, p3, 0x3

    .line 33
    div-int/lit8 v1, p3, 0x3

    .line 35
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v2

    new-instance v3, Lcom/instagram/common/analytics/b;

    invoke-direct {v3, p1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v4, "media_id"

    invoke-interface {p2}, Lcom/instagram/feed/d/ai;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v3

    const-string v4, "position"

    invoke-static {v0, v1}, Lcom/instagram/android/feed/e/f;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "visible_item_count"

    invoke-virtual {v0, v1, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "algorithm"

    invoke-interface {p2}, Lcom/instagram/feed/d/ai;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "impression_token"

    invoke-interface {p2}, Lcom/instagram/feed/d/ai;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 43
    return-void
.end method
