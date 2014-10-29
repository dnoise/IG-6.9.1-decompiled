.class public abstract Lcom/instagram/android/l/a/c;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field protected a:Landroid/media/MediaPlayer;

.field protected b:Lcom/instagram/android/l/a/f;

.field protected c:Lcom/instagram/android/l/a/e;

.field protected d:Lcom/instagram/android/l/a/d;

.field protected e:I

.field protected f:Lcom/instagram/android/l/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    .line 75
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 78
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 80
    sget-object v0, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 81
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 161
    return-void
.end method

.method public abstract a(Landroid/widget/FrameLayout;)V
.end method

.method public final a(Lcom/instagram/android/l/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/l/a/c;->d:Lcom/instagram/android/l/a/d;

    .line 93
    return-void
.end method

.method public final a(Lcom/instagram/android/l/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/l/a/c;->c:Lcom/instagram/android/l/a/e;

    .line 89
    return-void
.end method

.method public final a(Lcom/instagram/android/l/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/instagram/android/l/a/c;->b:Lcom/instagram/android/l/a/f;

    .line 85
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 153
    sget-object v0, Lcom/instagram/android/l/a/g;->c:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 154
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_4

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 173
    iget-object v1, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 174
    sget-object v1, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    iput-object v1, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 180
    sget-object v1, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_3

    .line 181
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/l/a/c;->e:I

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    sget-object v1, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/l/a/c;->e:I

    goto :goto_0

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoPlayer cannot play in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/l/a/c;->b()V

    .line 117
    sget-object v0, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 119
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/l/a/c;->c()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    .line 136
    sget-object v0, Lcom/instagram/android/l/a/g;->j:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 137
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_1

    .line 195
    :cond_0
    sget-object v0, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 196
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 198
    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 4

    .prologue
    .line 226
    sget-object v0, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    sget-object v2, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    sget-object v3, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/instagram/android/l/a/c;->e:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    sget-object v0, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 253
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->d:Lcom/instagram/android/l/a/d;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->d:Lcom/instagram/android/l/a/d;

    invoke-interface {v0}, Lcom/instagram/android/l/a/d;->a()V

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/l/a/c;->e:I

    .line 258
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 265
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->c:Lcom/instagram/android/l/a/e;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->c:Lcom/instagram/android/l/a/e;

    invoke-interface {v0, p2, p3}, Lcom/instagram/android/l/a/e;->a(II)Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 279
    const/16 v0, 0x2bc

    if-ne p2, v0, :cond_0

    .line 284
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlayer Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    sget-object v0, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    iput-object v0, p0, Lcom/instagram/android/l/a/c;->f:Lcom/instagram/android/l/a/g;

    .line 241
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->b:Lcom/instagram/android/l/a/f;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/instagram/android/l/a/c;->b:Lcom/instagram/android/l/a/f;

    invoke-interface {v0, p0}, Lcom/instagram/android/l/a/f;->a(Lcom/instagram/android/l/a/c;)V

    .line 244
    :cond_0
    return-void
.end method
