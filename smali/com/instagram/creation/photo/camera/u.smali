.class final Lcom/instagram/creation/photo/camera/u;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/u;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/u;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    return-void
.end method


# virtual methods
.method public final onShutter()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/u;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/m;->d()V

    .line 338
    return-void
.end method
