.class public final Lcom/instagram/creation/b/b/m;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PendingRecipientSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/instagram/creation/b/a/f;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 17
    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/f;Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 24
    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "username"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "profilepic_url"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/instagram/creation/b/a/f;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/m;->a(Lcom/instagram/creation/b/a/f;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
