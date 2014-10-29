.class public Lcom/instagram/creation/video/g/f/c;
.super Ljava/lang/Object;
.source "VideoResizeOperation.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/instagram/creation/video/g/a/d;

.field private final d:Lcom/instagram/creation/video/g/c/d;

.field private final e:Lcom/instagram/creation/video/g/f/g;

.field private final f:Lcom/instagram/creation/video/g/d/b;

.field private final g:Lcom/instagram/common/x/a;

.field private final h:Lcom/facebook/d/b/b;

.field private i:Landroid/media/MediaExtractor;

.field private j:Lcom/instagram/creation/video/g/f/h;

.field private k:Lcom/instagram/creation/video/g/c/e;

.field private l:Lcom/instagram/creation/video/g/c/e;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/instagram/creation/video/g/f/c;

    sput-object v0, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/g/a/d;Lcom/instagram/creation/video/g/c/d;Lcom/instagram/creation/video/g/d/b;Lcom/instagram/creation/video/g/f/g;Lcom/instagram/common/x/a;Lcom/facebook/d/b/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/c;->b:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/instagram/creation/video/g/f/c;->c:Lcom/instagram/creation/video/g/a/d;

    .line 65
    iput-object p3, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    .line 66
    iput-object p4, p0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    .line 67
    iput-object p5, p0, Lcom/instagram/creation/video/g/f/c;->e:Lcom/instagram/creation/video/g/f/g;

    .line 68
    iput-object p6, p0, Lcom/instagram/creation/video/g/f/c;->g:Lcom/instagram/common/x/a;

    .line 69
    iput-object p7, p0, Lcom/instagram/creation/video/g/f/c;->h:Lcom/facebook/d/b/b;

    .line 70
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    .line 168
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/g/c/d;->a(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    .line 173
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->d:Lcom/instagram/creation/video/g/c/d;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/g/c/d;->b(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    .line 174
    return-void
.end method

.method private a(Lcom/instagram/creation/video/g/a/c;JJLcom/instagram/creation/video/g/a/e;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 192
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v2, v4, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->f()Landroid/media/MediaFormat;

    move-result-object v2

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v4, v2}, Lcom/instagram/creation/video/g/d/b;->b(Landroid/media/MediaFormat;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v2, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v4, v4, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v2, v4}, Lcom/instagram/creation/video/g/d/b;->a(Landroid/media/MediaFormat;)V

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/d/b;->a()V

    .line 201
    const/4 v3, 0x1

    .line 204
    :cond_1
    const/4 v5, 0x0

    .line 205
    const/4 v4, 0x0

    .line 206
    const/4 v2, 0x0

    .line 209
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gez v6, :cond_2

    .line 210
    const-wide/16 p2, 0x0

    .line 212
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-gez v6, :cond_3

    .line 213
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/instagram/creation/video/g/a/c;->a:J

    const-wide/16 v8, 0x3e8

    mul-long p4, v6, v8

    .line 215
    :cond_3
    sget-object v6, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v6, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 220
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    cmp-long v6, p2, v8

    if-nez v6, :cond_b

    const/4 v6, 0x2

    :goto_0
    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 224
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v6, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v7, v7, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 227
    :cond_5
    const/4 v6, 0x1

    .line 228
    sub-long v8, p4, p2

    move v7, v2

    move v2, v6

    .line 229
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-nez v7, :cond_11

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/instagram/creation/video/g/f/c;->m:Z

    if-nez v6, :cond_11

    .line 230
    if-nez v5, :cond_19

    .line 231
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v6}, Lcom/instagram/creation/video/g/f/h;->a()Lcom/instagram/creation/video/g/b/f;

    move-result-object v6

    .line 233
    if-eqz v6, :cond_19

    .line 235
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Lcom/instagram/creation/video/g/b/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    .line 237
    if-lez v10, :cond_c

    cmp-long v13, v11, p4

    if-gtz v13, :cond_c

    .line 238
    sub-long v13, v11, p2

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v15

    .line 240
    invoke-virtual {v6, v10, v13, v14, v15}, Lcom/instagram/creation/video/g/b/f;->a(IJI)V

    .line 241
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v10, v6}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/video/g/b/f;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 243
    cmp-long v6, v11, p2

    if-ltz v6, :cond_7

    .line 244
    if-eqz v2, :cond_7

    .line 245
    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    const/4 v2, 0x0

    :cond_7
    move v6, v2

    .line 258
    :goto_2
    if-nez v4, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->b()V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->d()Z

    move-result v2

    move v4, v2

    .line 263
    :cond_8
    if-nez v7, :cond_18

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->c()Lcom/instagram/creation/video/g/b/f;

    move-result-object v2

    .line 268
    :goto_3
    if-eqz v2, :cond_10

    .line 269
    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->e()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v11}, Lcom/instagram/creation/video/g/f/h;->f()Landroid/media/MediaFormat;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/instagram/creation/video/g/d/b;->b(Landroid/media/MediaFormat;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v10, :cond_9

    .line 273
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v11, v11, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v10, v11}, Lcom/instagram/creation/video/g/d/b;->a(Landroid/media/MediaFormat;)V

    .line 275
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v10}, Lcom/instagram/creation/video/g/d/b;->a()V

    .line 276
    const/4 v3, 0x1

    .line 292
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v10, v2}, Lcom/instagram/creation/video/g/f/h;->b(Lcom/instagram/creation/video/g/b/f;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->c()Lcom/instagram/creation/video/g/b/f;

    move-result-object v2

    goto :goto_3

    .line 220
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 251
    :cond_c
    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    invoke-virtual {v6, v5, v10, v11, v12}, Lcom/instagram/creation/video/g/b/f;->a(IJI)V

    .line 252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v5, v6}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/video/g/b/f;)V

    .line 253
    const/4 v5, 0x1

    move v6, v2

    goto :goto_2

    .line 277
    :cond_d
    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 278
    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v10

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_e

    .line 280
    const/4 v2, 0x1

    move v7, v2

    move v2, v6

    .line 281
    goto/16 :goto_1

    .line 283
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v10, v2}, Lcom/instagram/creation/video/g/d/b;->b(Lcom/instagram/creation/video/g/b/a;)V

    .line 285
    if-eqz p6, :cond_a

    .line 286
    invoke-virtual {v2}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v10

    iget-wide v10, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 287
    long-to-double v10, v10

    long-to-double v12, v8

    div-double/2addr v10, v12

    move-object/from16 v0, p6

    invoke-interface {v0, v10, v11}, Lcom/instagram/creation/video/g/a/e;->a(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 347
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_f

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v3}, Lcom/instagram/creation/video/g/d/b;->b()V

    :cond_f
    throw v2

    :cond_10
    move v2, v6

    .line 296
    goto/16 :goto_1

    .line 299
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/f/h;->e()V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    if-eqz v2, :cond_16

    .line 301
    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget v4, v4, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_14

    const/4 v2, 0x2

    :goto_5
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget v4, v4, Lcom/instagram/creation/video/g/c/e;->c:I

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 316
    new-instance v5, Lcom/instagram/creation/video/g/f/d;

    invoke-direct {v5}, Lcom/instagram/creation/video/g/f/d;-><init>()V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->l:Lcom/instagram/creation/video/g/c/e;

    iget-object v2, v2, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    const-string v4, "csd-0"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    invoke-interface {v5, v4, v6, v7, v8}, Lcom/instagram/creation/video/g/b/a;->a(IJI)V

    .line 319
    invoke-interface {v5}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/instagram/creation/video/g/f/c;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2, v5}, Lcom/instagram/creation/video/g/d/b;->a(Lcom/instagram/creation/video/g/b/a;)V

    .line 323
    const/4 v4, 0x0

    .line 324
    const/4 v2, 0x1

    .line 325
    :goto_6
    if-nez v4, :cond_16

    .line 326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-interface {v5}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 327
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    .line 328
    if-lez v6, :cond_15

    cmp-long v9, v7, p4

    if-gtz v9, :cond_15

    .line 329
    cmp-long v9, v7, p2

    if-ltz v9, :cond_13

    .line 330
    sub-long v9, v7, p2

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    .line 332
    invoke-interface {v5, v6, v9, v10, v11}, Lcom/instagram/creation/video/g/b/a;->a(IJI)V

    .line 333
    if-eqz v2, :cond_12

    .line 334
    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 335
    const/4 v2, 0x0

    .line 337
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v6, v5}, Lcom/instagram/creation/video/g/d/b;->a(Lcom/instagram/creation/video/g/b/a;)V

    .line 339
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 306
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 342
    :cond_15
    const/4 v4, 0x1

    .line 344
    goto :goto_6

    .line 347
    :cond_16
    if-eqz v3, :cond_17

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-interface {v2}, Lcom/instagram/creation/video/g/d/b;->b()V

    .line 351
    :cond_17
    return-void

    :cond_18
    move v2, v6

    goto/16 :goto_1

    :cond_19
    move v6, v2

    goto/16 :goto_2
.end method

.method private a(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->f:Lcom/instagram/creation/video/g/d/b;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/g/d/b;->a(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 371
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 372
    return-void
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/f/c;->m:Z

    .line 355
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/g/f/e;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 82
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->g:Lcom/instagram/common/x/a;

    invoke-static {}, Lcom/instagram/common/x/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->b(Z)V

    .line 85
    invoke-static {}, Lcom/instagram/creation/video/g/f/c;->c()Z

    move-result v0

    const-string v1, "Video Resizing is not supported for this OS version"

    invoke-static {v0, v1}, Lcom/instagram/common/l/a/f;->b(ZLjava/lang/Object;)V

    .line 88
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Input file does not exist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/l/a/f;->a(ZLjava/lang/Object;)V

    .line 92
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->c:Lcom/instagram/creation/video/g/a/d;

    invoke-interface {v1, v0}, Lcom/instagram/creation/video/g/a/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :try_start_1
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/f/c;->a(Landroid/net/Uri;)V

    .line 99
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->e:Lcom/instagram/creation/video/g/f/g;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/g;->a()Lcom/instagram/creation/video/g/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    .line 100
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    iget-object v3, p1, Lcom/instagram/creation/video/g/f/e;->f:Lcom/instagram/creation/b/a/b;

    iget-object v4, p1, Lcom/instagram/creation/video/g/f/e;->g:Lcom/instagram/creation/video/e/c;

    invoke-interface {v0, v3, v4}, Lcom/instagram/creation/video/g/f/h;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->j:Lcom/instagram/creation/video/g/f/h;

    iget-object v3, p0, Lcom/instagram/creation/video/g/f/c;->k:Lcom/instagram/creation/video/g/c/e;

    iget-object v3, v3, Lcom/instagram/creation/video/g/c/e;->b:Landroid/media/MediaFormat;

    invoke-interface {v0, v3}, Lcom/instagram/creation/video/g/f/h;->a(Landroid/media/MediaFormat;)V

    .line 104
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/f/c;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :try_start_2
    iget v0, p1, Lcom/instagram/creation/video/g/f/e;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    iget v0, p1, Lcom/instagram/creation/video/g/f/e;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget-object v6, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/g/f/c;->a(Lcom/instagram/creation/video/g/a/c;JJLcom/instagram/creation/video/g/a/e;)V

    .line 117
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcom/instagram/creation/video/g/f/b;

    const-string v1, "No output file created"

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/f/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :catch_0
    move-exception v0

    move v1, v7

    .line 121
    :goto_1
    :try_start_3
    sget-object v2, Lcom/instagram/creation/video/g/f/c;->a:Ljava/lang/Class;

    .line 122
    iget-object v2, p0, Lcom/instagram/creation/video/g/f/c;->h:Lcom/facebook/d/b/b;

    const-string v3, "VideoResizeOperation_Exception"

    invoke-interface {v2, v3, v0}, Lcom/facebook/d/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    iget-object v2, p1, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 127
    const-class v2, Lcom/instagram/creation/video/g/f/b;

    invoke-static {v0, v2}, Lcom/instagram/common/l/a/i;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 128
    if-eqz v1, :cond_6

    .line 129
    new-instance v2, Lcom/instagram/creation/video/g/f/a;

    const-string v3, "Failed to init codecs to resize video"

    invoke-direct {v2, v3, v0}, Lcom/instagram/creation/video/g/f/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    move v7, v1

    :goto_2
    if-nez v7, :cond_0

    iget-object v1, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    invoke-interface {v1}, Lcom/instagram/creation/video/g/a/e;->a()V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 138
    iput-object v8, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    :cond_1
    throw v0

    :cond_2
    move v0, v7

    .line 84
    goto/16 :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 107
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 120
    :catch_2
    move-exception v0

    move v1, v2

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p1, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    invoke-interface {v0}, Lcom/instagram/creation/video/g/a/e;->a()V

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 138
    iput-object v8, p0, Lcom/instagram/creation/video/g/f/c;->i:Landroid/media/MediaExtractor;

    .line 141
    :cond_5
    return-void

    .line 131
    :cond_6
    :try_start_5
    new-instance v2, Lcom/instagram/creation/video/g/f/b;

    const-string v3, "Failed to resize video"

    invoke-direct {v2, v3, v0}, Lcom/instagram/creation/video/g/f/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move v7, v2

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/instagram/creation/video/g/f/c;->m:Z

    return v0
.end method
