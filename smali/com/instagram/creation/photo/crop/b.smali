.class public Lcom/instagram/creation/photo/crop/b;
.super Lcom/instagram/creation/photo/crop/y;
.source "CropFragment.java"


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final d:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field a:Z

.field private aa:Lcom/instagram/creation/photo/crop/CropImageView;

.field private ab:Lcom/instagram/creation/photo/crop/q;

.field private ac:Lcom/instagram/ui/dialog/f;

.field private ad:Landroid/content/ContentResolver;

.field private ae:Landroid/graphics/Bitmap;

.field private af:Lcom/instagram/creation/photo/gallery/c;

.field private ag:Lcom/instagram/creation/photo/c/b;

.field private ah:Ljava/lang/String;

.field private ai:Lcom/instagram/creation/photo/crop/m;

.field b:Ljava/lang/Runnable;

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/instagram/creation/photo/crop/b;

    sput-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    .line 83
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/instagram/creation/photo/crop/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/y;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    .line 754
    new-instance v0, Lcom/instagram/creation/photo/crop/l;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/l;-><init>(Lcom/instagram/creation/photo/crop/b;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->b:Ljava/lang/Runnable;

    .line 854
    return-void
.end method

.method private V()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/q;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z

    .line 334
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/q;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/q;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/photo/c/e;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    iget-object v1, v1, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 343
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CropFragment.requestCropRect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 345
    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->b(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static a(IILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 665
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 666
    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 667
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 361
    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/b;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 362
    invoke-static {p3, v0}, Lcom/instagram/creation/photo/c/e;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/c/b;)Lcom/instagram/creation/photo/c/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/m;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/crop/q;)Lcom/instagram/creation/photo/crop/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/q;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/gallery/c;)Lcom/instagram/creation/photo/gallery/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 514
    .line 515
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 521
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 523
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 526
    if-eqz v1, :cond_0

    .line 527
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    if-eqz v1, :cond_2

    .line 527
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 527
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 526
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/os/Bundle;)V

    .line 673
    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 674
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 680
    if-eqz v1, :cond_0

    .line 681
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V

    .line 691
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/crop/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/photo/crop/j;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 685
    :try_start_1
    sget-object v2, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot open file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->b(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 3
    .parameter

    .prologue
    .line 366
    sget v0, Lcom/facebook/az;->processing:I

    .line 367
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/photo/crop/g;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/photo/crop/g;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/creation/photo/crop/n;->a(Lcom/instagram/creation/photo/crop/y;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 383
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->z()Landroid/support/v4/app/an;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v1

    new-instance v2, Lcom/instagram/creation/photo/crop/e;

    invoke-direct {v2, p0, p1}, Lcom/instagram/creation/photo/crop/e;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;

    .line 286
    return-void
.end method

.method private a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V
    .locals 1
    .parameter

    .prologue
    .line 458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 459
    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/os/Bundle;)V

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Landroid/os/Bundle;)V

    .line 461
    return-void
.end method

.method private a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 571
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    const-string v1, "Failed to save native image to : %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/crop/i;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/crop/i;-><init>(Lcom/instagram/creation/photo/crop/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    :goto_1
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-static {p1, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->saveImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Ljava/lang/String;I)I

    move-result v0

    .line 576
    if-ne v0, v2, :cond_2

    .line 578
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/crop/h;

    invoke-direct {v1, p0, p2}, Lcom/instagram/creation/photo/crop/h;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 589
    :cond_2
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    const-string v1, "Native jpeg save failed for file %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->d(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->e(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 478
    :goto_0
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_1
    return-object v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :cond_1
    if-nez v0, :cond_2

    .line 481
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 484
    :cond_2
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 704
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/crop/k;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/photo/crop/k;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 3
    .parameter

    .prologue
    .line 386
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    .line 388
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 394
    invoke-direct {p0, v1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/os/Bundle;)V

    .line 395
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 396
    const-string v0, "cameraRotation"

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v2}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/instagram/creation/photo/crop/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 403
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/photo/crop/b;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->V()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c(Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .locals 4
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->assertDimensions(II)V

    .line 421
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 422
    iget v2, p0, Lcom/instagram/creation/photo/crop/b;->f:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 424
    invoke-static {v1, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v2

    .line 425
    invoke-virtual {v2, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->assertDimensions(II)V

    .line 426
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 427
    return-object v2
.end method

.method private c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 500
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 502
    const-string v0, ""

    .line 510
    :goto_0
    return-object v0

    .line 504
    :cond_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 505
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 506
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 508
    new-array v2, v3, [Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, v2, v4

    .line 510
    const-string v0, "_id=?"

    invoke-direct {p0, v1, v0, v2}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unable_to_load_image:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;

    invoke-interface {v0}, Lcom/instagram/creation/photo/crop/m;->g()V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/b;->h:I

    .line 302
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->d()V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b()V

    .line 718
    :cond_0
    if-eqz p1, :cond_1

    .line 719
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 721
    :cond_1
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 725
    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "originalWidth"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string v0, "originalHeight"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/b;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/b;->c()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/c/b;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 736
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/c/b;->c()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    const-string v0, "mediaSource"

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mediaSource"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    const-string v0, "directShare"

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/photo/crop/b;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->c()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/creation/photo/crop/b;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 540
    .line 545
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 546
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 547
    if-eqz v1, :cond_2

    .line 548
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 549
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 550
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move v2, v7

    .line 559
    :goto_0
    if-eqz v1, :cond_0

    .line 560
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_0
    if-eqz v2, :cond_4

    :cond_1
    :goto_1
    return-object v0

    .line 553
    :cond_2
    :try_start_2
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 554
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 559
    if-eqz v1, :cond_1

    .line 560
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 559
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 560
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 564
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 559
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_5
    move v2, v8

    move-object v0, v6

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    new-instance v2, Lcom/instagram/creation/photo/c/f;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v3}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/instagram/creation/photo/c/f;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/q;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/c/f;Z)V

    .line 313
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 310
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a()Z

    move-result v0

    .line 438
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->b(Z)V

    .line 440
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v1

    .line 443
    if-eqz v1, :cond_0

    .line 444
    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->rotateImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;I)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    .line 447
    :cond_0
    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V

    .line 449
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 450
    return-void
.end method

.method private e(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x4000

    .line 604
    sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using Java to write new JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-double v0, v0

    const-wide v2, 0x3fd7ae147ae147aeL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 607
    sget-object v1, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    .line 609
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image decoding failed. type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 629
    iget v3, p0, Lcom/instagram/creation/photo/crop/b;->f:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 630
    sget-object v4, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 634
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 636
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 637
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    .line 638
    neg-float v5, v5

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 640
    iget-object v5, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v5}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v5

    if-eqz v5, :cond_1

    .line 641
    iget-object v5, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    invoke-virtual {v5}, Lcom/instagram/creation/photo/c/b;->a()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 647
    :cond_1
    int-to-float v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 648
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 649
    invoke-static {v3, v3, v0, v4}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 656
    return-object v1
.end method

.method static synthetic e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/creation/photo/crop/b;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/creation/photo/crop/b;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/instagram/creation/photo/crop/b;->g:I

    return v0
.end method

.method static synthetic j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/q;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/q;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/c/b;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/c/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 132
    sget v0, Lcom/facebook/aw;->fragment_crop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 134
    sget v0, Lcom/facebook/av;->image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/CropImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    .line 135
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/b;)V

    .line 136
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 138
    sget v0, Lcom/facebook/av;->button_back:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    new-instance v1, Lcom/instagram/creation/photo/crop/c;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/crop/c;-><init>(Lcom/instagram/creation/photo/crop/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v1, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    sget v1, Lcom/facebook/av;->save:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    new-instance v3, Lcom/instagram/creation/photo/crop/d;

    invoke-direct {v3, p0}, Lcom/instagram/creation/photo/crop/d;-><init>(Lcom/instagram/creation/photo/crop/b;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CropFragment.isAvatar"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    sget v3, Lcom/facebook/au;->nav_cancel:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    sget v0, Lcom/facebook/au;->check:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    sget v0, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    :cond_0
    return-object v2
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/y;->a(Landroid/content/Context;)V

    .line 114
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instagram/creation/photo/crop/m;

    move-object v1, v0

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 116
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement CropFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/y;->a(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;

    .line 191
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 193
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v1

    .line 195
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;

    .line 196
    const-string v0, "CropFragment.largestDimension"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/b;->f:I

    .line 197
    const-string v0, "CropFragment.smallestDimension"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/b;->g:I

    .line 199
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CropFragment.imageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/net/Uri;)V

    .line 201
    const-string v0, "pendingMediaKey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const-string v0, "pendingMediaKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 210
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v2

    .line 211
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/creation/photo/b/a;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/b/a;

    invoke-interface {v0, v2}, Lcom/instagram/creation/photo/b/a;->a(Lcom/instagram/creation/b/a/b;)V

    .line 214
    :cond_1
    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    .line 216
    const-string v0, "caption"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v2, v0}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 223
    :cond_2
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/photo/crop/y;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->c()V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/instagram/ui/dialog/f;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    .line 180
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    sget v1, Lcom/facebook/az;->loading:I

    invoke-virtual {p0, v1}, Lcom/instagram/creation/photo/crop/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/y;->e(Landroid/os/Bundle;)V

    .line 231
    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    const-string v0, "crop"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0}, Lcom/instagram/creation/photo/crop/y;->m_()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z

    .line 242
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/b;)V

    .line 243
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->a()V

    .line 244
    iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;

    .line 246
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 248
    iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;

    .line 250
    :cond_0
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/instagram/creation/photo/crop/y;->r_()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/m;

    .line 124
    return-void
.end method
