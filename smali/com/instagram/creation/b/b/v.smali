.class public final Lcom/instagram/creation/b/b/v;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "VideoUploadUrlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/instagram/creation/b/a/j;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/j;Lcom/fasterxml/jackson/a/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 26
    const-string v0, "url"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "job"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "expires"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/j;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/creation/b/a/j;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/v;->a(Lcom/instagram/creation/b/a/j;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
