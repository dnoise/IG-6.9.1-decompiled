.class final Lcom/instagram/creation/video/h/g;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/h/c;

.field final synthetic b:Lcom/instagram/creation/video/h/e;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/creation/video/h/g;->b:Lcom/instagram/creation/video/h/e;

    iput-object p2, p0, Lcom/instagram/creation/video/h/g;->a:Lcom/instagram/creation/video/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/creation/video/h/g;->a:Lcom/instagram/creation/video/h/c;

    iget-object v0, p0, Lcom/instagram/creation/video/h/g;->b:Lcom/instagram/creation/video/h/e;

    .line 95
    return-void
.end method
