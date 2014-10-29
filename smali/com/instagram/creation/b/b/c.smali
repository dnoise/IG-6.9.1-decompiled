.class public final Lcom/instagram/creation/b/b/c;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PendingMediaDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/creation/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/a;
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/b/a/a;-><init>()V

    .line 210
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;

    .line 211
    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/a;->b(I)Lcom/instagram/creation/b/a/a;

    .line 212
    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    .line 214
    const-string v1, "stitchedVideoFilePath"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;

    .line 217
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 218
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 219
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 221
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    invoke-virtual {v0, v2, v3}, Lcom/instagram/creation/b/a/a;->b(II)V

    .line 225
    invoke-static {v1}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 228
    :cond_0
    const-string v1, "camera_id"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const-string v1, "camera_id"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    .line 235
    :cond_1
    :goto_0
    return-object v0

    .line 230
    :cond_2
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/camera/h;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    goto :goto_0
.end method

.method private a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/b;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 41
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 44
    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 45
    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 48
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 50
    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    .line 58
    :goto_0
    const-string v3, "imageFilePath"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v3, "key"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 62
    sget-object v5, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v2, v5, :cond_b

    .line 63
    invoke-static {v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v4}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    move-object v3, v2

    .line 113
    :cond_0
    :goto_1
    const-string v2, "targetStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 114
    if-nez v2, :cond_11

    .line 116
    const-string v2, "postedByUser"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 117
    if-nez v2, :cond_f

    .line 119
    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    .line 121
    :goto_2
    invoke-virtual {v4, v2}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    .line 128
    :goto_3
    const-string v2, "serverStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 129
    if-nez v2, :cond_13

    .line 131
    const-string v2, "needsUpload"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 132
    sget-object v2, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 142
    :cond_1
    :goto_4
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 143
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    .line 148
    :goto_5
    const-string v2, "sourceType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(I)V

    .line 149
    const-string v2, "filterTypeOrdinal"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(I)V

    .line 151
    const-string v2, "twitterEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Z)V

    .line 152
    const-string v2, "facebookEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Z)V

    .line 153
    const-string v2, "foursquareEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Z)V

    .line 154
    const-string v2, "foursquare_request_id"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "foursquare_request_id"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->j(Ljava/lang/String;)V

    .line 157
    :cond_2
    const-string v2, "tumblrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(Z)V

    .line 158
    const-string v2, "vkontakteEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const-string v2, "vkontakteEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->f(Z)V

    .line 161
    :cond_3
    const-string v2, "flickrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    const-string v2, "flickrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->e(Z)V

    .line 165
    :cond_4
    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(I)V

    .line 167
    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->e(I)V

    .line 170
    :cond_5
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instagram/creation/b/a/b;->a(D)V

    .line 171
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instagram/creation/b/a/b;->b(D)V

    .line 173
    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/venue/model/Venue;

    .line 174
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/venue/model/Venue;)V

    .line 176
    const-string v2, "caption"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 178
    const-string v2, "peopleTags"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    new-instance v2, Lcom/instagram/creation/b/b/g;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/g;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 181
    const-string v4, "peopleTags"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/ArrayList;)V

    .line 185
    :cond_6
    const/4 v2, 0x0

    .line 186
    const-string v4, "edits"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    new-instance v2, Lcom/instagram/creation/b/b/h;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/h;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 189
    const-string v4, "edits"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/creation/b/a/i;

    .line 191
    :cond_7
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/i;)V

    .line 193
    const-string v2, "direct_share"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    const-string v2, "direct_share"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->h(Z)V

    .line 196
    new-instance v2, Lcom/instagram/creation/b/b/i;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/i;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 199
    const-string v4, "recipients"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/g;->a(Ljava/util/List;)V

    .line 204
    :cond_8
    return-object v3

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown MediaType "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_a
    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    goto/16 :goto_0

    .line 66
    :cond_b
    invoke-static {v3}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    .line 68
    const-string v2, "recordingSessionFilePath"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 70
    const-string v2, "videoFilePath"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_c

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 72
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    .line 75
    :cond_c
    const-string v2, "videoInfoList"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 76
    new-instance v2, Lcom/instagram/creation/b/b/d;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/d;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 78
    const-string v6, "videoInfoList"

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V

    .line 87
    :goto_6
    const-string v2, "stitchedVideoInfo"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 88
    new-instance v2, Lcom/instagram/creation/b/b/e;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/e;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 90
    const-string v6, "stitchedVideoInfo"

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/creation/b/a/a;

    .line 92
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V

    .line 97
    :goto_7
    invoke-virtual {v3, v5}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    .line 99
    const-string v2, "videoResult"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->h(Ljava/lang/String;)V

    .line 101
    new-instance v2, Lcom/instagram/creation/b/b/f;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/f;-><init>(Lcom/instagram/creation/b/b/c;)V

    .line 104
    const-string v4, "videoUploadUrls"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 106
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    .line 108
    const-string v2, "coverFrameTimeMs"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "coverFrameTimeMs"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->f(I)V

    goto/16 :goto_1

    .line 82
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {v1}, Lcom/instagram/creation/b/b/c;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/a;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V

    goto :goto_6

    .line 94
    :cond_e
    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->J()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/creation/b/a/a;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V

    goto :goto_7

    .line 121
    :cond_f
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    goto/16 :goto_2

    :cond_10
    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    goto/16 :goto_2

    .line 125
    :cond_11
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/b/a/d;->valueOf(Ljava/lang/String;)Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_3

    .line 133
    :cond_12
    const-string v2, "needsConfigure"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_4

    .line 137
    :cond_13
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/b/a/d;->valueOf(Ljava/lang/String;)Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_4

    .line 145
    :cond_14
    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/b/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method
