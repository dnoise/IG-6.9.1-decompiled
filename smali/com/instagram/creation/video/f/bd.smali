.class final Lcom/instagram/creation/video/f/bd;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bb;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/bb;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/bb;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->c(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/base/ui/FilterPicker;->setVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method
