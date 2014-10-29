.class public Lcom/instagram/user/c/a;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field private static final A:Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/Integer;

.field m:Ljava/lang/Integer;

.field n:Lcom/instagram/user/c/f;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/Integer;

.field q:Z

.field r:Ljava/lang/String;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/instagram/user/c/e;

.field u:Lcom/instagram/user/c/c;

.field v:Lcom/instagram/user/c/c;

.field w:Z

.field x:Z

.field y:Ljava/lang/Boolean;

.field z:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/user/c/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/user/c/b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/instagram/user/c/a;->A:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/instagram/user/c/f;->a:Lcom/instagram/user/c/f;

    iput-object v0, p0, Lcom/instagram/user/c/a;->n:Lcom/instagram/user/c/f;

    .line 128
    sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    iput-object v0, p0, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    .line 129
    sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    iput-object v0, p0, Lcom/instagram/user/c/a;->v:Lcom/instagram/user/c/c;

    .line 651
    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-static {p0}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance p1, Lcom/instagram/user/c/a;

    invoke-direct {p1}, Lcom/instagram/user/c/a;-><init>()V

    .line 141
    :cond_0
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)V

    .line 142
    const-string v0, "full_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V

    .line 143
    const-string v0, "profile_pic_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcom/instagram/o/e/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V

    .line 146
    const-string v0, "is_staff"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "is_staff"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Z)V

    .line 149
    :cond_1
    const-string v0, "usertag_review_enabled"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "usertag_review_enabled"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Z)V

    .line 152
    :cond_2
    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V

    .line 155
    :cond_3
    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V

    .line 158
    :cond_4
    const-string v0, "follower_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 159
    const-string v0, "follower_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/Integer;)V

    .line 161
    :cond_5
    const-string v0, "following_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 162
    const-string v0, "following_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/Integer;)V

    .line 164
    :cond_6
    const-string v0, "media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 165
    const-string v0, "media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->c(Ljava/lang/Integer;)V

    .line 167
    :cond_7
    const-string v0, "is_private"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 168
    const-string v0, "is_private"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    .line 172
    :cond_8
    const-string v0, "geo_media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 173
    const-string v0, "geo_media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->d(Ljava/lang/Integer;)V

    .line 175
    :cond_9
    const-string v0, "usertags_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 176
    const-string v0, "usertags_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Ljava/lang/Integer;)V

    .line 178
    :cond_a
    const-string v0, "is_verified"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 179
    const-string v0, "is_verified"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->e(Z)V

    .line 181
    :cond_b
    const-string v0, "extra_display_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 182
    const-string v0, "extra_display_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/instagram/user/c/a;->h(Ljava/lang/String;)V

    .line 185
    :cond_c
    const-string v0, "chaining_suggestions"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "chaining_suggestions"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const-string v0, "chaining_suggestions"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 189
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 190
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_d
    sget-object v0, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    goto/16 :goto_0

    .line 193
    :cond_e
    invoke-direct {p1, v1}, Lcom/instagram/user/c/a;->a(Ljava/util/List;)V

    .line 196
    :cond_f
    return-object p1
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    iput-object p1, p0, Lcom/instagram/user/c/a;->s:Ljava/util/List;

    .line 596
    return-void
.end method

.method public static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
    .locals 2
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/instagram/user/c/a;

    invoke-direct {v0}, Lcom/instagram/user/c/a;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 245
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 248
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 254
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 258
    invoke-static {v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method private static b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 266
    if-nez v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 272
    :goto_0
    return-object p0

    .line 269
    :cond_0
    invoke-interface {v0, p0}, Lcom/instagram/user/c/i;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/user/c/a;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/instagram/user/c/a;->z:Ljava/lang/Boolean;

    .line 556
    return-void
.end method

.method static synthetic g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/instagram/user/c/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/instagram/user/c/a;->r:Ljava/lang/String;

    .line 588
    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 603
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/c/g;

    invoke-direct {v1, p0}, Lcom/instagram/user/c/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/j/b;->b(Lcom/instagram/common/j/a;)V

    .line 604
    return-void
.end method

.method private static j(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 616
    sget-object v0, Lcom/instagram/user/c/a;->A:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 617
    sget-object v1, Lcom/instagram/user/c/a;->A:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    sget-object v1, Lcom/instagram/user/c/a;->A:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 619
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/instagram/user/c/a;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final C()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->q:Z

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/instagram/user/c/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/instagram/user/c/a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/user/c/a;->i(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/c/d;

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/user/c/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/j/b;->b(Lcom/instagram/common/j/a;)V

    .line 623
    return-void
.end method

.method protected final a()Lcom/instagram/user/c/a;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->c:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-object v0, v0, Lcom/instagram/user/c/e;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->c(Z)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-boolean v0, v0, Lcom/instagram/user/c/e;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/user/c/a;->b(Ljava/lang/Boolean;)V

    .line 219
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-boolean v0, v0, Lcom/instagram/user/c/e;->a:Z

    if-eqz v0, :cond_5

    .line 220
    sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    .line 227
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    .line 233
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    .line 235
    invoke-static {p0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0

    .line 209
    :cond_4
    sget-object v0, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    goto :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/instagram/user/c/a;->t:Lcom/instagram/user/c/e;

    iget-boolean v0, v0, Lcom/instagram/user/c/e;->b:Z

    if-eqz v0, :cond_6

    .line 222
    sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    goto :goto_1

    .line 224
    :cond_6
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    goto :goto_1
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    .line 308
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;

    .line 311
    :cond_3
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->h()Z

    move-result v0

    iget-boolean v1, p0, Lcom/instagram/user/c/a;->g:Z

    if-eq v0, v1, :cond_4

    .line 312
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/user/c/a;->g:Z

    .line 314
    :cond_4
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 315
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->e:Ljava/lang/Boolean;

    .line 317
    :cond_5
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->f:Ljava/lang/String;

    .line 320
    :cond_6
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->i()Z

    move-result v0

    iget-boolean v1, p0, Lcom/instagram/user/c/a;->h:Z

    if-eq v0, v1, :cond_7

    .line 321
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/user/c/a;->h:Z

    .line 323
    :cond_7
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 324
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/String;

    .line 326
    :cond_8
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 327
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/String;

    .line 329
    :cond_9
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 330
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    .line 332
    :cond_a
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 333
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->l:Ljava/lang/Integer;

    .line 335
    :cond_b
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 336
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    .line 338
    :cond_c
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/c/a;->n:Lcom/instagram/user/c/f;

    if-eq v0, v1, :cond_d

    .line 339
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->n:Lcom/instagram/user/c/f;

    .line 341
    :cond_d
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 342
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->o:Ljava/lang/Integer;

    .line 344
    :cond_e
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->C()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 345
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->C()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/Integer;

    .line 347
    :cond_f
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 348
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->r:Ljava/lang/String;

    .line 350
    :cond_10
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->F()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 351
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->F()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->s:Ljava/util/List;

    .line 355
    :cond_11
    iget-object v0, p1, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    sget-object v1, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    if-eq v0, v1, :cond_12

    .line 356
    iget-object v0, p1, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    iput-object v0, p0, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    .line 357
    iget-object v0, p1, Lcom/instagram/user/c/a;->v:Lcom/instagram/user/c/c;

    iput-object v0, p0, Lcom/instagram/user/c/a;->v:Lcom/instagram/user/c/c;

    .line 360
    :cond_12
    iget-object v0, p1, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 361
    iget-object v0, p1, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    .line 363
    :cond_13
    return-void
.end method

.method public final a(Lcom/instagram/user/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    .line 506
    return-void
.end method

.method public final a(Lcom/instagram/user/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/instagram/user/c/a;->n:Lcom/instagram/user/c/f;

    .line 498
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/instagram/user/c/a;->y:Ljava/lang/Boolean;

    .line 552
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    .line 446
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/instagram/user/c/a;->g:Z

    .line 414
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/instagram/user/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/instagram/user/c/a;->v:Lcom/instagram/user/c/c;

    .line 514
    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/instagram/user/c/a;->l:Ljava/lang/Integer;

    .line 468
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/instagram/user/c/a;->h:Z

    .line 422
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    .line 476
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/instagram/user/c/a;->w:Z

    .line 522
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    .line 385
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/instagram/user/c/a;->o:Ljava/lang/Integer;

    .line 564
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/instagram/user/c/a;->x:Z

    .line 544
    return-void
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/Integer;

    .line 572
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/instagram/user/c/a;->q:Z

    .line 580
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 389
    const-string v0, "http://images.ak.instagram.com/profiles/anonymousUser.jpg"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 636
    if-ne p0, p1, :cond_1

    .line 643
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 637
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 639
    :cond_3
    check-cast p1, Lcom/instagram/user/c/a;

    .line 641
    .end local p1
    iget-object v2, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->g:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->h:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    .line 453
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final o()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/instagram/user/c/a;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    .line 483
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final s()Lcom/instagram/user/c/f;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/instagram/user/c/a;->n:Lcom/instagram/user/c/f;

    return-object v0
.end method

.method public final t()Lcom/instagram/user/c/c;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/instagram/user/c/a;->u:Lcom/instagram/user/c/c;

    return-object v0
.end method

.method public final u()Lcom/instagram/user/c/c;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/instagram/user/c/a;->v:Lcom/instagram/user/c/c;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->w:Z

    return v0
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/user/c/a;->w:Z

    .line 527
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->G()V

    .line 528
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/instagram/user/c/a;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/instagram/user/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/instagram/user/c/a;->x:Z

    return v0
.end method
