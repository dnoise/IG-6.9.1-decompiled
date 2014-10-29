.class final Lcom/instagram/creation/photo/camera/n;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1444
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/n;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "focused"
    .parameter

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->t(Lcom/instagram/creation/photo/camera/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/camera/m;->a(Z)V

    .line 1455
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/m;->l()Z

    goto :goto_0
.end method
