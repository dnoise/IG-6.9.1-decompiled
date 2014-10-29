.class Lcom/instagram/creation/photo/crop/w;
.super Lcom/instagram/common/q/a;
.source "LoadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/q/a",
        "<",
        "Lcom/instagram/creation/photo/crop/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/instagram/creation/photo/crop/w;

    sput-object v0, Lcom/instagram/creation/photo/crop/w;->n:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/instagram/common/q/a;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/instagram/creation/photo/crop/w;->o:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method private static a(Landroid/media/ExifInterface;)I
    .locals 2
    .parameter

    .prologue
    .line 125
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 140
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 129
    :pswitch_1
    const/16 v0, 0x5a

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    const/16 v0, 0xb4

    .line 133
    goto :goto_0

    .line 135
    :pswitch_3
    const/16 v0, 0x10e

    .line 136
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Double;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    const-string v0, ","

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    aget-object v1, v0, v7

    const-string v2, "/"

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 193
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 194
    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 195
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double v1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 197
    aget-object v2, v0, v8

    const-string v3, "/"

    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 198
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 199
    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 200
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 202
    aget-object v0, v0, v9

    const-string v3, "/"

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 203
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 204
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 205
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 207
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v5, 0x404e

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x40ac200000000000L

    div-double/2addr v3, v5

    add-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/instagram/creation/photo/c/b;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {v0}, Lcom/instagram/creation/photo/crop/w;->a(Landroid/media/ExifInterface;)I

    move-result v1

    .line 106
    invoke-virtual {p1, v1}, Lcom/instagram/creation/photo/c/b;->a(I)V

    .line 109
    invoke-static {v0}, Lcom/instagram/creation/photo/crop/w;->b(Landroid/media/ExifInterface;)[Ljava/lang/Double;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/instagram/creation/photo/c/b;->a(Ljava/lang/Double;)V

    .line 112
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/instagram/creation/photo/c/b;->b(Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/instagram/creation/photo/crop/w;->n:Ljava/lang/Class;

    const-string v2, "Exception caught reading exif data"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/media/ExifInterface;)[Ljava/lang/Double;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 151
    const/4 v0, 0x0

    .line 153
    const-string v1, "GPSLatitude"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "GPSLatitudeRef"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v3, "GPSLongitude"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "GPSLongitudeRef"

    invoke-virtual {p0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Double;

    .line 165
    const-string v5, "N"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-static {v1}, Lcom/instagram/creation/photo/crop/w;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v8

    .line 171
    :goto_0
    const-string v1, "E"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-static {v3}, Lcom/instagram/creation/photo/crop/w;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v9

    .line 178
    :cond_0
    :goto_1
    return-object v0

    .line 168
    :cond_1
    invoke-static {v1}, Lcom/instagram/creation/photo/crop/w;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {v3}, Lcom/instagram/creation/photo/crop/w;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v9

    goto :goto_1
.end method

.method private u()Lcom/instagram/creation/photo/crop/x;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/w;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/w;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 61
    invoke-static {v3, v2}, Lcom/instagram/common/y/a;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    new-instance v0, Lcom/instagram/creation/photo/crop/x;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v2, v4, v5}, Lcom/instagram/creation/photo/crop/x;-><init>(Lcom/instagram/creation/photo/crop/w;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    invoke-static {v3}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 66
    invoke-static {v0, v4}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 69
    :try_start_3
    invoke-interface {v2, v4}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v5

    .line 72
    if-eqz v5, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v6, 0x3fb47ae147ae147bL

    mul-double/2addr v0, v6

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 75
    invoke-interface {v5, v0}, Lcom/instagram/creation/photo/gallery/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    :cond_2
    new-instance v6, Lcom/instagram/creation/photo/c/b;

    invoke-direct {v6}, Lcom/instagram/creation/photo/c/b;-><init>()V

    .line 84
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/instagram/creation/photo/crop/w;->a(Lcom/instagram/creation/photo/c/b;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/instagram/creation/photo/crop/x;

    invoke-direct {v0, p0, v5, v1, v6}, Lcom/instagram/creation/photo/crop/x;-><init>(Lcom/instagram/creation/photo/crop/w;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/c/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 93
    invoke-static {v3}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 94
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_4
    new-instance v0, Lcom/instagram/creation/photo/crop/x;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/instagram/creation/photo/crop/x;-><init>(Lcom/instagram/creation/photo/crop/w;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/c/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 93
    invoke-static {v2}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    :try_start_5
    new-instance v0, Lcom/instagram/creation/photo/crop/x;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/instagram/creation/photo/crop/x;-><init>(Lcom/instagram/creation/photo/crop/w;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/c/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 93
    invoke-static {v3}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 94
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    invoke-static {v3}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 94
    if-eqz v2, :cond_3

    .line 95
    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    :cond_3
    throw v0

    .line 93
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 91
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 89
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/w;->u()Lcom/instagram/creation/photo/crop/x;

    move-result-object v0

    return-object v0
.end method
