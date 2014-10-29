.class public final Lcom/instagram/model/people/a/a;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PeopleTagSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/model/people/PeopleTag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/instagram/model/people/PeopleTag;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method private static a(Lcom/instagram/model/people/PeopleTag;Lcom/fasterxml/jackson/a/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 26
    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 28
    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->b()Landroid/graphics/PointF;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "position"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 32
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    .line 33
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/model/people/a/a;->a(Lcom/instagram/model/people/PeopleTag;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
