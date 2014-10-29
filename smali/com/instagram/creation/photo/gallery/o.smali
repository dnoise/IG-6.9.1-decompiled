.class final Lcom/instagram/creation/photo/gallery/o;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/c;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/instagram/creation/photo/gallery/d;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/gallery/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/instagram/creation/photo/gallery/o;->b:Lcom/instagram/creation/photo/gallery/d;

    .line 41
    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/o;->c:Landroid/content/ContentResolver;

    .line 42
    iput-object p3, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method private h()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 93
    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 74
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "UriImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "image/jpeg"

    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
