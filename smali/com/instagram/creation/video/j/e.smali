.class public final Lcom/instagram/creation/video/j/e;
.super Lcom/instagram/creation/video/j/a;
.source "FinalRenderControllerICS.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private A:I

.field private final B:Ljava/lang/Object;

.field private C:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/creation/b/a/b;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/instagram/creation/video/gl/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instagram/creation/video/j/k;

.field private j:Lcom/instagram/creation/video/j/i;

.field private k:Lcom/instagram/creation/video/j/c;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:I

.field private volatile o:I

.field private p:Lcom/instagram/creation/video/gl/i;

.field private final q:Ljava/lang/Object;

.field private r:Z

.field private s:Z

.field private t:I

.field private final u:Ljava/lang/Object;

.field private v:Z

.field private w:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Lcom/instagram/creation/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/instagram/creation/video/gl/j;

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/j/a;-><init>(Lcom/instagram/creation/video/gl/j;)V

    .line 53
    iput v3, p0, Lcom/instagram/creation/video/j/e;->e:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/j/e;->o:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    .line 79
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    .line 91
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    new-instance v0, Lcom/instagram/creation/video/j/i;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/i;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    .line 100
    new-instance v0, Lcom/instagram/creation/video/j/c;

    invoke-direct {v0, p3}, Lcom/instagram/creation/video/j/c;-><init>(Lcom/instagram/creation/video/e/c;)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    .line 101
    new-instance v0, Lcom/instagram/creation/video/j/k;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instagram/creation/video/gl/p;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/j/k;-><init>([Lcom/instagram/creation/video/gl/p;)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    .line 102
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    .line 104
    iput-object p2, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    .line 111
    const-string v0, "mkv"

    invoke-static {p1, p2, v0}, Lcom/instagram/creation/video/c/b;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    .line 257
    :goto_0
    iget-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-wide v2, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget v4, p0, Lcom/instagram/creation/video/j/e;->A:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/video/jni/VideoBridge;->writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I

    .line 260
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method private k()V
    .locals 14

    .prologue
    .line 328
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 330
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/googlecode/mp4parser/a/b/a/a;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/a/c;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/e;

    .line 333
    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-wide v1, 0x412e848000000000L

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->b()J

    move-result-wide v3

    long-to-double v3, v3

    div-double v7, v1, v3

    .line 336
    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 337
    const-wide/16 v2, 0x0

    .line 338
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/k;

    .line 340
    const/4 v4, 0x0

    :goto_1
    int-to-long v10, v4

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/k;->a()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 341
    long-to-double v10, v2

    mul-double/2addr v10, v7

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/k;->b()J

    move-result-wide v10

    add-long/2addr v2, v10

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    :cond_2
    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string v1, "FinalRenderControllerICS"

    const-string v2, "Could not extract audio"

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 356
    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    .line 359
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    .line 361
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/j/e;->A:I

    .line 362
    :goto_2
    iget-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    iget v2, p0, Lcom/instagram/creation/video/j/e;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->x:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/j/e;->y:J

    .line 364
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->w:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 367
    :cond_4
    const/4 v0, 0x2

    const v1, 0xbb80

    invoke-static {v0, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureAACTrack(II)I

    .line 368
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 371
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    .line 374
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 381
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v3}, Lcom/instagram/creation/video/j/i;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 382
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 383
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 390
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/i;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 393
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/i;->b(Lcom/instagram/creation/b/a/a;)V

    .line 395
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    :try_start_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not create media player"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 387
    :catch_1
    move-exception v0

    .line 388
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not prepare player"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private r()V
    .locals 4

    .prologue
    const/16 v1, 0x1e0

    .line 399
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/instagram/creation/video/jni/VideoBridge;->configureVideoCodec(Ljava/lang/String;II)I

    move-result v0

    .line 402
    if-eqz v0, :cond_0

    .line 404
    const-string v1, "FinalRenderControllerICS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not configure codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    const/4 v1, 0x0

    .line 121
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    new-instance v3, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v3, v4}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 127
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->c(I)V

    .line 129
    new-instance v0, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v0, v4}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    .line 131
    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->k()V

    .line 132
    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->q()V

    .line 133
    invoke-direct {p0}, Lcom/instagram/creation/video/j/e;->r()V

    .line 140
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    add-int/lit16 v1, v1, -0xbb8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->r:Z

    .line 145
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 205
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->l:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/c;->a(Lcom/instagram/creation/video/gl/i;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 209
    iget v0, p0, Lcom/instagram/creation/video/j/e;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    iget v1, p0, Lcom/instagram/creation/video/j/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enqueueing frame at time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/j/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iput-boolean v6, p0, Lcom/instagram/creation/video/j/e;->l:Z

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z

    if-eqz v0, :cond_2

    .line 217
    iput-boolean v6, p0, Lcom/instagram/creation/video/j/e;->v:Z

    .line 218
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    .line 219
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 220
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/j/k;->c(I)V

    .line 254
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    iget v0, p0, Lcom/instagram/creation/video/j/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/j/e;->e:I

    .line 224
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->k:Lcom/instagram/creation/video/j/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/c;->b()Lcom/instagram/creation/video/gl/i;

    move-result-object v1

    .line 225
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/instagram/creation/video/j/e;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 231
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 233
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    const-wide v4, 0x4046800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->c(I)V

    .line 235
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/j/e;->a(J)V

    .line 236
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v2, p0, Lcom/instagram/creation/video/j/e;->A:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/instagram/creation/video/jni/VideoBridge;->encodeFrame(JJ)I

    .line 238
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->h()V

    .line 243
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->p()V

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 245
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 246
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v6}, Lcom/instagram/creation/video/j/k;->c(I)V

    .line 247
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/i;->d()V

    goto :goto_1
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/instagram/creation/video/jni/VideoBridge;->finishEncoding()I

    .line 304
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    .line 307
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 308
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 318
    :goto_0
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rendered to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->c:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 276
    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 283
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_5
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-eqz v0, :cond_1

    .line 289
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    add-int/lit16 v2, v2, -0x5dc

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 296
    :cond_1
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 272
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 281
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 293
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 298
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 410
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 413
    :cond_0
    iput-boolean v4, p0, Lcom/instagram/creation/video/j/e;->m:Z

    .line 415
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/instagram/creation/video/j/e;->n:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 423
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    invoke-virtual {v0, v4}, Lcom/instagram/creation/video/j/k;->c(I)V

    .line 426
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->p:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/i;)V

    .line 427
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 429
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 421
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 423
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Frame Available! "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "P"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->i:Lcom/instagram/creation/video/j/k;

    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->j:Lcom/instagram/creation/video/j/i;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/k;->a(Lcom/instagram/creation/video/gl/p;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v1, p0, Lcom/instagram/creation/video/j/e;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->C:Z

    if-nez v0, :cond_1

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_1
    return-void

    .line 151
    :cond_0
    const-string v0, "C"

    goto :goto_0

    .line 157
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/instagram/creation/video/j/e;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 161
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget-object v2, p0, Lcom/instagram/creation/video/j/e;->z:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 162
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 164
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->h:Ljava/util/Queue;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->m:Z

    .line 187
    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_3
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/e;->m()V

    goto :goto_1

    .line 170
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    if-le v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    if-nez v0, :cond_2

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->l:Z

    .line 173
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    .line 174
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iget v2, p0, Lcom/instagram/creation/video/j/e;->o:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/instagram/creation/video/j/e;->t:I

    .line 178
    :goto_4
    iget v0, p0, Lcom/instagram/creation/video/j/e;->n:I

    iput v0, p0, Lcom/instagram/creation/video/j/e;->o:I

    .line 180
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 181
    iget-object v0, p0, Lcom/instagram/creation/video/j/e;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 176
    :cond_4
    const/4 v0, -0x1

    :try_start_3
    iput v0, p0, Lcom/instagram/creation/video/j/e;->t:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 189
    :cond_5
    iput-boolean v3, p0, Lcom/instagram/creation/video/j/e;->s:Z

    goto :goto_3
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seeked to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/j/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/e;->s:Z

    .line 438
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 439
    return-void
.end method
