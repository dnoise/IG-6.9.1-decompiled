.class public final Lcom/instagram/creation/video/g/b/f;
.super Ljava/lang/Object;
.source "MediaBaseCodecBuffer.java"

# interfaces
.implements Lcom/instagram/creation/video/g/b/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Landroid/media/MediaCodec$BufferInfo;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/b/f;->a:Ljava/lang/ref/WeakReference;

    .line 28
    iput p2, p0, Lcom/instagram/creation/video/g/b/f;->b:I

    .line 29
    iput-object p3, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(IJI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 49
    return-void
.end method

.method public final b()Landroid/media/MediaCodec$BufferInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/instagram/creation/video/g/b/f;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/instagram/creation/video/g/b/f;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z

    return v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z

    .line 73
    return-void
.end method
