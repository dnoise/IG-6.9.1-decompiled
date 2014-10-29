.class public final Lcom/instagram/feed/c/c;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# static fields
.field private static a:Lcom/instagram/common/o/a;

.field private static b:Lcom/instagram/common/o/a;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/c/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/c/s;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/instagram/feed/g/a;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    .line 73
    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    sget-object v1, Lcom/instagram/feed/c/d;->a:Lcom/instagram/feed/c/d;

    invoke-virtual {v1, p2}, Lcom/instagram/feed/c/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    sget-object v1, Lcom/instagram/feed/c/d;->b:Lcom/instagram/feed/c/d;

    invoke-virtual {v1, p2}, Lcom/instagram/feed/c/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_LAST_VIEWED_IMPRESSION_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    .line 68
    sput-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;

    .line 69
    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->e(Lcom/instagram/feed/d/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-long v2, v0, p2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-object v2, Lcom/instagram/feed/c/d;->b:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    const-string v2, "viewed_impression"

    invoke-static {v2, p1, p4, p5}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 272
    sget-object v2, Lcom/instagram/feed/c/d;->b:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;J)V

    goto :goto_0

    .line 277
    :cond_2
    sget-object v2, Lcom/instagram/feed/c/d;->b:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/c;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 279
    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 280
    const-string v2, "sub_viewed_impression"

    invoke-static {v2, p1, p4, p5}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 285
    sget-object v2, Lcom/instagram/feed/c/d;->b:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;J)V

    goto :goto_0
.end method

.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->d(Lcom/instagram/feed/d/l;)Lcom/instagram/common/o/a;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v0, p3, p4}, Lcom/instagram/common/o/a;->b(Ljava/lang/String;J)V

    .line 146
    invoke-virtual {v1}, Lcom/instagram/common/o/a;->a()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    .line 147
    invoke-static {v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/common/o/a;)V

    .line 149
    :cond_0
    return-void
.end method

.method private b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->d(Lcom/instagram/feed/d/l;)Lcom/instagram/common/o/a;

    move-result-object v1

    .line 128
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/o/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private c(Lcom/instagram/feed/d/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/32 v2, -0x80000000

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->d(Lcom/instagram/feed/d/l;)Lcom/instagram/common/o/a;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/o/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/instagram/feed/d/l;)Lcom/instagram/common/o/a;
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/instagram/feed/c/c;->e()V

    .line 103
    iget-object v0, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized e()V
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/instagram/feed/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    monitor-exit v1

    return-void

    .line 60
    :cond_0
    :try_start_1
    const-string v0, "starred_view"

    invoke-static {v0}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/o/a;->c(Ljava/lang/String;)Lcom/instagram/common/o/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    .line 62
    const-string v0, "organic_view"

    invoke-static {v0}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/o/a;->c(Ljava/lang/String;)Lcom/instagram/common/o/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->d(Lcom/instagram/feed/d/l;)Lcom/instagram/common/o/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 5
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->e(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/c/s;

    .line 203
    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 210
    iget-object v3, v0, Lcom/instagram/feed/c/s;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 211
    const-wide/16 v3, 0x1f4

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {p1, v3}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const-string v3, "time_spent"

    iget-object v4, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {v3, p1, v4}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/e;

    move-result-object v3

    iget v0, v0, Lcom/instagram/feed/c/s;->d:I

    invoke-virtual {v3, v0}, Lcom/instagram/feed/c/e;->a(I)Lcom/instagram/feed/c/e;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/c/e;->a(J)Lcom/instagram/feed/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {v0, p1, v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/feed/d/l;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->e(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    sget-object v2, Lcom/instagram/feed/c/d;->a:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    const-string v2, "impression"

    iget-object v3, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {v2, p1, p2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 179
    sget-object v2, Lcom/instagram/feed/c/d;->a:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;J)V

    .line 180
    invoke-static {}, Lcom/instagram/feed/c/l;->a()Lcom/instagram/feed/c/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ae()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/l;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 185
    :cond_2
    sget-object v2, Lcom/instagram/feed/c/d;->a:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2}, Lcom/instagram/feed/c/c;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;)J

    move-result-wide v2

    .line 186
    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 187
    const-string v2, "sub_impression"

    iget-object v3, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    invoke-static {v2, p1, p2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 192
    sget-object v2, Lcom/instagram/feed/c/d;->a:Lcom/instagram/feed/c/d;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/c/d;J)V

    .line 193
    invoke-static {}, Lcom/instagram/feed/c/l;->a()Lcom/instagram/feed/c/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ae()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/l;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    .line 294
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 298
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/c/s;

    .line 304
    iget-object v1, v0, Lcom/instagram/feed/c/s;->a:Lcom/instagram/feed/d/l;

    iget-object v2, v0, Lcom/instagram/feed/c/s;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v7, v2

    iget v4, v0, Lcom/instagram/feed/c/s;->d:I

    iget-object v5, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 312
    sget-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/common/o/a;

    invoke-virtual {v0}, Lcom/instagram/common/o/a;->c()V

    .line 315
    :cond_1
    sget-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    if-eqz v0, :cond_2

    .line 316
    sget-object v0, Lcom/instagram/feed/c/c;->a:Lcom/instagram/common/o/a;

    invoke-virtual {v0}, Lcom/instagram/common/o/a;->c()V

    .line 318
    :cond_2
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;)V
    .locals 7
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->e(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/c/s;

    .line 236
    if-nez v0, :cond_1

    .line 237
    const-string v0, "ImpressionTracker"

    const-string v1, "Viewable info missing for media with key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 242
    iget-object v3, p0, Lcom/instagram/feed/c/c;->d:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/instagram/feed/c/s;

    iget-object v6, v0, Lcom/instagram/feed/c/s;->b:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Lcom/instagram/feed/c/s;->d:I

    invoke-direct {v5, p1, v6, v1, v2}, Lcom/instagram/feed/c/s;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/instagram/feed/c/s;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, v0, Lcom/instagram/feed/c/s;->d:I

    iget-object v5, p0, Lcom/instagram/feed/c/c;->e:Lcom/instagram/feed/g/a;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;JILcom/instagram/feed/g/a;)V

    goto :goto_0
.end method

.method public final b(Lcom/instagram/feed/d/l;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->e(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/instagram/feed/c/c;->c(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/instagram/feed/c/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/instagram/feed/c/s;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 324
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 325
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/c/s;

    .line 329
    new-instance v6, Lcom/instagram/feed/c/s;

    iget-object v7, v0, Lcom/instagram/feed/c/s;->a:Lcom/instagram/feed/d/l;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    iget v0, v0, Lcom/instagram/feed/c/s;->d:I

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/feed/c/s;-><init>(Lcom/instagram/feed/d/l;Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 333
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 337
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 341
    iget-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    return-void
.end method
