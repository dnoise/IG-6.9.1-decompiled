.class final Lcom/instagram/creation/video/f/ac;
.super Ljava/lang/Object;
.source "ThumbnailVideoPreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/y;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/y;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v0}, Lcom/instagram/creation/video/f/y;->b(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v1}, Lcom/instagram/creation/video/f/y;->c(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v0}, Lcom/instagram/creation/video/f/y;->b(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v1}, Lcom/instagram/creation/video/f/y;->c(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V

    .line 92
    iget-object v0, p0, Lcom/instagram/creation/video/f/ac;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v0}, Lcom/instagram/creation/video/f/y;->d(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setVisibility(I)V

    .line 93
    return-void
.end method
