.class public final Lcom/instagram/creation/photo/camera/c;
.super Lcom/instagram/base/a/b;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/camera/n;
.implements Lcom/instagram/camera/r;


# static fields
.field private static aD:I


# instance fields
.field a:Landroid/hardware/Camera;

.field private aA:Landroid/view/View;

.field private aB:Lcom/instagram/camera/ui/RotateLayout;

.field private aC:I

.field private aE:Z

.field private aF:Z

.field private aG:J

.field private aH:Ljava/lang/String;

.field private final aI:Lcom/instagram/camera/c;

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:Lcom/instagram/creation/photo/camera/o;

.field private aN:Ljava/io/File;

.field private aO:Landroid/net/Uri;

.field private aP:F

.field private aQ:Landroid/graphics/Bitmap;

.field private final aR:Landroid/content/BroadcastReceiver;

.field private final aa:Lcom/instagram/creation/photo/camera/n;

.field private ab:J

.field private final ac:Landroid/os/Handler;

.field private ad:Lcom/instagram/creation/photo/camera/r;

.field private ae:I

.field private af:I

.field private ag:Lcom/instagram/camera/k;

.field private ah:Landroid/hardware/Camera;

.field private ai:Landroid/hardware/Camera$Parameters;

.field private aj:Landroid/hardware/Camera$Parameters;

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Lcom/instagram/camera/m;

.field private ar:Ljava/lang/String;

.field private as:Landroid/view/SurfaceHolder;

.field private at:Lcom/instagram/camera/ShutterButton;

.field private au:Landroid/widget/ImageView;

.field private av:Landroid/view/View;

.field private aw:Z

.field private ax:Z

.field private ay:Landroid/widget/ImageView;

.field private az:Lcom/instagram/camera/SquarePreviewFrameLayout;

.field b:I

.field c:Ljava/lang/Thread;

.field d:Ljava/lang/Thread;

.field private e:I

.field private f:I

.field private g:Landroid/content/ContentResolver;

.field private h:Z

.field private final i:Lcom/instagram/creation/photo/camera/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x5a

    sput v0, Lcom/instagram/creation/photo/camera/c;->aD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 114
    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 125
    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    .line 127
    new-instance v0, Lcom/instagram/creation/photo/camera/u;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/u;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->i:Lcom/instagram/creation/photo/camera/u;

    .line 128
    new-instance v0, Lcom/instagram/creation/photo/camera/n;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/n;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aa:Lcom/instagram/creation/photo/camera/n;

    .line 132
    new-instance v0, Lcom/instagram/creation/photo/camera/q;

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/q;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    .line 142
    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    .line 163
    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    .line 168
    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    .line 169
    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    .line 191
    new-instance v0, Lcom/instagram/camera/c;

    invoke-direct {v0}, Lcom/instagram/camera/c;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    .line 203
    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    .line 204
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    .line 330
    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    .line 332
    iput-object v2, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    .line 341
    new-instance v0, Lcom/instagram/creation/photo/camera/f;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/f;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    .line 1551
    return-void
.end method

.method static synthetic A(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    return v0
.end method

.method static synthetic B(Lcom/instagram/creation/photo/camera/c;)F
    .locals 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    const/high16 v1, 0x43b4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic C(Lcom/instagram/creation/photo/camera/c;)F
    .locals 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic D(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    return v0
.end method

.method static synthetic E(Lcom/instagram/creation/photo/camera/c;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->g:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private W()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    :cond_0
    return-void
.end method

.method private X()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 264
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/camera/r;-><init>(Lcom/instagram/creation/photo/camera/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    .line 271
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->a()V

    .line 273
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/c;->a(Landroid/app/Activity;)V

    .line 275
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->as()V

    .line 278
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->g:Landroid/content/ContentResolver;

    .line 281
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->focus_indicator_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    .line 284
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->c()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    aget-object v0, v0, v1

    .line 286
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_1

    move v4, v6

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aA:Landroid/view/View;

    sget v5, Lcom/instagram/creation/photo/camera/c;->aD:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/camera/m;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/camera/n;ZI)V

    .line 294
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ay;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/content/res/AssetFileDescriptor;)V

    .line 296
    new-instance v0, Lcom/instagram/creation/photo/camera/o;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/o;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    .line 297
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ah()V

    .line 299
    iput-boolean v6, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    .line 301
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Y()V

    goto/16 :goto_0

    .line 286
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/instagram/creation/photo/camera/d;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/d;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 312
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->a()V

    .line 319
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ah()V

    .line 320
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ay;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/content/res/AssetFileDescriptor;)V

    .line 321
    new-instance v0, Lcom/instagram/creation/photo/camera/o;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/camera/o;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    .line 322
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    return p1
.end method

.method private a(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide v5, 0x7fefffffffffffffL

    .line 1288
    if-nez p1, :cond_1

    .line 1331
    :cond_0
    return-object v4

    .line 1300
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1303
    if-gtz v0, :cond_6

    .line 1305
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1307
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 1311
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v5

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1312
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 1313
    sub-double/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    .line 1314
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_5

    .line 1316
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-object v4, v0

    .line 1318
    goto :goto_1

    .line 1321
    :cond_3
    if-nez v4, :cond_0

    .line 1324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1325
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v7, v3

    cmpg-double v3, v7, v5

    if-gez v3, :cond_4

    .line 1327
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    move-object v4, v0

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/instagram/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/instagram/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 501
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    .line 925
    const-string v1, "setPreviewDisplay failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->X()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1006
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aa()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/instagram/camera/k;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/camera/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    .line 326
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/g;->b(Landroid/content/SharedPreferences;)V

    .line 327
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v0}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    .line 328
    return-void
.end method

.method private ab()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    :cond_0
    return-void
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 695
    return-void
.end method

.method private ad()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 698
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 700
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    return-void
.end method

.method private ae()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private af()V
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    .line 771
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-static {p0, v0, v1}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 772
    return-void
.end method

.method private ag()V
    .locals 5

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 777
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 778
    sget v0, Lcom/facebook/az;->no_storage:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    .line 791
    :cond_1
    return-void

    .line 779
    :cond_2
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 780
    sget v0, Lcom/facebook/az;->preparing_sd:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 781
    :cond_3
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 782
    sget v0, Lcom/facebook/az;->access_sd_fail:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_4
    iget-wide v1, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 784
    sget v0, Lcom/facebook/az;->not_enough_space:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ah()V
    .locals 3

    .prologue
    .line 795
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 797
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 798
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/k;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    .line 805
    return-void
.end method

.method private ai()Z
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->at()Z

    move-result v0

    return v0
.end method

.method private aj()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 911
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 912
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->d()V

    .line 913
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 914
    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 916
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->g()V

    .line 918
    :cond_0
    return-void
.end method

.method private ak()V
    .locals 2

    .prologue
    .line 935
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    sget v1, Lcom/instagram/creation/photo/camera/c;->aD:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 948
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 939
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    sget v1, Lcom/instagram/creation/photo/camera/c;->aD:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 940
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    const-string v0, "CameraFragment"

    const-string v1, "Error setting display orientation"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private al()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 951
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aI:Lcom/instagram/camera/c;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 959
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eqz v0, :cond_2

    .line 960
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->am()V

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(Landroid/view/SurfaceHolder;)V

    .line 964
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V

    .line 966
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->n()V

    .line 967
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    .line 970
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 971
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 973
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 992
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 993
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->e()V

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    .line 981
    const-string v1, "startPreview failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private am()V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1001
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 1002
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->f()V

    .line 1003
    return-void
.end method

.method private an()V
    .locals 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_0

    .line 1014
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1015
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1018
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1019
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ao()V

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_2
    return-void
.end method

.method private ao()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1033
    return-void
.end method

.method private ap()V
    .locals 2

    .prologue
    .line 1090
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    .line 1094
    :cond_0
    return-void
.end method

.method private aq()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 1109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ar()V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_picturesize_key_V7"

    invoke-virtual {v0, v1, v8}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    if-nez v0, :cond_6

    .line 1117
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Landroid/hardware/Camera$Parameters;)V

    .line 1123
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1130
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1134
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1139
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1140
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    .line 1142
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preview size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/camera/SquarePreviewFrameLayout;->setAspectRatio(D)V

    .line 1148
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_scenemode_key"

    sget v2, Lcom/facebook/az;->pref_camera_scenemode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1151
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1158
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    .line 1168
    :cond_2
    :goto_1
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1169
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1175
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Lcom/instagram/camera/k;)I

    move-result v0

    .line 1176
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 1177
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1178
    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    .line 1179
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1181
    :cond_3
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1186
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_flashmode_key"

    sget v2, Lcom/facebook/az;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1189
    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1190
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1201
    :goto_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    const-string v1, "pref_camera_whitebalance_key"

    sget v2, Lcom/facebook/az;->pref_camera_whitebalance_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1206
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1215
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0, v8}, Lcom/instagram/camera/m;->a(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1224
    :goto_4
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->flash_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/CameraFlashButton;

    .line 1226
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 1227
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1229
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 1230
    :cond_5
    invoke-virtual {v0, v6}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setVisibility(I)V

    .line 1243
    :goto_5
    new-instance v1, Lcom/instagram/creation/photo/camera/k;

    invoke-direct {v1, p0, v0}, Lcom/instagram/creation/photo/camera/k;-><init>(Lcom/instagram/creation/photo/camera/c;Lcom/instagram/creation/photo/camera/CameraFlashButton;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->switch_camera_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1273
    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->b:I

    if-le v1, v7, :cond_10

    .line 1274
    new-instance v1, Lcom/instagram/creation/photo/camera/l;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/l;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    :goto_6
    return-void

    .line 1119
    :cond_6
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 1120
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/instagram/camera/g;->a(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 1161
    :cond_7
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1163
    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ar:Ljava/lang/String;

    goto/16 :goto_1

    .line 1192
    :cond_8
    sget v0, Lcom/facebook/az;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1194
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1196
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown flash mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1208
    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1209
    if-nez v0, :cond_4

    .line 1210
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1218
    :cond_b
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1231
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_d

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1232
    invoke-virtual {v0, v6}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 1234
    :cond_d
    const-string v1, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1235
    sget v1, Lcom/instagram/creation/photo/camera/b;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_5

    .line 1236
    :cond_e
    const-string v1, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1237
    sget v1, Lcom/instagram/creation/photo/camera/b;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_5

    .line 1239
    :cond_f
    sget v1, Lcom/instagram/creation/photo/camera/b;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto/16 :goto_5

    .line 1283
    :cond_10
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private ar()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->an:Z

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1340
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ao:Z

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1344
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1348
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    if-eqz v0, :cond_3

    .line 1350
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1352
    :cond_3
    return-void
.end method

.method private as()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x2faf080

    const-wide/16 v2, 0x0

    .line 1520
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    invoke-static {}, Lcom/instagram/creation/photo/c/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    .line 1522
    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 1523
    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    .line 1529
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ag()V

    .line 1531
    :cond_1
    return-void

    .line 1525
    :cond_2
    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1526
    iput-wide v2, p0, Lcom/instagram/creation/photo/camera/c;->ab:J

    goto :goto_0
.end method

.method private at()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1705
    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v1}, Lcom/instagram/camera/m;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private au()V
    .locals 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    .line 1710
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/m;->a(Landroid/hardware/Camera$Parameters;)V

    .line 1712
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1713
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->av()V

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->am:Z

    goto :goto_0
.end method

.method private av()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1724
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 1725
    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/instagram/creation/photo/camera/c;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    .line 1729
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    .line 1730
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->an:Z

    .line 1731
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aj:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/instagram/creation/photo/camera/c;->aw()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ao:Z

    .line 1732
    return-void

    :cond_0
    move v0, v2

    .line 1725
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1729
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1731
    goto :goto_2
.end method

.method private static aw()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1742
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E617G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P708g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/creation/photo/camera/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/instagram/creation/photo/camera/c;->af:I

    return p1
.end method

.method static synthetic b(Lcom/instagram/creation/photo/camera/c;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->g(I)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aC:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/photo/camera/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/c;->i(I)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/creation/photo/camera/c;)J
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->aG:J

    return-wide v0
.end method

.method static synthetic f(Lcom/instagram/creation/photo/camera/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .locals 1
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 505
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 506
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 507
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 508
    return-void
.end method

.method static synthetic g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    return-object v0
.end method

.method private g(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1069
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    .line 1070
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1073
    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->at()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    .line 1077
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ap()V

    .line 1078
    iput v1, p0, Lcom/instagram/creation/photo/camera/c;->f:I

    goto :goto_0

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private h(I)V
    .locals 3
    .parameter

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    .line 1360
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->an()V

    .line 1364
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 1365
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aq()V

    .line 1369
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    return-void

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    const-string v1, "CameraFragment"

    const-string v2, "Failed to set parameters"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1372
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/photo/camera/m;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/m;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->as()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/creation/photo/camera/c;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i(I)V
    .locals 1
    .parameter

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aB:Lcom/instagram/camera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/instagram/camera/ui/RotateLayout;->setOrientation(I)V

    .line 1517
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    return v0
.end method

.method static synthetic k(Lcom/instagram/creation/photo/camera/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    return v0
.end method

.method static synthetic l(Lcom/instagram/creation/photo/camera/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    return v0
.end method

.method static synthetic m(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->au()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V

    return-void
.end method

.method static synthetic o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic p(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/k;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/creation/photo/camera/c;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    return-void
.end method

.method static synthetic r(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aK:I

    return v0
.end method

.method static synthetic s(Lcom/instagram/creation/photo/camera/c;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aL:I

    return v0
.end method

.method static synthetic t(Lcom/instagram/creation/photo/camera/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    return v0
.end method

.method static synthetic u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    return-object v0
.end method

.method static synthetic v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aO:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic w(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ag()V

    return-void
.end method

.method static synthetic x(Lcom/instagram/creation/photo/camera/c;)F
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->aP:F

    return v0
.end method

.method static synthetic y(Lcom/instagram/creation/photo/camera/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/instagram/creation/photo/camera/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ae()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 619
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    .line 623
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    if-eqz v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_2

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    .line 631
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->au()V

    .line 632
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->W()V

    .line 633
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V
    :try_end_0
    .catch Lcom/instagram/camera/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/instagram/camera/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 646
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-nez v0, :cond_4

    .line 647
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ad()V

    .line 654
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-ne v0, v2, :cond_0

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/photo/camera/c;->aG:J

    .line 656
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    goto :goto_0

    .line 649
    :cond_4
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Z()V

    goto :goto_1
.end method

.method public final G()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 662
    iput-boolean v2, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    .line 664
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->am()V

    .line 666
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    .line 667
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ac()V

    .line 669
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ad:Lcom/instagram/creation/photo/camera/r;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/r;->b()V

    .line 671
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/o;->a()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aM:Lcom/instagram/creation/photo/camera/o;

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->h:Z

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->h()V

    .line 685
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->m()V

    .line 689
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 690
    return-void
.end method

.method public final V()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1036
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-eqz v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    .line 1041
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-static {v1}, Lcom/instagram/camera/g;->c(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 1043
    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    if-eq v2, v1, :cond_1

    .line 1044
    invoke-virtual {v0}, Landroid/support/v4/app/k;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1045
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1046
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    invoke-virtual {v0}, Landroid/support/v4/app/k;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/camera/e;->e()V

    .line 1054
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_1
    invoke-virtual {v0, v4, v4}, Landroid/support/v4/app/k;->overridePendingTransition(II)V

    .line 1062
    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    goto :goto_0

    .line 1056
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1057
    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1064
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->g(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    .line 405
    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/aw;->fragment_camera:I

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 413
    sget v0, Lcom/facebook/av;->camera_preview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 416
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 418
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 419
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 420
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 423
    sget v0, Lcom/facebook/av;->fragment_camera_shutter_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ShutterButton;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    .line 424
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/instagram/camera/ShutterButton;->setOnShutterButtonListener(Lcom/instagram/camera/r;)V

    .line 425
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setVisibility(I)V

    .line 427
    sget v0, Lcom/facebook/av;->fragment_camera_gallery_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    .line 428
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    sget v0, Lcom/facebook/av;->fragment_camera_video_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    .line 431
    iget-object v3, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-static {}, Lcom/instagram/creation/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    sget v0, Lcom/facebook/av;->action_bar_cancel:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/creation/photo/camera/g;

    invoke-direct {v3, p0}, Lcom/instagram/creation/photo/camera/g;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v3

    .line 444
    sget v0, Lcom/facebook/av;->grid_lines_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 445
    sget v0, Lcom/facebook/av;->grid_lines_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    .line 447
    invoke-virtual {v3}, Lcom/instagram/l/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/creation/photo/camera/h;

    invoke-direct {v1, p0, v4, v3}, Lcom/instagram/creation/photo/camera/h;-><init>(Lcom/instagram/creation/photo/camera/c;Landroid/view/View;Lcom/instagram/l/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    sget v0, Lcom/facebook/av;->creation_image_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/SquarePreviewFrameLayout;

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    .line 473
    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 475
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_2
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ab()V

    .line 495
    return-object v2

    .line 405
    :cond_1
    sget v0, Lcom/facebook/aw;->fragment_camera_small:I

    goto/16 :goto_0

    .line 431
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 477
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_shutter_button_size_large_condensed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(I)V

    .line 479
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    sget v1, Lcom/facebook/au;->camera_shutter_button_condensed_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 484
    :pswitch_1
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_shutter_button_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->a(I)V

    .line 486
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    sget v1, Lcom/facebook/au;->camera_shutter_button_condensed_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setBackgroundResource(I)V

    .line 488
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->camera_bottom_button_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->f(I)V

    goto :goto_2

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 709
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 711
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 712
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/s;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ae()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/creation/photo/camera/s;->a(Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 360
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aa()V

    .line 362
    new-instance v0, Lcom/instagram/camera/m;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    sget v2, Lcom/facebook/az;->pref_camera_focusmode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/photo/camera/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/camera/m;-><init>(Lcom/instagram/camera/k;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    .line 365
    if-eqz p1, :cond_1

    .line 366
    const-string v0, "tempFileGallery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    .line 370
    :cond_0
    const-string v0, "pendingMediaKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 377
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/b/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/b/a;->a(Lcom/instagram/creation/b/a/b;)V

    .line 379
    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    .line 381
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    :cond_2
    if-eqz p1, :cond_3

    .line 730
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->a()V

    goto :goto_0

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->b()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    if-nez v0, :cond_0

    .line 814
    const/4 v0, 0x0

    .line 818
    :goto_0
    return v0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aa:Lcom/instagram/creation/photo/camera/n;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 817
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 818
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 824
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 825
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    .line 826
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 527
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    .line 531
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/creation/photo/camera/i;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/i;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/creation/photo/camera/j;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/camera/j;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    .line 554
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 556
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/k;->a(Landroid/content/Context;I)V

    .line 557
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ag:Lcom/instagram/camera/k;

    invoke-virtual {v0}, Lcom/instagram/camera/k;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;)V

    .line 559
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->b()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->b:I

    .line 562
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->W()V

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->c:Ljava/lang/Thread;

    .line 568
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aw:Z

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V

    .line 602
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ax:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->b(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 582
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->f()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aL:I

    .line 583
    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/e;->g()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/camera/c;->aK:I

    .line 586
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    monitor-enter v1

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 592
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 601
    :goto_2
    iput-object v3, p0, Lcom/instagram/creation/photo/camera/c;->d:Ljava/lang/Thread;

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final d()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 1687
    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return v0

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/instagram/creation/photo/camera/c;->aJ:I

    iget v3, p0, Lcom/instagram/creation/photo/camera/c;->ae:I

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/instagram/camera/h;->a(Landroid/hardware/Camera$Parameters;IILcom/instagram/camera/e;)V

    .line 1692
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->ai:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1694
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/c;->i:Lcom/instagram/creation/photo/camera/u;

    new-instance v3, Lcom/instagram/creation/photo/camera/p;

    invoke-direct {v3, p0, v0}, Lcom/instagram/creation/photo/camera/p;-><init>(Lcom/instagram/creation/photo/camera/c;B)V

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1695
    iput v5, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    .line 1696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/camera/c;->h(I)V

    .line 1702
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 393
    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "tempFileGallery"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->aN:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-eqz v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0}, Lcom/instagram/camera/m;->c()V

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1757
    const-string v0, "camera"

    return-object v0
.end method

.method public final l_()V
    .locals 1

    .prologue
    .line 606
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 612
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->aj()V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    .line 615
    return-void
.end method

.method public final m_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 513
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->at:Lcom/instagram/camera/ShutterButton;

    .line 514
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    .line 515
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    .line 516
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ay:Landroid/widget/ImageView;

    .line 517
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->az:Lcom/instagram/camera/SquarePreviewFrameLayout;

    .line 522
    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aQ:Landroid/graphics/Bitmap;

    .line 523
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 747
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->au:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 748
    sget-object v0, Lcom/instagram/p/a;->g:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 749
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->af()V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->av:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 752
    invoke-static {}, Lcom/instagram/creation/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 753
    sget v0, Lcom/facebook/az;->video_not_enough_space_for_recording:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/b;

    sget v1, Lcom/instagram/creation/base/c;->b:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ae()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/b;->a(IZ)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 831
    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->ak:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->al:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/c;->am:Z

    if-eqz v1, :cond_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->aq:Lcom/instagram/camera/m;

    invoke-virtual {v0, p2}, Lcom/instagram/camera/m;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 846
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged. w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 853
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "camera_surface_init"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 858
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    .line 863
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ah:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 867
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget v0, p0, Lcom/instagram/creation/photo/camera/c;->e:I

    if-nez v0, :cond_3

    .line 875
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->al()V

    .line 891
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->aF:Z

    if-nez v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/c;->ac:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 897
    :goto_2
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "camera_surface_init"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/camera/c;->aC:I

    if-eq v0, v1, :cond_4

    .line 878
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->ak()V

    .line 880
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/c;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 894
    :cond_5
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->Z()V

    goto :goto_2
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    .line 902
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/c;->am()V

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/c;->ap:Z

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/c;->as:Landroid/view/SurfaceHolder;

    .line 908
    return-void
.end method
