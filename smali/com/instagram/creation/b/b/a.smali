.class public final Lcom/instagram/creation/b/b/a;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "ClipInfoDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/creation/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/a;
    .locals 4
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 27
    new-instance v1, Lcom/instagram/creation/b/a/a;

    invoke-direct {v1}, Lcom/instagram/creation/b/a/a;-><init>()V

    .line 29
    const-string v2, "clipFilePath"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;

    .line 30
    const-string v2, "camera_id"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    .line 31
    const-string v2, "rotation"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->b(I)Lcom/instagram/creation/b/a/a;

    .line 32
    const-string v2, "pan"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;

    .line 33
    const-string v2, "startMS"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    .line 34
    const-string v2, "endMS"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 35
    const-string v2, "videoWidth"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    const-string v3, "videoHeight"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/creation/b/a/a;->a(II)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 15
    invoke-static {p1}, Lcom/instagram/creation/b/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    return-object v0
.end method
