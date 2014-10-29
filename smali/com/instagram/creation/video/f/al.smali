.class final Lcom/instagram/creation/video/f/al;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ah;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/16 v2, 0x280

    .line 381
    iget-object v0, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->h(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/PreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 387
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/c/b;->e(Landroid/content/Context;)V

    .line 391
    iget-object v0, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-static {v0, v2}, Lcom/instagram/creation/video/c/b;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/a;)Ljava/io/File;

    move-result-object v0

    .line 392
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 393
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 395
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 396
    iget-object v1, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ad;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
