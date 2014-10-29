.class public final Lcom/instagram/creation/b/c/a/b;
.super Lcom/instagram/api/k/a/b;
.source "ConfigureMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;

.field private b:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "ConfigureModule"

    invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    .line 56
    new-instance v1, Lcom/instagram/creation/b/b/r;

    invoke-direct {v1}, Lcom/instagram/creation/b/b/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 57
    new-instance v1, Lcom/instagram/model/people/a/a;

    invoke-direct {v1}, Lcom/instagram/model/people/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 58
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;)V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 59
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 276
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 279
    const-string v2, "in"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 282
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 284
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/api/b/a;Lcom/instagram/creation/b/a/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "edits"

    invoke-virtual {p0, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->a()Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/creation/b/b/q;->a(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Lcom/instagram/api/b/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/b/a;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    const-string v0, "clips"

    invoke-virtual {p0, v0}, Lcom/instagram/api/b/a;->b(Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/a;

    .line 248
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->b()V

    .line 250
    const-string v2, "length"

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;D)V

    .line 251
    const-string v2, "source_type"

    invoke-virtual {p0, v2, p2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "front"

    .line 257
    :goto_1
    const-string v2, "camera_position"

    invoke-virtual {p0, v2, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->c()V

    goto :goto_0

    .line 255
    :cond_1
    const-string v0, "back"

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->d()V

    .line 264
    return-void
.end method

.method private b(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;)V

    .line 221
    const-string v0, "source_width"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->H()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    .line 222
    const-string v0, "source_height"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->I()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {p1}, Lcom/instagram/api/b/a;->c()V

    .line 227
    :cond_0
    return-void
.end method

.method private static c(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const-string v0, "device"

    invoke-virtual {p0, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;)V

    .line 232
    const-string v0, "manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "android_version"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    .line 235
    const-string v0, "android_release"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/instagram/api/b/a;->c()V

    .line 239
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 8
    .parameter

    .prologue
    .line 77
    const-string v0, "caption"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    const-string v1, "4"

    .line 101
    const-string v0, "library"

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->J()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/instagram/creation/b/c/a/b;->a(Lcom/instagram/api/b/a;Ljava/util/List;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->Q()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 112
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 114
    const-string v3, "poster_frame_index"

    invoke-virtual {p1, v3, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    .line 115
    const-string v2, "length"

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;D)V

    .line 118
    :cond_0
    const-string v0, "source_type"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const-string v0, "filter_type"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "geotag_enabled"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "media_latitude"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->h()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "media_longitude"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->i()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/instagram/share/f/a;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :pswitch_0
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "3"

    .line 90
    :goto_3
    const-string v1, "camera"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 92
    goto/16 :goto_0

    .line 88
    :cond_2
    const-string v0, "5"

    goto :goto_3

    .line 94
    :pswitch_1
    const-string v1, "6"

    .line 95
    const-string v0, "mixed"

    goto/16 :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->e()Lcom/instagram/creation/b/a/i;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/creation/b/c/a/b;->a(Lcom/instagram/api/b/a;Lcom/instagram/creation/b/a/i;)V

    goto/16 :goto_1

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    invoke-static {}, Lcom/instagram/share/c/a;->b()Lcom/instagram/share/c/a;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/instagram/share/c/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/instagram/share/b/a;->i()Lcom/instagram/share/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/share/b/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_6
    const-string v1, "share_to_facebook"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "fb_access_token"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v0

    .line 160
    const-string v1, "share_to_foursquare"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "foursquare_access_token"

    invoke-virtual {v0}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;

    move-result-object v0

    .line 167
    const-string v1, "share_to_tumblr"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "tumblr_access_token_key"

    invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "tumblr_access_token_secret"

    invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->j()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_b

    .line 182
    :try_start_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/instagram/creation/b/c/a/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_6
    const-string v0, "foursquare_request_id"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->F()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    :try_start_1
    const-string v0, "usertags"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/creation/b/c/a/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    const-string v0, "video_result"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_d
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a/b;->b(Lcom/instagram/api/b/a;)V

    .line 198
    invoke-static {p1}, Lcom/instagram/creation/b/c/a/b;->c(Lcom/instagram/api/b/a;)V

    .line 200
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/b;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "media/configure/?video=1"

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "media/configure/"

    goto :goto_0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
