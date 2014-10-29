.class public final Lcom/instagram/android/g/b;
.super Ljava/lang/Object;
.source "GeoMedia.java"

# interfaces
.implements Lcom/instagram/android/maps/b/a;
.implements Lcom/instagram/feed/d/ai;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/maps/b/a;)I
    .locals 4
    .parameter

    .prologue
    .line 156
    check-cast p1, Lcom/instagram/android/g/b;

    .line 157
    iget-wide v0, p0, Lcom/instagram/android/g/b;->c:D

    iget-wide v2, p1, Lcom/instagram/android/g/b;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/b;
    .locals 5
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/instagram/android/g/b;

    invoke-direct {v0}, Lcom/instagram/android/g/b;-><init>()V

    .line 29
    :cond_1
    const-string v2, "media_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v1, v0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/instagram/android/g/b;->c:D

    .line 36
    const/4 v1, 0x1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/instagram/android/g/b;->h:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "lat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/g/b;->a:D

    goto :goto_0

    .line 40
    :cond_3
    const-string v2, "lng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 42
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/g/b;->b:D

    goto :goto_0

    .line 43
    :cond_4
    const-string v2, "thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b;->d:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_5
    const-string v2, "display_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 48
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 49
    :cond_6
    const-string v2, "low_res_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 51
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 52
    :cond_7
    const-string v2, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 54
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :cond_8
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto/16 :goto_0

    .line 62
    :cond_9
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 181
    const/4 v2, 0x0

    .line 183
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 185
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    .line 186
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    .line 187
    invoke-virtual {v0}, Lcom/instagram/android/g/b;->d()Ljava/lang/String;

    move-result-object v7

    .line 188
    if-eqz v7, :cond_3

    .line 189
    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 190
    if-nez v1, :cond_1

    .line 192
    new-instance v1, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v1

    .line 197
    :goto_1
    invoke-virtual {v5, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/g/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    move v2, v0

    move-object v3, v1

    .line 205
    goto :goto_0

    .line 194
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    .line 207
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/g/b;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    const/16 v0, 0x96

    if-gt p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/instagram/android/g/b;->d:Ljava/lang/String;

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const/16 v0, 0x132

    if-gt p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/instagram/android/g/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/g/b;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/instagram/android/g/b;->a:D

    return-wide v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/instagram/android/g/b;->b:D

    return-wide v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/instagram/android/maps/b/a;

    .end local p1
    invoke-direct {p0, p1}, Lcom/instagram/android/g/b;->a(Lcom/instagram/android/maps/b/a;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/g/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 170
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 163
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

    .line 165
    :cond_3
    check-cast p1, Lcom/instagram/android/g/b;

    .line 167
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 168
    goto :goto_0

    .line 167
    :cond_4
    iget-object v2, p1, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/g/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
