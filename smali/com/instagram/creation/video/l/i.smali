.class final Lcom/instagram/creation/video/l/i;
.super Ljava/lang/Object;
.source "VideoPreviewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/creation/video/l/h;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/l/h;Landroid/graphics/SurfaceTexture;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    iput-object p2, p0, Lcom/instagram/creation/video/l/i;->a:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/instagram/creation/video/l/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v0}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v0}, Lcom/instagram/creation/video/l/h;->b(Lcom/instagram/creation/video/l/h;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v1}, Lcom/instagram/creation/video/l/h;->b(Lcom/instagram/creation/video/l/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v0}, Lcom/instagram/creation/video/l/h;->c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v1}, Lcom/instagram/creation/video/l/h;->c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/d/c;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    iget-object v1, p0, Lcom/instagram/creation/video/l/i;->a:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/instagram/creation/video/l/i;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/l/h;->b(Landroid/graphics/SurfaceTexture;I)V

    .line 147
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v0}, Lcom/instagram/creation/video/l/h;->d(Lcom/instagram/creation/video/l/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;

    invoke-static {v0}, Lcom/instagram/creation/video/l/h;->e(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->g()Z

    .line 150
    :cond_3
    return-void
.end method
