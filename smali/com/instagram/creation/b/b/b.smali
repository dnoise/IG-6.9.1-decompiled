.class public final Lcom/instagram/creation/b/b/b;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ClipInfoSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/a;Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 26
    const-string v0, "clipFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "rotation"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 28
    const-string v0, "camera_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 29
    const-string v0, "pan"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;F)V

    .line 30
    const-string v0, "startMS"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 31
    const-string v0, "endMS"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 32
    const-string v0, "videoWidth"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->k()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 33
    const-string v0, "videoHeight"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->l()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 36
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
    check-cast p1, Lcom/instagram/creation/b/a/a;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/b;->a(Lcom/instagram/creation/b/a/a;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
