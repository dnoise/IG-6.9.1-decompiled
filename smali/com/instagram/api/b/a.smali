.class public final Lcom/instagram/api/b/a;
.super Ljava/lang/Object;
.source "JsonParams.java"

# interfaces
.implements Lcom/instagram/common/a/c/d;


# instance fields
.field a:Lcom/fasterxml/jackson/a/h;

.field b:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-direct {p0, v0}, Lcom/instagram/api/b/a;-><init>(Lcom/fasterxml/jackson/a/e;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    .line 27
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/fasterxml/jackson/a/h;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 112
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
