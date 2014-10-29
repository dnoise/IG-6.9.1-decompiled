.class public final Lcom/instagram/creation/video/f/a;
.super Lcom/instagram/base/a/b;
.source "CamcorderFragment.java"

# interfaces
.implements Lcom/instagram/common/t/a;
.implements Lcom/instagram/creation/video/a/b;
.implements Lcom/instagram/creation/video/a/f;
.implements Lcom/instagram/creation/video/c;
.implements Lcom/instagram/creation/video/h/b;
.implements Lcom/instagram/creation/video/h/c;
.implements Lcom/instagram/creation/video/ui/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:Landroid/media/CamcorderProfile;

.field private aA:Ljava/lang/String;

.field private aB:Lcom/instagram/creation/video/i/a;

.field private aC:I

.field private volatile aD:Z

.field private aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

.field private aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

.field private aG:Landroid/view/SurfaceHolder$Callback;

.field private aH:Lcom/instagram/creation/video/a;

.field private aI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:I

.field private aK:Z

.field private aL:Z

.field private aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private aN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private aO:Lcom/instagram/camera/ui/RotateLayout;

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:I

.field private aT:Landroid/os/Handler;

.field private aa:I

.field private ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

.field private ac:Lcom/instagram/creation/video/ui/f;

.field private ad:Lcom/instagram/creation/video/gl/GLRootView;

.field private ae:Landroid/view/View;

.field private af:Lcom/instagram/creation/video/ui/VideoCancelButton;

.field private ag:Landroid/view/View;

.field private ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

.field private ai:Lcom/instagram/creation/video/ui/ClipStackView;

.field private aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Landroid/widget/ViewSwitcher;

.field private an:Lcom/instagram/creation/video/ui/VideoShutterButton;

.field private ao:Landroid/widget/ImageView;

.field private ap:Landroid/graphics/Bitmap;

.field private aq:Lcom/instagram/ui/dialog/f;

.field private ar:Lcom/instagram/creation/video/ui/r;

.field private as:Z

.field private at:Z

.field private au:J

.field private av:Z

.field private final aw:Lcom/instagram/camera/c;

.field private ax:Lcom/instagram/creation/b/a/b;

.field private ay:Landroid/content/SharedPreferences;

.field private az:I

.field protected b:Lcom/instagram/creation/video/a/a;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/hardware/Camera$Parameters;

.field private e:Lcom/instagram/creation/video/h/a;

.field private f:Landroid/graphics/Matrix;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 147
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/f/a;->g:I

    .line 181
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    .line 183
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->av:Z

    .line 185
    new-instance v0, Lcom/instagram/camera/c;

    invoke-direct {v0}, Lcom/instagram/camera/c;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    .line 190
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    .line 191
    iput v1, p0, Lcom/instagram/creation/video/f/a;->aC:I

    .line 192
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    .line 198
    new-instance v0, Lcom/instagram/creation/video/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    .line 209
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    .line 210
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    .line 211
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    .line 215
    new-instance v0, Lcom/instagram/creation/video/f/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/f/b;-><init>(Lcom/instagram/creation/video/f/a;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    .line 1950
    return-void
.end method

.method static synthetic A(Lcom/instagram/creation/video/f/a;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v0

    return v0
.end method

.method static synthetic B(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aM:Ljava/util/List;

    return-object v0
.end method

.method static synthetic C(Lcom/instagram/creation/video/f/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aN:Ljava/util/List;

    return-object v0
.end method

.method static synthetic D(Lcom/instagram/creation/video/f/a;)Landroid/graphics/Matrix;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic E(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    return-object v0
.end method

.method static synthetic F(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic G(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    return v0
.end method

.method static synthetic H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;)Lcom/instagram/camera/ui/RotateLayout;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Lcom/instagram/ui/dialog/f;)Lcom/instagram/ui/dialog/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aM:Ljava/util/List;

    return-object p1
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1464
    iget v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    .line 1470
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->a()I

    move-result v0

    .line 1471
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a/a;->b()I

    move-result v1

    .line 1473
    if-ne v0, p2, :cond_0

    if-eq v1, p1, :cond_1

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0, p2, p1}, Lcom/instagram/creation/video/a/a;->a(II)V

    .line 1475
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->c()V

    .line 1476
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->d()V

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->d()V

    .line 1482
    :cond_2
    return-void

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_0
.end method

.method private a(IIFIIIILandroid/graphics/Rect;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1790
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 1791
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 1792
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v3}, Lcom/instagram/camera/h;->b(II)I

    move-result v2

    .line 1793
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v4}, Lcom/instagram/camera/h;->b(II)I

    move-result v3

    .line 1795
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1796
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1797
    invoke-static {v4, p8}, Lcom/instagram/camera/h;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1798
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;IIFIIIILandroid/graphics/Rect;)V
    .locals 0
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
    .line 114
    invoke-direct/range {p0 .. p8}, Lcom/instagram/creation/video/f/a;->a(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/a;->d(Z)V

    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;)V
    .locals 2
    .parameter

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->a()Lcom/instagram/creation/video/ui/s;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    .line 1610
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    .line 1613
    :cond_0
    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-nez v0, :cond_0

    .line 1597
    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    .line 1599
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;)V

    .line 1600
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    sget v1, Lcom/facebook/ba;->Tooltip_Popup:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V

    .line 1602
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V

    .line 1603
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1605
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 1309
    sget v0, Lcom/facebook/az;->video_failed_to_start:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;I)V

    .line 1310
    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/video/f/i;-><init>(Lcom/instagram/creation/video/f/a;Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1327
    return-void
.end method

.method private aA()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1256
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1259
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    if-ne v0, v3, :cond_0

    .line 1260
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aB()V

    .line 1263
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ab()V

    .line 1264
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1267
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aS()V

    .line 1274
    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-eqz v0, :cond_1

    .line 1276
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1298
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1305
    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->av:Z

    .line 1306
    :goto_1
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1277
    :catch_1
    move-exception v0

    .line 1278
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    .line 1279
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1284
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1290
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aS:I

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/creation/video/l/b;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 1285
    :catch_2
    move-exception v0

    .line 1286
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    .line 1287
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1299
    :catch_3
    move-exception v0

    .line 1300
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    .line 1301
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private aB()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    .line 1332
    return-void
.end method

.method private aC()V
    .locals 2

    .prologue
    .line 1336
    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-nez v0, :cond_0

    .line 1339
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aB()V

    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    .line 1350
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/view/Surface;)V

    .line 1352
    :cond_0
    return-void
.end method

.method private aD()V
    .locals 3

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget v2, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1357
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1358
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->a(Landroid/hardware/Camera$Parameters;)V

    .line 1361
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->b(Landroid/hardware/Camera$Parameters;)V

    .line 1363
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aE()V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1371
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 1373
    iget v0, p0, Lcom/instagram/creation/video/f/a;->i:I

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/a;->a(II)V

    .line 1374
    return-void
.end method

.method private aE()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1385
    :cond_0
    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_1
    return-void
.end method

.method private aF()V
    .locals 4

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 1392
    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    .line 1393
    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    .line 1394
    return-void
.end method

.method private aG()V
    .locals 2

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v0

    .line 1398
    invoke-static {}, Lcom/instagram/service/c/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1400
    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    .line 1405
    :goto_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aH()V

    .line 1417
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "smdk4x12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "DB85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    const/4 v1, 0x2

    iput v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 1428
    :cond_1
    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/instagram/creation/video/l/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1431
    :cond_2
    return-void

    .line 1402
    :cond_3
    invoke-static {v0}, Lcom/instagram/creation/video/l/b;->a(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method private aH()V
    .locals 6

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 1435
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->i:I

    .line 1437
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aa:I

    .line 1458
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDesiredPreviewWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". mDesiredPreviewHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/a;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1461
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1440
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/b;->a(Landroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1443
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 1444
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1446
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1448
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_1

    .line 1449
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1452
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/video/l/b;->a(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1454
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/instagram/creation/video/f/a;->i:I

    .line 1455
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aa:I

    goto :goto_0
.end method

.method private aI()Lcom/instagram/creation/video/gl/q;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    return-object v0
.end method

.method private aJ()V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a/a;->e()V

    .line 1514
    :cond_0
    return-void
.end method

.method private aK()V
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    .line 1519
    invoke-static {p0}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;)V

    .line 1520
    return-void
.end method

.method private aL()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1523
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private aM()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 1565
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1566
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1567
    iget v1, p0, Lcom/instagram/creation/video/f/a;->az:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2}, Lcom/instagram/creation/video/a;->o()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    :cond_1
    :goto_0
    return-void

    .line 1570
    :cond_2
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private aN()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1576
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/au;->video_delete_button:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1579
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1583
    :goto_1
    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v4, Lcom/instagram/creation/video/a/e;->d:I

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1585
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    iget v3, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v4, Lcom/instagram/creation/video/a/e;->d:I

    if-ne v3, v4, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1587
    return-void

    .line 1577
    :cond_0
    sget v0, Lcom/facebook/au;->video_soft_delete_button:I

    goto :goto_0

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1583
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1585
    goto :goto_3
.end method

.method private aO()V
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->o()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    :cond_0
    return-void

    .line 1591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aP()V
    .locals 4

    .prologue
    .line 1616
    sget-object v0, Lcom/instagram/creation/video/ui/s;->d:Lcom/instagram/creation/video/ui/s;

    .line 1617
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-nez v1, :cond_0

    .line 1618
    new-instance v1, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    .line 1622
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    float-to-int v2, v2

    .line 1623
    const/16 v3, 0x35

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    .line 1624
    return-void
.end method

.method private aQ()I
    .locals 1

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private aR()V
    .locals 3

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    if-eqz v0, :cond_0

    .line 1778
    :goto_0
    return-void

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    if-nez v0, :cond_2

    .line 1667
    :cond_1
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t set up tap to focus, missing view"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_2
    invoke-static {}, Lcom/instagram/creation/video/l/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1671
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldnt set up tap to focus, not supported"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/av;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 1677
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/j;

    invoke-direct {v2, p0, v0}, Lcom/instagram/creation/video/f/j;-><init>(Lcom/instagram/creation/video/f/a;Lcom/instagram/camera/ui/FocusIndicatorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    goto :goto_0
.end method

.method private aS()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 1802
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1803
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/av;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 1806
    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->d()V

    .line 1808
    :cond_0
    return-void
.end method

.method static synthetic aa()V
    .locals 0

    .prologue
    .line 114
    invoke-static {}, Lcom/instagram/creation/video/f/a;->an()V

    return-void
.end method

.method private ab()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aS:I

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    .line 312
    return-void
.end method

.method private ac()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->surfaceview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    .line 368
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/instagram/creation/video/f/x;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/x;-><init>(Lcom/instagram/creation/video/f/a;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 372
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;->setVisibility(I)V

    .line 375
    return-void
.end method

.method private ad()V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ae()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V

    .line 701
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Z)V

    .line 702
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    .line 703
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/instagram/creation/video/c/b;->a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V

    .line 706
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    goto :goto_0
.end method

.method private ae()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    .line 712
    if-nez v1, :cond_0

    .line 719
    :goto_0
    return v0

    .line 715
    :cond_0
    invoke-static {v1}, Lcom/instagram/creation/video/c/b;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    invoke-direct {p0, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private af()V
    .locals 3

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/b;

    sget v1, Lcom/instagram/creation/base/c;->a:I

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/b;->a(IZ)V

    .line 728
    :cond_0
    return-void
.end method

.method private ag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    .line 741
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V

    .line 743
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 749
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    if-eqz v0, :cond_1

    .line 751
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aq()V

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->onPause()V

    .line 759
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aJ()V

    .line 761
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->black_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 773
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ak()V

    .line 775
    invoke-direct {p0, v2}, Lcom/instagram/creation/video/f/a;->c(Z)V

    .line 776
    return-void

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    goto :goto_0
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 791
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aC:I

    .line 792
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->c(Z)V

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    .line 796
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/GLRootView;->onResume()V

    .line 797
    return-void
.end method

.method private ai()V
    .locals 4

    .prologue
    .line 801
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/e;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/e;-><init>(Lcom/instagram/creation/video/f/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aM()V

    .line 812
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    if-nez v0, :cond_1

    .line 813
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ay()V

    .line 814
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aG()V

    .line 815
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aF()V

    .line 816
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    if-eqz v0, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aA()V

    .line 826
    :goto_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->al()V

    .line 836
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a()V

    .line 837
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aO()V

    .line 840
    return-void

    .line 819
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    goto :goto_0

    .line 822
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/a;->au:J

    .line 823
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private aj()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 847
    :cond_0
    return-void
.end method

.method private ak()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 852
    return-void
.end method

.method private al()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 855
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 857
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 858
    return-void
.end method

.method private am()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 862
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 863
    return-void
.end method

.method private static an()V
    .locals 1

    .prologue
    .line 899
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V

    .line 901
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 902
    return-void
.end method

.method private ao()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 959
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->d(Z)V

    .line 962
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ap()V

    .line 963
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-nez v0, :cond_0

    .line 964
    const-string v0, "CamcorderFragment"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->av()V

    .line 969
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aw()V

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->b()V

    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->am()V

    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    const-string v1, "CamcorderFragment"

    const-string v2, "Could not filter media recorder. "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 975
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()V

    .line 978
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 979
    :catch_1
    move-exception v0

    .line 980
    const-string v1, "CamcorderFragment"

    const-string v2, "Could not reconnect camera."

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ap()V
    .locals 4

    .prologue
    .line 990
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    invoke-static {}, Lcom/instagram/creation/video/h/d;->a()Lcom/instagram/creation/video/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    .line 996
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aC()V

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/hardware/Camera;)V

    .line 1005
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(I)V

    .line 1006
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->b(I)V

    .line 1007
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->a:Landroid/media/CamcorderProfile;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Landroid/media/CamcorderProfile;)V

    .line 1009
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/c/b;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    .line 1011
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/h/a;->a(Ljava/lang/String;)V

    .line 1014
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1021
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0, p0}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/b;)V

    .line 1022
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0, p0}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/c;)V

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t unlock camera"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :catch_1
    move-exception v0

    .line 1016
    const-string v1, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1017
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()V

    .line 1018
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private aq()V
    .locals 0

    .prologue
    .line 1026
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ar()Z

    .line 1027
    return-void
.end method

.method private ar()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1030
    .line 1033
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-eqz v0, :cond_5

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/b;)V

    .line 1036
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/h/a;->a(Lcom/instagram/creation/video/h/c;)V

    .line 1037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1038
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->c()V

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0, v2}, Lcom/instagram/creation/video/l/b;->a(ILandroid/content/SharedPreferences;)V

    .line 1041
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->d(Z)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopVideoRecording: Setting current video filename: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1054
    :goto_0
    iput-boolean v1, p0, Lcom/instagram/creation/video/f/a;->as:Z

    .line 1057
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->at()V

    .line 1070
    :cond_0
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-eqz v1, :cond_1

    .line 1071
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    .line 1076
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->al()V

    .line 1078
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->au()V

    .line 1079
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-nez v1, :cond_2

    .line 1080
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 1085
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/a;->at:Z

    if-nez v1, :cond_3

    .line 1086
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 1089
    :cond_3
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->i()V

    .line 1090
    sget v1, Lcom/instagram/creation/video/a/e;->d:I

    invoke-direct {p0, v1}, Lcom/instagram/creation/video/f/a;->h(I)V

    .line 1092
    return v0

    .line 1047
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1049
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/a;->a(Ljava/lang/String;)Z

    .line 1051
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private as()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->j()V

    .line 1132
    return-void
.end method

.method private at()V
    .locals 8

    .prologue
    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1137
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->l()I

    move-result v1

    .line 1138
    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v2

    .line 1143
    int-to-long v4, v1

    sub-int v6, v1, v0

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    int-to-long v4, v1

    add-long v1, v4, v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/i/a;->b(J)V

    .line 1153
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->a()Lcom/instagram/creation/video/i/a;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/instagram/creation/video/i/a;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    sget v0, Lcom/facebook/az;->unknown_error_occured:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 1151
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->as()V

    goto :goto_0
.end method

.method private au()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    if-eqz v0, :cond_0

    .line 1174
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/common/y/a;->b(Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->d()V

    .line 1176
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/h/a;->e()V

    .line 1178
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->e:Lcom/instagram/creation/video/h/a;

    .line 1180
    :cond_0
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aA:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method private av()V
    .locals 3

    .prologue
    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    return-void
.end method

.method private aw()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    .line 1210
    return-void
.end method

.method private ax()I
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method private ay()V
    .locals 2

    .prologue
    .line 1228
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-void

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/lang/Throwable;I)V

    goto :goto_0
.end method

.method private az()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1242
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1253
    :goto_0
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1248
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1249
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1250
    iput-object v1, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->av:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/creation/video/f/a;->aN:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1184
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1185
    invoke-virtual {v0, v3, p1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 1187
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1189
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1190
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1192
    :cond_0
    invoke-virtual {v0, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1193
    return-void

    .line 1187
    :cond_1
    iget v1, p0, Lcom/instagram/creation/video/f/a;->aC:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/r;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    return-object v0
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1781
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/creation/video/l/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 1783
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1784
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1786
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instagram/creation/video/f/a;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/instagram/creation/video/f/a;->h:I

    return v0
.end method

.method private f(I)V
    .locals 1
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 489
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 490
    return-void
.end method

.method static synthetic f(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->as:Z

    return v0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 494
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 495
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 497
    return-void
.end method

.method static synthetic g(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aA()V

    return-void
.end method

.method static synthetic h(Lcom/instagram/creation/video/f/a;)J
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/instagram/creation/video/f/a;->au:J

    return-wide v0
.end method

.method private h(I)V
    .locals 3
    .parameter

    .prologue
    .line 1157
    iput p1, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    .line 1158
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()V

    .line 1160
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/a/d;

    .line 1162
    iget v2, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    invoke-interface {v0, v2}, Lcom/instagram/creation/video/a/d;->b(I)V

    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->af()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/creation/video/f/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/gl/GLRootView;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    return v0
.end method

.method static synthetic m(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aP:Z

    return v0
.end method

.method static synthetic n(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aQ:Z

    return v0
.end method

.method static synthetic o(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aK()V

    return-void
.end method

.method static synthetic p(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ar()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic r(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ad()V

    return-void
.end method

.method static synthetic s(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    return v0
.end method

.method static synthetic t(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    return v0
.end method

.method static synthetic u(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/i/a;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method static synthetic v(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    return-object v0
.end method

.method static synthetic x(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderBlinker;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    return-object v0
.end method

.method static synthetic y(Lcom/instagram/creation/video/f/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/a;->at:Z

    return v0
.end method

.method static synthetic z(Lcom/instagram/creation/video/f/a;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->c:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ah()V

    .line 784
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 785
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ai()V

    .line 786
    return-void
.end method

.method public final G()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ag()V

    .line 735
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 736
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 906
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 907
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    .line 908
    return-void
.end method

.method public final V()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    return v0
.end method

.method public final W()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1217
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;I)V

    .line 1219
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->az()V

    .line 1220
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ay()V

    .line 1221
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aG()V

    .line 1222
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aA()V

    .line 1223
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aF()V

    .line 1224
    return-void
.end method

.method public final X()V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a/a;->a(Z)V

    .line 1504
    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 4

    .prologue
    .line 1627
    sget-object v0, Lcom/instagram/creation/video/ui/s;->a:Lcom/instagram/creation/video/ui/s;

    .line 1628
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1629
    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->getHeight()I

    move-result v2

    .line 1630
    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1631
    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    .line 1633
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->u()Z

    .line 1634
    return-void
.end method

.method public final Z()V
    .locals 5

    .prologue
    .line 1637
    sget-object v0, Lcom/instagram/creation/video/ui/s;->b:Lcom/instagram/creation/video/ui/s;

    .line 1638
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    .line 1639
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->E()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1640
    const/16 v3, 0x53

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aQ()I

    move-result v4

    sub-int v1, v4, v1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/ui/s;III)V

    .line 1644
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->x()V

    .line 382
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/aw;->fragment_camcorder:I

    :goto_0
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 389
    sget v0, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/GLRootView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    .line 390
    sget v0, Lcom/facebook/av;->black_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 391
    sget v0, Lcom/facebook/av;->non_ics_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    .line 393
    sget v0, Lcom/facebook/av;->ics_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    .line 396
    sget v0, Lcom/facebook/av;->preview_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    .line 398
    sget v0, Lcom/facebook/av;->fragment_camera_shutter_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoShutterButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    .line 400
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    new-instance v2, Lcom/instagram/creation/video/a/g;

    invoke-direct {v2, p0, p0}, Lcom/instagram/creation/video/a/g;-><init>(Lcom/instagram/creation/video/a/f;Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setClipStackManager(Lcom/instagram/creation/video/a;)V

    .line 403
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    .line 405
    sget v0, Lcom/facebook/av;->blinker:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    .line 406
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setClipStackManager(Lcom/instagram/creation/video/a;)V

    .line 408
    sget v0, Lcom/facebook/av;->button_remove_actual:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/n;

    invoke-direct {v2, p0, v1}, Lcom/instagram/creation/video/f/n;-><init>(Lcom/instagram/creation/video/f/a;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    sget v0, Lcom/facebook/av;->button_remove:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    .line 420
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    new-instance v2, Lcom/instagram/creation/video/f/o;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/o;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    sget v0, Lcom/facebook/av;->gallery_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    .line 429
    sget v0, Lcom/facebook/av;->backspace_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    .line 430
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/instagram/creation/video/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/a/a;-><init>(Lcom/instagram/creation/video/a/b;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    .line 433
    new-instance v0, Lcom/instagram/creation/video/ui/f;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/creation/video/ui/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    .line 434
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/g;)V

    .line 435
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/k;)V

    .line 436
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/GLRootView;->setContentPane(Lcom/instagram/creation/video/gl/v;)V

    .line 437
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    new-instance v2, Lcom/instagram/creation/video/f/p;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/p;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/gl/GLRootView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 455
    :cond_0
    sget v0, Lcom/facebook/av;->focus_indicator_rotate_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    .line 456
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aR()V

    .line 457
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ab()V

    .line 459
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aj()V

    .line 462
    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 464
    sget-object v0, Lcom/instagram/creation/video/f/l;->a:[I

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 484
    :goto_1
    return-object v1

    .line 382
    :cond_1
    sget v0, Lcom/facebook/aw;->fragment_camcorder_small:I

    goto/16 :goto_0

    .line 466
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_shutter_button_size_large_condensed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->f(I)V

    .line 468
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    sget v2, Lcom/facebook/au;->camcorder_shutter_button_condensed_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_shutter_button_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->f(I)V

    .line 476
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    sget v2, Lcom/facebook/au;->camcorder_shutter_button_condensed_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    .line 479
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->camera_bottom_button_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->g(I)V

    goto :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()V

    .line 317
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/a;->aR:Z

    .line 1530
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    if-nez p1, :cond_0

    .line 1535
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1537
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    const-string v1, "video_invalid_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1540
    invoke-static {v0}, Lcom/instagram/creation/video/i/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;

    move-result-object v0

    .line 1542
    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Lcom/instagram/creation/video/i/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    if-nez v1, :cond_2

    .line 1544
    iput-boolean v4, p0, Lcom/instagram/creation/video/f/a;->aD:Z

    .line 1545
    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aB:Lcom/instagram/creation/video/i/a;

    goto :goto_0

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->ax:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aL()Z

    move-result v3

    invoke-static {v1, v2, v0, v4, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V

    goto :goto_0

    .line 1557
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/a;->b(Landroid/os/Bundle;)V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    const-string v0, "camcorder_fragment"

    const-string v1, "external_dir_unavailable_and_failed_to_start_camera"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/creation/video/f/m;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/m;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    .line 357
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    .line 358
    sget v0, Lcom/instagram/creation/video/a/e;->d:I

    iput v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    .line 359
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/a;->az:I

    .line 360
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()V

    .line 531
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Lcom/instagram/creation/video/f/u;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/u;-><init>(Lcom/instagram/creation/video/f/a;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/u;->b([Ljava/lang/Object;)Lcom/instagram/common/c/a;

    .line 535
    :cond_0
    sget-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    if-nez v0, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ac()V

    .line 539
    :cond_1
    sget v0, Lcom/facebook/av;->clip_stack_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/ClipStackView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    .line 540
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/a;->b()Lcom/instagram/creation/video/i/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/ClipStackView;->setClipStack(Lcom/instagram/creation/video/i/d;)V

    .line 542
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    .line 543
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    .line 545
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aw:Lcom/instagram/camera/c;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/c;->a(Landroid/app/Activity;)V

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    .line 548
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/creation/video/f/r;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/r;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    sget v0, Lcom/facebook/av;->action_bar_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoCancelButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    .line 559
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    new-instance v1, Lcom/instagram/creation/video/f/s;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/s;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoCancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    sget v0, Lcom/facebook/av;->button_accept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/VideoAcceptButton;

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    .line 568
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    new-instance v1, Lcom/instagram/creation/video/f/t;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/t;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/VideoAcceptButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    sget v0, Lcom/facebook/av;->switch_camera_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    new-instance v1, Lcom/instagram/creation/video/f/c;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/c;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    sget v0, Lcom/facebook/av;->minimum_clip_length_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 592
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aQ()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Lcom/instagram/creation/video/c;)V

    .line 596
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 503
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/q;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/q;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aM()V

    .line 294
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aO()V

    .line 295
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()V

    .line 296
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 659
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ax()I

    move-result v5

    .line 660
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    .line 661
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 662
    :try_start_0
    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 668
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_1

    int-to-long v7, v1

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1

    .line 670
    int-to-long v7, v1

    sub-long/2addr v7, v2

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    int-to-long v2, v1

    .line 672
    :cond_0
    new-instance v7, Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v5, v2, v3, v0}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V

    .line 673
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    int-to-long v0, v1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    .line 678
    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/d;

    invoke-direct {v1, p0, v4}, Lcom/instagram/creation/video/f/d;-><init>(Lcom/instagram/creation/video/f/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    return-void

    .line 666
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lcom/instagram/creation/video/i/a;)V
    .locals 2
    .parameter

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aM()V

    .line 301
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aO()V

    .line 302
    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->c()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->d:I

    if-ne v0, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->Y()V

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aN()V

    .line 306
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->b()Lcom/instagram/creation/video/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 867
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 868
    sget v1, Lcom/facebook/az;->discard_video:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_close:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_discard_button:I

    new-instance v2, Lcom/instagram/creation/video/f/g;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/g;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_video_keep_button:I

    new-instance v2, Lcom/instagram/creation/video/f/f;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/f;-><init>(Lcom/instagram/creation/video/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 891
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    .line 893
    :cond_0
    invoke-static {}, Lcom/instagram/creation/video/f/a;->an()V

    .line 894
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aP()V

    .line 329
    return-void
.end method

.method public final c(Lcom/instagram/creation/video/i/a;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->c()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->f()V

    .line 324
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->aI()Lcom/instagram/creation/video/gl/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/q;->a()V

    .line 1487
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1096
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ay:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/instagram/camera/g;->e(Landroid/content/SharedPreferences;)I

    move-result v0

    rsub-int v0, v0, 0x320

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1098
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CAMERA_SETTINGS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 1100
    iget-object v2, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/creation/video/a;->a(II)Lcom/instagram/creation/video/i/a;

    .line 1101
    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1102
    sget v0, Lcom/instagram/creation/video/a/e;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    .line 1104
    iget v0, p0, Lcom/instagram/creation/video/f/a;->aJ:I

    sget v1, Lcom/instagram/creation/video/a/e;->b:I

    if-ne v0, v1, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1108
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/a;->ao()V

    .line 1110
    sget v0, Lcom/instagram/creation/video/a/e;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    .line 1113
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 600
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 601
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/a;->a(Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    sget v0, Lcom/instagram/creation/video/a/e;->c:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/a;->h(I)V

    .line 1119
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->f()V

    .line 1120
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/h;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/h;-><init>(Lcom/instagram/creation/video/f/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1127
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 1128
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1947
    const-string v0, "camcorder"

    return-object v0
.end method

.method public final m_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 912
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 914
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ad:Lcom/instagram/creation/video/gl/GLRootView;

    .line 917
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aG:Landroid/view/SurfaceHolder$Callback;

    .line 918
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aF:Lcom/instagram/creation/video/ui/PreviewSurfaceView;

    .line 920
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aI:Ljava/util/List;

    .line 921
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    .line 922
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    .line 923
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aH:Lcom/instagram/creation/video/a;

    iget-object v1, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/c;)V

    .line 925
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/ClipStackView;->a()V

    .line 929
    :cond_0
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ak:Landroid/view/View;

    .line 930
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->al:Landroid/view/View;

    .line 931
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->am:Landroid/widget/ViewSwitcher;

    .line 932
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ai:Lcom/instagram/creation/video/ui/ClipStackView;

    .line 933
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->an:Lcom/instagram/creation/video/ui/VideoShutterButton;

    .line 934
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ah:Lcom/instagram/creation/video/ui/VideoAcceptButton;

    .line 935
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->af:Lcom/instagram/creation/video/ui/VideoCancelButton;

    .line 936
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 939
    :cond_1
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ag:Landroid/view/View;

    .line 940
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 942
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aq:Lcom/instagram/ui/dialog/f;

    .line 944
    :cond_2
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ab:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    .line 945
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aE:Lcom/instagram/creation/video/ui/CamcorderPreviewLayout;

    .line 946
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->b:Lcom/instagram/creation/video/a/a;

    .line 947
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aO:Lcom/instagram/camera/ui/RotateLayout;

    .line 948
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ae:Landroid/view/View;

    .line 949
    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->aL:Z

    .line 950
    iput-boolean v3, p0, Lcom/instagram/creation/video/f/a;->aK:Z

    .line 951
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->d:Landroid/hardware/Camera$Parameters;

    .line 952
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ar:Lcom/instagram/creation/video/ui/r;

    .line 953
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->aj:Lcom/instagram/creation/video/ui/CamcorderBlinker;

    .line 954
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ac:Lcom/instagram/creation/video/ui/f;

    .line 955
    iput-object v2, p0, Lcom/instagram/creation/video/f/a;->ao:Landroid/widget/ImageView;

    .line 956
    return-void
.end method
