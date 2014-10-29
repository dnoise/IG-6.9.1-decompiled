.class public final Lcom/instagram/creation/video/j/d;
.super Lcom/instagram/creation/video/j/a;
.source "FinalRenderController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/instagram/creation/b/a/b;

.field private final e:Lcom/instagram/creation/b/a/a;

.field private f:Landroid/media/MediaFormat;

.field private g:Landroid/media/MediaExtractor;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Landroid/media/MediaExtractor;

.field private j:Landroid/media/MediaCodec;

.field private k:Landroid/media/MediaFormat;

.field private l:[Ljava/nio/ByteBuffer;

.field private m:Landroid/media/MediaCodec$BufferInfo;

.field private n:I

.field private o:I

.field private p:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/instagram/creation/video/j/f;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/instagram/creation/video/gl/j;

    const/4 v1, 0x0

    const/16 v2, 0x280

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/a;-><init>(Lcom/instagram/creation/video/gl/j;)V

    .line 43
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    .line 53
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iput v3, p0, Lcom/instagram/creation/video/j/d;->n:I

    .line 56
    iput v3, p0, Lcom/instagram/creation/video/j/d;->o:I

    .line 68
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    .line 70
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    new-instance v0, Lcom/instagram/creation/video/j/f;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    .line 77
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->b()V

    .line 78
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    invoke-virtual {v0, p3}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V

    .line 79
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    .line 81
    iput-object p2, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;

    .line 82
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    .line 83
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;

    .line 94
    const-string v0, "mkv"

    invoke-static {p1, p2, v0}, Lcom/instagram/creation/video/c/b;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/instagram/creation/video/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;

    .line 97
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error accessing disk for media extraction."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(J)V
    .locals 5
    .parameter

    .prologue
    .line 249
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 254
    if-ltz v2, :cond_0

    .line 255
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2, v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I

    .line 258
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 16
    .parameter

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/instagram/creation/video/j/d;->k()Landroid/media/MediaCodec;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 268
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 269
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 270
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/instagram/creation/video/j/d;->b(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    mul-int/lit16 v12, v2, 0x3e8

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v2

    mul-int/lit16 v13, v2, 0x3e8

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    int-to-long v4, v12

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 279
    const/4 v2, 0x0

    move-object v8, v3

    move v3, v2

    .line 281
    :goto_0
    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 282
    if-ltz v2, :cond_2

    .line 283
    const/4 v9, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    aget-object v4, v10, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 285
    if-gez v4, :cond_1

    .line 286
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v2, v9

    .line 298
    :cond_0
    :goto_1
    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v11, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 299
    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_6

    .line 300
    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    .line 304
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v8, v3

    move v3, v2

    goto :goto_0

    .line 288
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move v2, v9

    .line 292
    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_0

    .line 295
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not decode audio because of unavailale codec buffers."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_3
    if-ltz v3, :cond_5

    .line 306
    aget-object v4, v8, v3

    .line 307
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 308
    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 309
    iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    int-to-long v14, v12

    cmp-long v5, v5, v14

    if-ltz v5, :cond_4

    iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    int-to-long v14, v13

    cmp-long v5, v5, v14

    if-gtz v5, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/j/d;->h:Ljava/nio/ByteBuffer;

    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4, v5}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeAudioBuffer(Ljava/nio/ByteBuffer;I)I

    .line 315
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_5
    move v3, v2

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_6
    invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncodingAudio()I

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 321
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 322
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 324
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    .line 326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 341
    :cond_7
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 328
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error accessing disk for media extraction."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 338
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVorbisEncoder(Ljava/lang/String;IID)I

    move-result v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    const-string v1, "FinalRenderController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not configure audio codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v2, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    move v0, v1

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;

    .line 214
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 217
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    .line 218
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;

    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    invoke-virtual {v4}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/j/d;->r:I

    .line 226
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/j/d;->s:I

    .line 227
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 230
    iput v1, p0, Lcom/instagram/creation/video/j/d;->o:I

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget v0, p0, Lcom/instagram/creation/video/j/d;->s:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget v0, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 234
    iget v0, p0, Lcom/instagram/creation/video/j/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/j/d;->o:I

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 222
    :cond_2
    iput-object v5, p0, Lcom/instagram/creation/video/j/d;->k:Landroid/media/MediaFormat;

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 240
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 241
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/d;->l:[Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V

    .line 243
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->q:Lcom/instagram/creation/video/j/f;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/b/a/a;)V

    .line 244
    return-void
.end method

.method private k()Landroid/media/MediaCodec;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 345
    move v0, v1

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    .line 349
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    invoke-virtual {v4}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 352
    iget-object v4, p0, Lcom/instagram/creation/video/j/d;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 353
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 354
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 359
    :goto_1
    return-object v0

    .line 357
    :cond_0
    iput-object v2, p0, Lcom/instagram/creation/video/j/d;->f:Landroid/media/MediaFormat;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private q()V
    .locals 4

    .prologue
    const/16 v1, 0x280

    .line 372
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVideoCodec(Ljava/lang/String;II)I

    move-result v0

    .line 375
    if-eqz v0, :cond_0

    .line 377
    const-string v1, "FinalRenderController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not configure codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->d()V

    .line 109
    invoke-direct {p0}, Lcom/instagram/creation/video/j/d;->j()V

    .line 110
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/d;->a(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/instagram/creation/video/j/d;->q()V

    .line 112
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 180
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v4, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeFrame(JJ)I

    .line 181
    iget v2, p0, Lcom/instagram/creation/video/j/d;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instagram/creation/video/j/d;->n:I

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rendered frame number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/instagram/creation/video/j/d;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v0, p0, Lcom/instagram/creation/video/j/d;->o:I

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/instagram/creation/video/j/d;->n:I

    int-to-double v0, v0

    iget v2, p0, Lcom/instagram/creation/video/j/d;->o:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;

    const-wide v3, 0x4046800000000000L

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/instagram/creation/b/a/b;->c(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncoding()I

    .line 196
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 197
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 198
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 200
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rendered to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->d:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 121
    if-ltz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->l:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 124
    iget-object v3, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 125
    if-gez v3, :cond_3

    .line 126
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v1, p0, Lcom/instagram/creation/video/j/d;->s:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/d;->h()V

    move v2, v7

    .line 173
    :goto_1
    return v2

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 131
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 133
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 134
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->p:Ljava/util/Queue;

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_4
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v1, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_5

    .line 145
    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 146
    const/4 v0, -0x1

    .line 169
    :goto_2
    :pswitch_0
    if-ltz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/instagram/creation/video/j/d;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v3, p0, Lcom/instagram/creation/video/j/d;->r:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/j/d;->a(J)V

    goto :goto_1

    .line 150
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 158
    iget-object v1, p0, Lcom/instagram/creation/video/j/d;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 165
    const-wide/16 v3, 0xc

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v3, v4, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    .line 150
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
