.class public final Lcom/instagram/creation/video/d/e;
.super Lcom/instagram/creation/video/d/a;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private f:Landroid/media/MediaPlayer;

.field private g:Lcom/instagram/creation/video/d/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/d/a;-><init>(Lcom/instagram/creation/video/d/b;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    .line 106
    iput v1, p0, Lcom/instagram/creation/video/d/e;->m:I

    .line 107
    iput v1, p0, Lcom/instagram/creation/video/d/e;->n:I

    .line 128
    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    .line 134
    new-instance v0, Lcom/instagram/creation/video/d/f;

    invoke-direct {v0, p0, p2, p3}, Lcom/instagram/creation/video/d/f;-><init>(Lcom/instagram/creation/video/d/e;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 272
    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    if-eq p1, v0, :cond_1

    .line 273
    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    .line 277
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->p()V

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/d/e;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iput p1, p0, Lcom/instagram/creation/video/d/e;->m:I

    .line 284
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iput p1, p0, Lcom/instagram/creation/video/d/e;->n:I

    goto :goto_0
.end method

.method private b(IZ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 301
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_0
    iget-boolean v3, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v3, :cond_0

    .line 303
    monitor-exit v2

    .line 321
    :goto_0
    return v0

    .line 306
    :cond_0
    if-eqz p2, :cond_2

    .line 307
    iget-boolean v3, p0, Lcom/instagram/creation/video/d/e;->k:Z

    if-eqz v3, :cond_1

    .line 308
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 310
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    .line 311
    const/16 v0, 0xc8

    iput v0, p0, Lcom/instagram/creation/video/d/e;->l:I

    .line 318
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Seeking to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 320
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 321
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 313
    :cond_2
    iget v0, p0, Lcom/instagram/creation/video/d/e;->l:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/d/e;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/instagram/creation/video/d/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/video/d/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/d/e;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    return v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    .line 205
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 206
    sget v0, Lcom/instagram/creation/video/d/i;->a:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 208
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 209
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->F_()V

    .line 212
    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    .line 226
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->v()V

    .line 227
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    .line 230
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->c()V

    .line 233
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 240
    sget v0, Lcom/instagram/creation/video/d/i;->c:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 241
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    .line 242
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 250
    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 251
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    .line 252
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->q()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->h:Z

    .line 158
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->i:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/d/c;->c()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    .line 169
    :cond_1
    monitor-exit v1

    return-void

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 221
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 245
    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 246
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    .line 247
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 255
    sget v0, Lcom/instagram/creation/video/d/i;->b:I

    iput v0, p0, Lcom/instagram/creation/video/d/e;->o:I

    .line 256
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    .line 257
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->f()V

    .line 533
    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/j;->a(Z)V

    .line 536
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->m()V

    .line 538
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    iget-boolean v1, p0, Lcom/instagram/creation/video/d/e;->h:Z

    if-eqz v1, :cond_1

    .line 184
    iget-boolean v1, p0, Lcom/instagram/creation/video/d/e;->i:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->s()V

    .line 186
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->l()V

    .line 195
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->p()V

    .line 189
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    .line 190
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V

    .line 191
    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->j:Z

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/instagram/creation/video/d/d;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    return-object v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V

    .line 423
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->m()V

    .line 424
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_1

    .line 361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 364
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 366
    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->b:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->c:I

    if-ne v2, v3, :cond_3

    .line 367
    :cond_2
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, -0x64

    if-le v0, v2, :cond_3

    .line 368
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_5

    .line 369
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/d/e;->b(IZ)Z

    .line 395
    :cond_3
    :goto_1
    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->a:I

    if-ne v2, v3, :cond_4

    .line 396
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v2

    if-gt v0, v2, :cond_9

    .line 397
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v2}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/instagram/creation/video/j/j;->a(Z)V

    .line 398
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    if-eqz v2, :cond_4

    .line 399
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->d:Lcom/instagram/creation/video/d/c;

    invoke-interface {v2, v0}, Lcom/instagram/creation/video/d/c;->a(I)V

    .line 405
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->m()V

    .line 406
    monitor-exit v1

    goto :goto_0

    .line 371
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->k:Z

    .line 372
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 373
    iget v2, p0, Lcom/instagram/creation/video/d/e;->o:I

    sget v3, Lcom/instagram/creation/video/d/i;->b:I

    if-ne v2, v3, :cond_6

    .line 374
    iget-object v2, p0, Lcom/instagram/creation/video/d/e;->g:Lcom/instagram/creation/video/d/d;

    invoke-virtual {v2}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/instagram/creation/video/j/j;->a(Z)V

    .line 376
    :cond_6
    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    iget-object v3, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 377
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->u()V

    goto :goto_1

    .line 379
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->i:Z

    .line 380
    iget-boolean v2, p0, Lcom/instagram/creation/video/d/e;->j:Z

    if-eqz v2, :cond_8

    .line 381
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->o()V

    .line 382
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->s()V

    .line 383
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/instagram/creation/video/d/e;->j:Z

    goto :goto_1

    .line 385
    :cond_8
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->q()V

    .line 386
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/e;->n()V

    goto :goto_1

    .line 402
    :cond_9
    invoke-direct {p0}, Lcom/instagram/creation/video/d/e;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, -0x1

    .line 327
    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_0

    .line 329
    monitor-exit v1

    .line 351
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/d/e;->k:Z

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Seek Complete at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    iget v0, p0, Lcom/instagram/creation/video/d/e;->n:I

    if-eq v0, v3, :cond_2

    .line 338
    iget v0, p0, Lcom/instagram/creation/video/d/e;->n:I

    .line 339
    const/4 v2, -0x1

    iput v2, p0, Lcom/instagram/creation/video/d/e;->n:I

    .line 340
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/d/e;->a(IZ)V

    .line 351
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 341
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    iget v2, p0, Lcom/instagram/creation/video/d/e;->l:I

    sub-int/2addr v0, v2

    const/16 v2, -0xbb8

    if-ge v0, v2, :cond_3

    .line 344
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/d/e;->m:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_1

    .line 349
    iget v0, p0, Lcom/instagram/creation/video/d/e;->m:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/d/e;->b(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final r()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/instagram/creation/video/d/e;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method
