.class public final Lcom/instagram/creation/b/b/n;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PeopleTagPendingMediaDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/model/people/PeopleTag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/instagram/model/people/PeopleTag;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    new-instance v2, Lcom/instagram/model/people/PeopleTag;

    invoke-direct {v2}, Lcom/instagram/model/people/PeopleTag;-><init>()V

    move-object v1, v0

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v3, v4, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 33
    const-string v4, "username"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_1
    const-string v4, "user_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    const-string v4, "position"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 42
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v3

    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v4

    .line 45
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v5}, Lcom/instagram/model/people/PeopleTag;->a(Landroid/graphics/PointF;)V

    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 47
    :cond_3
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 52
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v2, v1}, Lcom/instagram/model/people/PeopleTag;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v0}, Lcom/instagram/model/people/PeopleTag;->b(Ljava/lang/String;)V

    .line 57
    :cond_5
    return-object v2
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 17
    invoke-static {p1}, Lcom/instagram/creation/b/b/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;

    move-result-object v0

    return-object v0
.end method
