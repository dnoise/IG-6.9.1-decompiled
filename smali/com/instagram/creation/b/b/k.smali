.class public final Lcom/instagram/creation/b/b/k;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PendingMediaSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/b;Lcom/fasterxml/jackson/a/h;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 26
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v1

    .line 27
    sget-object v0, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_3

    .line 28
    const-string v0, "mediaType"

    const-string v2, "photo"

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    const-string v0, "serverStatus"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "targetStatus"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "imageFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "key"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_1

    .line 42
    const-string v0, "videoFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "videoResult"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "recordingSessionFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "stitchedVideoInfo"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 50
    const-string v0, "videoInfoList"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->J()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 53
    const-string v0, "videoUploadUrls"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 56
    const-string v0, "coverFrameTimeMs"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->Q()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 59
    :cond_1
    const-string v0, "sourceType"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->c()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 60
    const-string v0, "filterTypeOrdinal"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 62
    const-string v0, "twitterEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->q()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 63
    const-string v0, "facebookEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->s()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 64
    const-string v0, "foursquareEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->t()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 65
    const-string v0, "tumblrEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->u()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 66
    const-string v0, "vkontakteEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->v()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 67
    const-string v0, "flickrEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->r()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 69
    const-string v0, "latitude"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->h()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    .line 70
    const-string v0, "longitude"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->i()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    .line 72
    const-string v0, "location"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->j()Lcom/instagram/venue/model/Venue;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "foursquare_request_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "caption"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "originalWidth"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->H()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 78
    const-string v0, "originalHeight"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->I()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_2

    .line 81
    const-string v0, "peopleTags"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->e()Lcom/instagram/creation/b/a/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "edits"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->e()Lcom/instagram/creation/b/a/i;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 90
    :cond_2
    const-string v0, "direct_share"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->P()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 95
    return-void

    .line 29
    :cond_3
    sget-object v0, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_0

    .line 30
    const-string v0, "mediaType"

    const-string v2, "video"

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/instagram/creation/b/a/b;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/k;->a(Lcom/instagram/creation/b/a/b;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
