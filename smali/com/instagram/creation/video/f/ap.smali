.class public final Lcom/instagram/creation/video/f/ap;
.super Lcom/instagram/creation/video/f/ah;
.source "VideoCoverFragmentJellybean.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Z

.field final synthetic h:Lcom/instagram/creation/video/f/ao;

.field private volatile i:Landroid/media/MediaExtractor;

.field private volatile j:Landroid/media/MediaCodec;

.field private k:J

.field private volatile l:J

.field private volatile m:Z

.field private volatile n:Z


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/ao;Lcom/instagram/creation/video/gl/j;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 105
    iput-object p1, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/ah;-><init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V

    .line 67
    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    .line 73
    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    .line 77
    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->n:Z

    .line 81
    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->b:J

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/ap;->c:J

    .line 90
    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->d:J

    .line 94
    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->e:J

    .line 98
    iput-wide v2, p0, Lcom/instagram/creation/video/f/ap;->f:J

    .line 102
    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 107
    return-void
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 164
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->n:Z

    .line 168
    iput-wide p1, p0, Lcom/instagram/creation/video/f/ap;->l:J

    .line 169
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->l:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 170
    iget-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    if-eqz v2, :cond_2

    .line 171
    monitor-exit p0

    .line 188
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 167
    goto :goto_0

    .line 173
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    .line 174
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->b:J

    sub-long/2addr v2, v4

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 176
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ao;->c()V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ao;->b(Lcom/instagram/creation/video/f/ao;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/aq;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/aq;-><init>(Lcom/instagram/creation/video/f/ap;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ap;->q()V

    return-void
.end method

.method private static b(I)V
    .locals 2
    .parameter

    .prologue
    .line 413
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(J)Z
    .locals 18
    .parameter

    .prologue
    .line 260
    const/4 v11, 0x0

    .line 261
    const/4 v12, 0x0

    .line 262
    const/4 v10, 0x0

    .line 263
    new-instance v16, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 264
    const/4 v3, 0x0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-wide v8, v13

    move v15, v3

    .line 269
    :goto_0
    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/instagram/creation/video/f/ap;->l:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_13

    if-eqz v12, :cond_0

    if-nez v10, :cond_13

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v0, v1, Lcom/instagram/creation/video/f/ao;->e:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 271
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v1, v1, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v1, :cond_1

    .line 272
    const/4 v1, 0x0

    monitor-exit v17

    .line 383
    :goto_1
    return v1

    .line 275
    :cond_1
    const/4 v2, -0x1

    .line 276
    if-nez v12, :cond_16

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 278
    if-ltz v2, :cond_16

    .line 279
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 281
    if-nez v1, :cond_2

    .line 282
    const/4 v1, 0x0

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v17

    throw v1

    .line 285
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    aget-object v1, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 286
    if-gez v4, :cond_3

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 293
    const/4 v1, 0x1

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    move v6, v2

    move v7, v1

    .line 309
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    .line 310
    const/4 v1, -0x1

    if-eq v12, v1, :cond_15

    .line 312
    const/4 v1, -0x3

    if-eq v12, v1, :cond_15

    .line 314
    const/4 v1, -0x2

    if-eq v12, v1, :cond_15

    .line 316
    if-gez v12, :cond_4

    .line 317
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    move v4, v10

    move v5, v11

    .line 357
    :goto_3
    const/4 v1, -0x1

    if-ne v6, v1, :cond_12

    const/4 v1, -0x1

    if-ne v12, v1, :cond_12

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v2, v1, v8

    .line 359
    add-int/lit8 v1, v15, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_11

    const-wide/16 v10, 0x12c

    cmp-long v6, v2, v10

    if-lez v6, :cond_11

    .line 360
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/creation/video/f/ap;->j()V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ao;->c()V

    .line 367
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/instagram/creation/video/f/ap;->b(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual/range {p0 .. p0}, Lcom/instagram/creation/video/f/ap;->h()Z

    move-result v2

    iput-boolean v2, v1, Lcom/instagram/creation/video/f/ao;->d:Z

    .line 369
    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/instagram/creation/video/f/ap;->b(I)V

    .line 371
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->f:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->e:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/instagram/creation/video/f/ap;->d:J

    .line 372
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 373
    const/4 v1, 0x0

    monitor-exit v17

    goto/16 :goto_1

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    move v6, v2

    move v7, v12

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    goto/16 :goto_2

    .line 319
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 320
    move-object/from16 v0, v16

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    .line 321
    :goto_4
    if-eqz v2, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 325
    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-lez v1, :cond_7

    .line 326
    :cond_6
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/instagram/creation/video/f/ap;->d:J

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 329
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/instagram/creation/video/f/ap;->d:J

    cmp-long v1, v3, p1

    if-gez v1, :cond_8

    if-eqz v2, :cond_c

    :cond_8
    const/4 v3, 0x1

    .line 330
    :goto_5
    if-nez v3, :cond_9

    if-eqz v7, :cond_d

    :cond_9
    const/4 v1, 0x1

    .line 332
    :goto_6
    if-nez v1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->c:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x96

    cmp-long v4, v4, v10

    if-lez v4, :cond_a

    .line 334
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/instagram/creation/video/f/ap;->n:Z

    if-eqz v1, :cond_f

    .line 336
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    sub-long v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    sub-long v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-gez v1, :cond_e

    const/4 v1, 0x1

    .line 344
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v4, v12, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 345
    if-eqz v1, :cond_14

    .line 346
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/instagram/creation/video/f/ap;->b:J

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/instagram/creation/video/f/ap;->c:J

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v2

    move v5, v3

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    goto/16 :goto_3

    .line 320
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 329
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 330
    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    .line 336
    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    .line 341
    :cond_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/instagram/creation/video/f/ap;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/instagram/creation/video/f/ap;->b:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    goto :goto_7

    :cond_11
    move v3, v1

    move-wide v1, v8

    .line 379
    :goto_8
    monitor-exit v17

    move-wide v8, v1

    move v15, v3

    move v10, v4

    move v12, v7

    move v11, v5

    goto/16 :goto_0

    .line 376
    :cond_12
    const/4 v3, 0x0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_8

    .line 381
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-long/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 383
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_14
    move v4, v2

    move v5, v3

    goto/16 :goto_3

    :cond_15
    move v4, v10

    move v5, v11

    goto/16 :goto_3

    :cond_16
    move v6, v2

    move v7, v12

    goto/16 :goto_2
.end method

.method private q()V
    .locals 12

    .prologue
    .line 196
    const-wide/16 v0, -0x1

    .line 199
    :cond_0
    :goto_0
    monitor-enter p0

    .line 200
    :try_start_0
    iget-wide v2, p0, Lcom/instagram/creation/video/f/ap;->l:J

    .line 201
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v4, v4, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v4, :cond_2

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ap;->m:Z

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ao;->d()V

    .line 253
    return-void

    .line 205
    :cond_2
    monitor-exit p0

    .line 206
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 209
    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->e:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->f:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->e:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->f:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->d:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_9

    .line 214
    :cond_3
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v7, v4, Lcom/instagram/creation/video/f/ao;->e:Ljava/lang/Object;

    monitor-enter v7

    .line 215
    :try_start_1
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v4, v4, Lcom/instagram/creation/video/f/ao;->d:Z

    if-nez v4, :cond_4

    .line 216
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 205
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_4
    :try_start_2
    iget-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    if-eqz v4, :cond_5

    .line 219
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    .line 220
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 222
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/instagram/creation/video/f/ap;->d:J

    .line 225
    iget-wide v4, p0, Lcom/instagram/creation/video/f/ap;->k:J

    const-wide/32 v8, 0x30d40

    sub-long/2addr v4, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 227
    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 228
    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    .line 229
    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/instagram/creation/video/f/ap;->f:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 231
    iget-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_6

    .line 232
    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->f:J

    :cond_6
    move-wide v5, v4

    .line 236
    iget-object v8, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    const-wide/16 v9, 0x0

    cmp-long v4, v5, v9

    if-nez v4, :cond_8

    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v8, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 240
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/instagram/creation/video/f/ap;->e:J

    .line 241
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/instagram/creation/video/f/ap;->e:J

    invoke-static {}, Lcom/instagram/creation/video/f/ap;->r()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 242
    const-wide/32 v8, 0x30d40

    sub-long v4, v5, v8

    .line 243
    iget-wide v8, p0, Lcom/instagram/creation/video/f/ap;->e:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_6

    .line 244
    :cond_7
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/f/ap;->b(J)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 249
    goto/16 :goto_0

    .line 236
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 246
    :cond_9
    iget-object v4, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    goto :goto_2
.end method

.method private static r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic H_()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->H_()V

    return-void
.end method

.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 408
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/ap;->a(J)V

    .line 409
    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->e()V

    return-void
.end method

.method protected final h()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 111
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ao;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 122
    const-string v5, "mime"

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {}, Lcom/instagram/creation/video/f/ao;->W()V

    .line 125
    iget-object v6, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 126
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    .line 127
    const-string v0, "durationUs"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/instagram/creation/video/f/ap;->k:J

    .line 128
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    move-object v0, v2

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 137
    iput-object v3, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    .line 146
    :goto_2
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_2

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    new-instance v5, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v0, v5, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 142
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 145
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    move v1, v4

    .line 146
    goto :goto_2

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ao;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/b/a/a;)V

    .line 390
    return-void
.end method

.method protected final j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 396
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 397
    iput-object v1, p0, Lcom/instagram/creation/video/f/ap;->j:Landroid/media/MediaCodec;

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ap;->g:Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 402
    iput-object v1, p0, Lcom/instagram/creation/video/f/ap;->i:Landroid/media/MediaExtractor;

    .line 404
    :cond_1
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ao;->a(Lcom/instagram/creation/video/f/ao;)Lcom/instagram/creation/video/f/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ao;->b:Z

    .line 154
    iget-object v0, p0, Lcom/instagram/creation/video/f/ap;->h:Lcom/instagram/creation/video/f/ao;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ao;->c:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->k()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ap;->m()V

    .line 159
    :cond_1
    return-void
.end method
