.class public abstract Lcom/instagram/creation/photo/gallery/a;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/c;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/net/Uri;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected final f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/instagram/creation/photo/gallery/b;

.field private final i:J

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I


# direct methods
.method protected constructor <init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I

    .line 58
    iput v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I

    .line 63
    iput-object p1, p0, Lcom/instagram/creation/photo/gallery/a;->h:Lcom/instagram/creation/photo/gallery/b;

    .line 64
    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;

    .line 65
    iput-wide p3, p0, Lcom/instagram/creation/photo/gallery/a;->c:J

    .line 66
    iput p5, p0, Lcom/instagram/creation/photo/gallery/a;->f:I

    .line 67
    iput-object p6, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;

    .line 68
    iput-object p7, p0, Lcom/instagram/creation/photo/gallery/a;->d:Ljava/lang/String;

    .line 69
    iput-wide p8, p0, Lcom/instagram/creation/photo/gallery/a;->e:J

    .line 70
    iput-object p10, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;

    .line 71
    iput-wide p11, p0, Lcom/instagram/creation/photo/gallery/a;->i:J

    .line 72
    iput-object p13, p0, Lcom/instagram/creation/photo/gallery/a;->j:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 133
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 139
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/instagram/creation/photo/gallery/a;->k:I

    .line 140
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    invoke-static {v0}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 146
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->k:I

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    invoke-static {v0}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->h:Lcom/instagram/creation/photo/gallery/b;

    iget-wide v1, p0, Lcom/instagram/creation/photo/gallery/a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/photo/gallery/b;->a(J)Landroid/net/Uri;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-static {v1, p1, v0, v2, v3}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/a;->i:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/a;->h()V

    .line 151
    :cond_0
    iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/instagram/creation/photo/gallery/e;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;

    check-cast p1, Lcom/instagram/creation/photo/gallery/e;

    .end local p1
    iget-object v1, p1, Lcom/instagram/creation/photo/gallery/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/a;->h()V

    .line 156
    :cond_0
    iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "image/jpeg"

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
