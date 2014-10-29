.class public final Lcom/instagram/android/l/a/a;
.super Lcom/instagram/android/l/a/c;
.source "SurfaceViewVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/android/l/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 39
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    iput-object v2, p0, Lcom/instagram/android/l/a/a;->g:Landroid/view/ViewGroup;

    .line 41
    iput-object v2, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    .line 42
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 25
    iput-object p1, p0, Lcom/instagram/android/l/a/a;->g:Landroid/view/ViewGroup;

    .line 27
    new-instance v0, Lcom/instagram/creation/video/ui/o;

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/ui/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    .line 28
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 31
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 32
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/l/a/a;->h:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 33
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/l/a/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 61
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method
