.class final Lcom/googlecode/mp4parser/a/a/b;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/a/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/coremedia/iso/boxes/ContainerBox;

.field d:J

.field final synthetic e:Lcom/googlecode/mp4parser/a/a/a;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    .line 395
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/List;

    .line 396
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/e;

    .line 398
    invoke-virtual {p1, v0, p2}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[I

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 401
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-ge v4, v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/googlecode/mp4parser/a/e;

    .line 404
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 405
    const-wide/16 v5, 0x0

    .line 406
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    .line 407
    aget v3, v0, v1

    int-to-long v9, v3

    add-long/2addr v5, v9

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 410
    :cond_2
    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v1

    move v3, v1

    :goto_3
    int-to-long v9, v3

    aget v1, v0, v4

    int-to-long v11, v1

    add-long/2addr v11, v5

    cmp-long v1, v9, v11

    if-gez v1, :cond_1

    .line 412
    iget-object v1, p1, Lcom/googlecode/mp4parser/a/a/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 413
    iget-wide v9, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    .line 414
    iget-object v9, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 401
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 421
    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/a/a/b;-><init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;)V

    return-void
.end method

.method private static a(J)Z
    .locals 4
    .parameter

    .prologue
    .line 448
    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 6

    .prologue
    .line 424
    .line 425
    const-wide/16 v0, 0x10

    .line 426
    :goto_0
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 427
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    invoke-interface {v2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    .line 428
    if-eq p0, v0, :cond_0

    .line 429
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1

    .line 433
    :cond_0
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object p0

    move-wide v0, v1

    goto :goto_0

    .line 435
    :cond_1
    return-wide v0
.end method

.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
    .parameter "writableByteChannel"

    .prologue
    .line 453
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/a/b;->getSize()J

    move-result-wide v1

    .line 455
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    .line 460
    :goto_0
    const-string v3, "mdat"

    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 461
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 466
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 467
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 468
    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/googlecode/mp4parser/a/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 472
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    int-to-double v0, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v6, v6, Lcom/googlecode/mp4parser/a/a/a;->a:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v0, v0, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int v1, v2, v0

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v4, v4, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int/2addr v0, v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v4, v4, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int/2addr v0, v4

    :goto_3
    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    :cond_0
    move-object v1, p1

    .line 478
    check-cast v1, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 479
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 472
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 458
    :cond_1
    const-wide/16 v3, 0x1

    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_0

    .line 464
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 473
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 485
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 488
    :cond_5
    return-void
.end method

.method public final getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public final getSize()J
    .locals 4

    .prologue
    .line 444
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string v0, "mdat"

    return-object v0
.end method

.method public final parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    return-void
.end method

.method public final setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Lcom/coremedia/iso/boxes/ContainerBox;

    .line 388
    return-void
.end method
