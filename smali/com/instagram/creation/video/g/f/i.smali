.class final Lcom/instagram/creation/video/g/f/i;
.super Ljava/lang/Object;
.source "VideoTranscoderJBMR2.java"

# interfaces
.implements Lcom/instagram/creation/video/g/f/h;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/video/g/b/g;

.field private b:Lcom/instagram/creation/video/g/b/i;

.field private c:Lcom/instagram/creation/video/g/b/i;

.field private d:Lcom/instagram/creation/video/g/e/c;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/g/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/i;->a:Lcom/instagram/creation/video/g/b/g;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/creation/video/g/b/f;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/g/b/i;->a(J)Lcom/instagram/creation/video/g/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/media/MediaFormat;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->a:Lcom/instagram/creation/video/g/b/g;

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    invoke-virtual {v1}, Lcom/instagram/creation/video/g/e/c;->b()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/instagram/creation/video/g/b/g;->a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    .line 72
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->a()V

    .line 73
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/instagram/creation/video/g/b/j;

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/b/j;-><init>(Lcom/instagram/creation/video/g/b/e;)V

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/j;->a()Lcom/instagram/creation/video/g/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/j;->c()Lcom/instagram/creation/video/g/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/j;->b()Lcom/instagram/creation/video/g/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/j;->d()Landroid/media/MediaFormat;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/instagram/creation/video/g/f/i;->a:Lcom/instagram/creation/video/g/b/g;

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    iget-object v1, v1, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    sget v2, Lcom/instagram/creation/video/g/b/c;->b:I

    invoke-static {v1, v0, v2}, Lcom/instagram/creation/video/g/b/g;->a(Ljava/lang/String;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    .line 59
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->a()V

    .line 61
    new-instance v0, Lcom/instagram/creation/video/g/e/c;

    iget-object v1, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v1}, Lcom/instagram/creation/video/g/b/i;->d()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/instagram/creation/video/g/e/c;-><init>(Landroid/view/Surface;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    .line 63
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/g/b/f;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/g/b/i;->a(Lcom/instagram/creation/video/g/b/f;)V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/g/b/i;->b(J)Lcom/instagram/creation/video/g/b/f;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/f;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    .line 92
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v2, v0}, Lcom/instagram/creation/video/g/b/i;->b(Lcom/instagram/creation/video/g/b/f;)V

    .line 100
    :goto_0
    iget v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/f/i;->e:Z

    .line 102
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->e()V

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/instagram/creation/video/g/b/i;->a(Lcom/instagram/creation/video/g/b/f;Z)V

    goto :goto_0

    .line 103
    :cond_2
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/c;->c()V

    .line 111
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/c;->d()V

    .line 112
    if-eqz v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/g/e/c;->a(J)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/c;->e()Z

    goto :goto_1
.end method

.method public final b(Lcom/instagram/creation/video/g/b/f;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/g/b/i;->b(Lcom/instagram/creation/video/g/b/f;)V

    .line 129
    return-void
.end method

.method public final c()Lcom/instagram/creation/video/g/b/f;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/g/b/i;->b(J)Lcom/instagram/creation/video/g/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/instagram/creation/video/g/f/i;->e:Z

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->c:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->b()V

    .line 139
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->b()V

    .line 140
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->d:Lcom/instagram/creation/video/g/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/c;->a()V

    .line 141
    return-void
.end method

.method public final f()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/i;->b:Lcom/instagram/creation/video/g/b/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/b/i;->c()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
