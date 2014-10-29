.class public final Lcom/instagram/creation/base/d;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static a:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 31
    sput-object v0, Lcom/instagram/creation/base/d;->a:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    return-void
.end method

.method public static a(I)I
    .locals 5
    .parameter

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    new-array v0, v1, [I

    .line 146
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 147
    aget v1, v0, v3

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 148
    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 150
    const/16 v1, 0x2802

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 151
    const/16 v1, 0x2803

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 153
    aget v0, v0, v3

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 111
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    const-string v2, ".pkm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 133
    :goto_1
    if-eqz v0, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_0
    :goto_2
    return v1

    .line 118
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filters/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v2, "GLHelper"

    const-string v3, "Failed to open input stream"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_2
    sget-object v2, Lcom/instagram/creation/base/d;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/instagram/creation/base/d;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 129
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    .line 137
    const-string v2, "GLHelper"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 11
    .parameter

    .prologue
    const v10, 0x812f

    const/4 v1, 0x1

    const v9, 0x46180400

    const/16 v8, 0xde1

    const/4 v6, 0x0

    .line 65
    if-nez p0, :cond_0

    move v0, v6

    .line 97
    :goto_0
    return v0

    .line 69
    :cond_0
    new-array v0, v1, [I

    .line 71
    invoke-static {v1, v0, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 73
    aget v7, v0, v6

    .line 75
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    const/16 v0, 0xde1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {p0}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/16 v0, 0x2801

    invoke-static {v8, v0, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 91
    const/16 v0, 0x2800

    invoke-static {v8, v0, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 92
    const/16 v0, 0x2802

    invoke-static {v8, v0, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 93
    const/16 v0, 0x2803

    invoke-static {v8, v0, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 95
    const-string v0, "makeBitmapTexture"

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/lang/String;)V

    move v0, v7

    .line 97
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 9
    .parameter

    .prologue
    const v8, 0x812f

    const/4 v3, 0x1

    const v7, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 35
    new-array v2, v3, [I

    .line 37
    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 39
    aget v6, v2, v1

    .line 41
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    :try_start_0
    invoke-static {p0}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 50
    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 53
    const/16 v1, 0x2801

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 54
    const/16 v1, 0x2800

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 55
    const/16 v1, 0x2802

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 56
    const/16 v1, 0x2803

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 58
    return v6

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!!!>>>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 102
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v1, "GLHelper"

    const-string v2, "GL error 0x%x after %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
