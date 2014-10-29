.class final Lcom/instagram/creation/b/c/e;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# static fields
.field private static a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/instagram/creation/b/c/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/instagram/creation/b/c/d;

.field private final c:Lcom/instagram/common/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/creation/b/c/f;

    invoke-direct {v0}, Lcom/instagram/creation/b/c/f;-><init>()V

    sput-object v0, Lcom/instagram/creation/b/c/e;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/common/a/b/a;Lcom/instagram/creation/b/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;

    .line 60
    iput-object p2, p0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;

    .line 61
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/instagram/creation/b/c/a/d;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    const/4 v2, -0x1

    .line 262
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v2, v4, v0

    .line 264
    const-string v6, "(/|-)"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v6, Lcom/instagram/creation/b/c/a/d;

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v2, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    sget-object v0, Lcom/instagram/creation/b/c/e;->a:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/c/a/d;

    .line 280
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/c/a/d;

    .line 282
    :goto_1
    iget v4, v0, Lcom/instagram/creation/b/c/a/d;->a:I

    if-nez v4, :cond_2

    .line 284
    iget v0, v0, Lcom/instagram/creation/b/c/a/d;->b:I

    add-int/lit8 v3, v0, 0x1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    iget v0, v1, Lcom/instagram/creation/b/c/a/d;->a:I

    move v1, v3

    .line 292
    :goto_2
    new-instance v2, Lcom/instagram/creation/b/c/a/d;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v1, v0}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V

    return-object v2

    .line 280
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 289
    :cond_2
    iget v0, v0, Lcom/instagram/creation/b/c/a/d;->a:I

    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v2

    move v1, v3

    goto :goto_2
.end method

.method private static a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 243
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 246
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/b/a/b;)I
    .locals 21
    .parameter

    .prologue
    .line 64
    const/4 v7, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v3, 0x0

    .line 69
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    const-string v3, "VideoUploader"

    const-string v4, "Could not open pending media for reading"

    invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;

    const-string v4, "Rendered video doesn\'t exist"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 73
    sget v3, Lcom/instagram/creation/b/c/h;->c:I

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 87
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v8, v7

    move-object v7, v5

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/creation/b/a/j;

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Trying server: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/instagram/creation/b/a/j;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v9, v3, 0x1

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    const/4 v10, 0x1

    .line 104
    new-instance v3, Lcom/instagram/creation/b/c/a/d;

    const/4 v11, 0x0

    const-wide/32 v12, 0x32000

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v3, v11, v12}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V

    move-object v12, v3

    move v11, v8

    move v3, v10

    move-object v10, v7

    .line 107
    :goto_2
    if-eqz v3, :cond_d

    .line 108
    const/4 v13, 0x0

    .line 109
    iget v3, v12, Lcom/instagram/creation/b/c/a/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget v3, v12, Lcom/instagram/creation/b/c/a/d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    :try_start_0
    new-instance v3, Lcom/instagram/creation/b/c/a/f;

    iget v7, v12, Lcom/instagram/creation/b/c/a/d;->a:I

    invoke-virtual {v12}, Lcom/instagram/creation/b/c/a/d;->a()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/b/c/a/f;-><init>(Ljava/lang/String;Lcom/instagram/creation/b/a/j;Ljava/io/File;II)V

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;

    move-object/from16 v17, v0

    new-instance v18, Lcom/instagram/creation/b/c/g;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/b/c/g;-><init>(Lcom/instagram/creation/b/c/e;Lcom/instagram/creation/b/a/b;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v10

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v7, v17, v7

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v17, "Time to upload "

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v0, v7

    move-wide/from16 v17, v0

    const-wide v19, 0x408f400000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, "s"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v3, 0xc8

    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v4

    const-class v5, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v4, v3, v5}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 137
    const-string v4, "result"

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->h(Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 140
    sget v3, Lcom/instagram/creation/b/c/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 224
    :try_start_1
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 141
    :cond_2
    const/16 v3, 0xc9

    :try_start_2
    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-virtual {v12}, Lcom/instagram/creation/b/c/a/d;->a()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v17, 0x3ff0

    mul-double v12, v12, v17

    long-to-double v7, v7

    div-double v7, v12, v7

    .line 146
    const-wide v12, 0x40c47a8000000000L

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 149
    const-wide v12, 0x40b3880000000000L

    mul-double/2addr v7, v12

    .line 152
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 153
    const v3, 0x32000

    double-to-int v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 157
    const-string v7, "Range"

    invoke-interface {v10, v7}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v7

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/instagram/creation/b/c/e;->a(Ljava/lang/String;)Lcom/instagram/creation/b/c/a/d;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Lcom/instagram/creation/b/c/a/d;->a()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 161
    new-instance v3, Lcom/instagram/creation/b/c/a/d;

    iget v12, v7, Lcom/instagram/creation/b/c/a/d;->a:I

    iget v7, v7, Lcom/instagram/creation/b/c/a/d;->a:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v3, v12, v7}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    const/4 v7, 0x1

    .line 222
    :goto_3
    if-eqz v10, :cond_c

    .line 224
    :try_start_3
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v12, v3

    move v3, v7

    .line 226
    goto/16 :goto_2

    .line 167
    :cond_3
    const/16 v3, 0x1a6

    :try_start_4
    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;

    const-string v4, "Video is corrupt"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    sget v3, Lcom/instagram/creation/b/c/h;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 224
    :try_start_5
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 177
    :cond_4
    const/16 v3, 0x193

    :try_start_6
    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    .line 181
    sget-object v3, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 183
    sget v3, Lcom/instagram/creation/b/c/h;->b:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 224
    :try_start_7
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 185
    :cond_5
    const/16 v3, 0x1f7

    :try_start_8
    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x1f4

    invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 188
    :cond_6
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    const/4 v3, 0x2

    if-ne v9, v3, :cond_7

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;

    const-string v4, "Transient server error"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 198
    sget v3, Lcom/instagram/creation/b/c/h;->c:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 224
    :try_start_9
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 206
    :cond_7
    if-nez v11, :cond_a

    .line 207
    :try_start_a
    new-instance v3, Lcom/instagram/creation/b/c/a/a;

    invoke-direct {v3}, Lcom/instagram/creation/b/c/a/a;-><init>()V

    .line 208
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;

    invoke-virtual {v7, v3}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v7, 0xc8

    if-eq v3, v7, :cond_9

    .line 212
    :cond_8
    const-string v3, "VideoUploader"

    const-string v4, "No connectivity, failing."

    invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget v3, Lcom/instagram/creation/b/c/h;->c:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 224
    :try_start_b
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 215
    :cond_9
    const/4 v11, 0x1

    .line 219
    :cond_a
    :try_start_c
    const-string v3, "VideoUploader"

    const-string v7, "Have connectivity, trying next server"

    invoke-static {v3, v7}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v3, v12

    move v7, v13

    goto/16 :goto_3

    .line 226
    :catch_5
    move-exception v8

    move-object v12, v3

    move v3, v7

    goto/16 :goto_2

    .line 222
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_b

    .line 224
    :try_start_d
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 226
    :cond_b
    :goto_4
    throw v3

    :cond_c
    move-object v12, v3

    move v3, v7

    goto/16 :goto_2

    :cond_d
    move v3, v9

    move-object v7, v10

    move v8, v11

    .line 230
    goto/16 :goto_1

    .line 234
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    .line 235
    sget-object v3, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 236
    sget v3, Lcom/instagram/creation/b/c/h;->c:I

    goto/16 :goto_0

    :catch_6
    move-exception v4

    goto :goto_4
.end method
