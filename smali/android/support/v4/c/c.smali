.class public Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;-><init>(I)V

    .line 62
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 70
    const v0, 0x7fffffff

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/c/c;-><init>(III)V

    .line 71
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-gtz p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-gtz p2, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxEntries <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput p3, p0, Landroid/support/v4/c/c;->h:I

    .line 90
    iput p1, p0, Landroid/support/v4/c/c;->c:I

    .line 91
    iput p2, p0, Landroid/support/v4/c/c;->i:I

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    .line 93
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->b:I

    if-gt v0, p1, :cond_0

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    monitor-exit p0

    .line 196
    const/4 v0, 0x0

    move v1, v0

    .line 200
    :goto_1
    monitor-enter p0

    .line 201
    :try_start_1
    iget v0, p0, Landroid/support/v4/c/c;->b:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/c/c;->b:I

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :cond_2
    :try_start_2
    iget v0, p0, Landroid/support/v4/c/c;->h:I

    if-lt v1, v0, :cond_3

    iget v0, p0, Landroid/support/v4/c/c;->b:I

    if-le v0, p1, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 210
    :cond_5
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    iget-object v3, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget v3, p0, Landroid/support/v4/c/c;->b:I

    invoke-direct {p0, v2, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Landroid/support/v4/c/c;->b:I

    .line 215
    iget v0, p0, Landroid/support/v4/c/c;->b:I

    .line 216
    iget v0, p0, Landroid/support/v4/c/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->e:I

    .line 217
    add-int/lit8 v0, v1, 0x1

    .line 218
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    goto :goto_1
.end method

.method private a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/support/v4/c/c;->a(I)V

    .line 258
    invoke-direct {p0, p2}, Landroid/support/v4/c/c;->b(I)V

    .line 259
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p2}, Landroid/support/v4/c/c;->c(Ljava/lang/Object;)I

    move-result v0

    .line 325
    if-gez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    return v0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    monitor-exit p0

    .line 232
    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_1
    monitor-enter p0

    .line 237
    :try_start_1
    iget v0, p0, Landroid/support/v4/c/c;->h:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 244
    iget-object v3, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget v3, p0, Landroid/support/v4/c/c;->b:I

    invoke-direct {p0, v2, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Landroid/support/v4/c/c;->b:I

    .line 246
    iget v0, p0, Landroid/support/v4/c/c;->b:I

    .line 247
    iget v0, p0, Landroid/support/v4/c/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->e:I

    .line 248
    add-int/lit8 v0, v1, 0x1

    .line 249
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    iget v1, p0, Landroid/support/v4/c/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/c/c;->f:I

    .line 111
    monitor-exit p0

    .line 125
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget v0, p0, Landroid/support/v4/c/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->g:I

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    monitor-enter p0

    .line 165
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->d:I

    .line 166
    iget v0, p0, Landroid/support/v4/c/c;->b:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/c/c;->b:I

    .line 167
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    iget v1, p0, Landroid/support/v4/c/c;->b:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/c/c;->b:I

    .line 171
    :cond_2
    iget v1, p0, Landroid/support/v4/c/c;->b:I

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget v1, p0, Landroid/support/v4/c/c;->c:I

    iget v2, p0, Landroid/support/v4/c/c;->i:I

    invoke-direct {p0, v1, v2}, Landroid/support/v4/c/c;->a(II)V

    .line 179
    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;->a(I)V

    .line 353
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    iget v1, p0, Landroid/support/v4/c/c;->b:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/c/c;->b:I

    .line 276
    iget v1, p0, Landroid/support/v4/c/c;->b:I

    .line 278
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 432
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/support/v4/c/c;->f:I

    iget v2, p0, Landroid/support/v4/c/c;->g:I

    add-int/2addr v1, v2

    .line 433
    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v4/c/c;->f:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 434
    :cond_0
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/c/c;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v4/c/c;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/support/v4/c/c;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
