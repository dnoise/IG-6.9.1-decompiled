.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
.super Ljava/lang/Object;
.source "JpegBridge.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a:Ljava/lang/Class;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->decodeJpeg(Ljava/lang/String;IIII)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Z
    .locals 4

    .prologue
    .line 23
    const-class v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 25
    :try_start_1
    const-string v0, "glcommon"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 26
    const-string v0, "jpegutils"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 27
    const-string v0, "cj"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_3
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a:Ljava/lang/Class;

    const-string v3, "Could not load native library"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native calcBWpoint(I)[F
.end method

.method public static native calcCDF(I)I
.end method

.method private static native decodeJpeg(Ljava/lang/String;IIII)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.end method

.method public static native loadCDF(I)I
.end method

.method public static native releaseNativeBuffer(I)I
.end method

.method public static native rotateImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;I)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.end method

.method public static native saveImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Ljava/lang/String;I)I
.end method

.method public static native scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.end method

.method public static native uploadTexture(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)I
.end method
