.class final Lcom/instagram/creation/video/f/k;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/j;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/j;)V
    .locals 0
    .parameter

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "success"
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 1761
    if-eqz p1, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->G(Lcom/instagram/creation/video/f/a;)Z

    .line 1763
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->a:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->b()V

    .line 1767
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1768
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1771
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->b:Lcom/instagram/creation/video/f/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Z)V

    .line 1772
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/k;->a:Lcom/instagram/creation/video/f/j;

    iget-object v0, v0, Lcom/instagram/creation/video/f/j;->a:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->c()V

    goto :goto_0
.end method
