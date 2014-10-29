.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/a;
.super Ljava/lang/Object;
.source "JpegHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x400

    const/4 v0, -0x1

    .line 17
    const-class v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;

    sput-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    .line 23
    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    .line 32
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    .line 35
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x140

    if-gt v0, v2, :cond_1

    .line 37
    sput v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    .line 39
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 84
    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    new-array v0, v2, [I

    .line 89
    const/16 v1, 0xd33

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 90
    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v1, "Max Texture Size = %d"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    aget v0, v0, v4

    .line 92
    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    goto :goto_0
.end method

.method private static a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .locals 2
    .parameter

    .prologue
    .line 66
    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 67
    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 74
    invoke-static {p0, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    move-object p0, v0

    .line 78
    :cond_0
    return-object p0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    invoke-static {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 52
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v3, "Input image at %s is not square (%d x %d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_2
    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v3, "UnsatisfiedLinkError: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
