.class public final Lcom/instagram/creation/video/f/an;
.super Lcom/instagram/creation/video/f/ah;
.source "VideoCoverFragmentICS.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic b:Lcom/instagram/creation/video/f/am;

.field private c:Landroid/media/MediaPlayer;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/am;Lcom/instagram/creation/video/gl/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-object p1, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/ah;-><init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V

    .line 44
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/an;->d:Z

    .line 48
    const/16 v0, -0x2a

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    .line 53
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Z)V

    .line 54
    return-void
.end method

.method private a(IZ)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 135
    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v2, v2, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v3, v3, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v3, :cond_0

    .line 137
    monitor-exit v2

    .line 155
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-boolean v3, p0, Lcom/instagram/creation/video/f/an;->d:Z

    if-eqz v3, :cond_1

    .line 140
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 142
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    .line 144
    if-eqz p2, :cond_2

    .line 145
    const/16 v0, 0xc8

    iput v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/instagram/creation/video/f/an;->e:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Lcom/instagram/creation/video/f/am;->W()V

    .line 153
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 154
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/instagram/creation/video/f/an;->e:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 155
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/instagram/creation/video/f/an;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 113
    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/instagram/creation/video/f/am;->W()V

    .line 116
    invoke-direct {p0, p1, v3}, Lcom/instagram/creation/video/f/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput p1, p0, Lcom/instagram/creation/video/f/an;->f:I

    .line 118
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->c()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iput p1, p0, Lcom/instagram/creation/video/f/an;->g:I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic H_()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->H_()V

    return-void
.end method

.method protected final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/an;->b(I)V

    .line 110
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/instagram/creation/video/f/ah;->e()V

    .line 60
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->a(Z)V

    .line 61
    return-void
.end method

.method protected final h()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 64
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v2, v2, Lcom/instagram/creation/video/f/am;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 79
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 81
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 84
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected final i()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v1, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 91
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/am;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V

    .line 93
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v1, Lcom/instagram/creation/video/f/am;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V

    .line 94
    return-void
.end method

.method protected final j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 100
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 101
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 103
    iput-object v1, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    .line 105
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    .line 191
    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/an;->a(IZ)Z

    .line 192
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v0, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v0, :cond_0

    .line 198
    monitor-exit v1

    .line 233
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/instagram/creation/video/f/an;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/instagram/creation/video/f/am;->W()V

    .line 204
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 206
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/am;->b:Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    .line 209
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 211
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/am;->d()V

    .line 216
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/j/f;->a(Z)V

    .line 218
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->c:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->k()V

    .line 230
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {v0}, Lcom/instagram/creation/video/f/am;->a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/an;->m()V

    .line 233
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 222
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    invoke-static {}, Lcom/instagram/creation/video/f/am;->W()V

    .line 227
    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/f/an;->a(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, -0x1

    .line 161
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-object v1, v0, Lcom/instagram/creation/video/f/am;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/am;->d:Z

    if-nez v0, :cond_0

    .line 163
    monitor-exit v1

    .line 185
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/an;->d:Z

    .line 168
    iget-object v0, p0, Lcom/instagram/creation/video/f/an;->b:Lcom/instagram/creation/video/f/am;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/instagram/creation/video/f/an;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/instagram/creation/video/f/am;->W()V

    .line 169
    iget v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    if-eq v0, v4, :cond_2

    .line 172
    iget v0, p0, Lcom/instagram/creation/video/f/an;->g:I

    .line 173
    const/4 v2, -0x1

    iput v2, p0, Lcom/instagram/creation/video/f/an;->g:I

    .line 174
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/an;->b(I)V

    .line 185
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

    .line 175
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/instagram/creation/video/f/an;->e:I

    const/16 v2, -0xbb8

    if-ge v0, v2, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v2, p0, Lcom/instagram/creation/video/f/an;->f:I

    add-int/lit8 v2, v2, 0x64

    if-le v0, v2, :cond_1

    .line 183
    iget v0, p0, Lcom/instagram/creation/video/f/an;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/instagram/creation/video/f/an;->a(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
