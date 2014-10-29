.class public final Lcom/instagram/creation/video/h/e;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"

# interfaces
.implements Lcom/instagram/creation/video/h/a;


# instance fields
.field private final a:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 31
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 59
    return-void
.end method

.method public final a(Landroid/hardware/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 63
    return-void
.end method

.method public final a(Landroid/media/CamcorderProfile;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 121
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 117
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/h/b;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/instagram/creation/video/h/f;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/h/f;-><init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/h/c;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/instagram/creation/video/h/g;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/h/g;-><init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/c;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 97
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 146
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 141
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 150
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 39
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 35
    return-void
.end method
