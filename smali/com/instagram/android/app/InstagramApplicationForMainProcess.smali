.class public Lcom/instagram/android/app/InstagramApplicationForMainProcess;
.super Lcom/instagram/common/b/b;
.source "InstagramApplicationForMainProcess.java"


# static fields
.field private static final HEADER_REFERER:Lch/boye/httpclientandroidlib/Header; = null

.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "images"

.field private static final REQUEST_FILTER:Lcom/instagram/common/g/a/f; = null

.field private static final TAG:Ljava/lang/String; = "InstagramApplicationForMainProcess"


# instance fields
.field private final mAutoCompleteUpdateReceiver:Lcom/instagram/user/userservice/a/e;

.field private final mChangedUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mServiceListener:Lcom/facebook/b/f;

.field private final mSuggestionsUpdateReceiver:Lcom/instagram/user/userservice/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Referer"

    const-string v2, "android.instagram.com"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->HEADER_REFERER:Lch/boye/httpclientandroidlib/Header;

    .line 123
    new-instance v0, Lcom/instagram/android/app/a;

    invoke-direct {v0}, Lcom/instagram/android/app/a;-><init>()V

    sput-object v0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->REQUEST_FILTER:Lcom/instagram/common/g/a/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "appContext"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/instagram/common/b/b;-><init>()V

    .line 132
    new-instance v0, Lcom/instagram/user/userservice/a/e;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mAutoCompleteUpdateReceiver:Lcom/instagram/user/userservice/a/e;

    .line 136
    new-instance v0, Lcom/instagram/user/userservice/b/g;

    invoke-direct {v0}, Lcom/instagram/user/userservice/b/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mSuggestionsUpdateReceiver:Lcom/instagram/user/userservice/b/g;

    .line 140
    new-instance v0, Lcom/instagram/android/app/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/app/b;-><init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V

    iput-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mChangedUserReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/instagram/android/app/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/app/c;-><init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V

    iput-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mServiceListener:Lcom/facebook/b/f;

    .line 211
    iput-object p1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    .line 212
    return-void
.end method

.method static synthetic access$000()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->HEADER_REFERER:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/a/e;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mAutoCompleteUpdateReceiver:Lcom/instagram/user/userservice/a/e;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/b/g;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mSuggestionsUpdateReceiver:Lcom/instagram/user/userservice/b/g;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->reauthFacebookAndFetchUserId()V

    return-void
.end method

.method private detectWebViewCrashingBug()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 373
    const-string v0, "failed_to_initialize_cache_dir"

    const-string v1, "failed_to_initialize_cache_dir"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method private initAnalytics()V
    .locals 9

    .prologue
    .line 325
    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/s/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 327
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/s/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;

    invoke-static {}, Lcom/instagram/d/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 330
    const-string v6, "f249176f09e26ce54212b472dbab8fa8"

    .line 331
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-static {}, Lcom/instagram/share/b/a;->f()Ljava/lang/String;

    move-result-object v8

    .line 334
    new-instance v0, Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v8}, Lcom/instagram/common/analytics/ab;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/analytics/a;->a(Lcom/instagram/common/analytics/d;)V

    .line 344
    :cond_0
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-static {}, Lcom/facebook/d/g/b;->a()Lcom/facebook/d/g/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/d/c;->a(Lcom/instagram/common/analytics/d;Lcom/facebook/d/g/a;)V

    .line 345
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/k/a;->a(Landroid/content/Context;)Lcom/instagram/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/a;->a()V

    .line 346
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/b/a/b;

    iget-object v2, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 347
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/o;

    iget-object v2, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/common/analytics/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 349
    return-void
.end method

.method private initRealtimeUpdates()V
    .locals 5

    .prologue
    .line 352
    invoke-static {}, Lcom/instagram/android/h/f;->c()Lcom/instagram/android/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/instagram/common/d/j;

    iget-object v3, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/instagram/android/h/a;

    iget-object v4, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/instagram/android/h/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/h/f;->a(Landroid/content/Context;Lcom/instagram/common/d/j;Lcom/instagram/android/h/a;)V

    .line 357
    return-void
.end method

.method private installSystemMessageHandlers()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "fb_needs_reauth"

    invoke-static {}, Lcom/instagram/share/b/a;->m()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 453
    const-string v0, "foursquare_needs_reauth"

    invoke-static {}, Lcom/instagram/share/d/a;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 455
    const-string v0, "vkontakte_needs_reauth"

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->h()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 457
    const-string v0, "twitter_needs_reauth"

    invoke-static {}, Lcom/instagram/share/f/a;->i()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method

.method private static isBlacklistedForAdvancedResize()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MI 3W"

    aput-object v3, v2, v1

    const-string v3, "MI 4W"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "D2533"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Vodafone Smart 4 turbo"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "D2502"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "305SH"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 447
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private reauthFacebookAndFetchUserId()V
    .locals 3

    .prologue
    .line 360
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/facebook/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mServiceListener:Lcom/facebook/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/content/Context;Lcom/facebook/b/f;)Z

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Landroid/content/Context;)V

    .line 368
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/instagram/share/b/a;->h()V

    goto :goto_0
.end method

.method private scanAdvancedCameraWhiteList()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "Galaxy Nexus"

    aput-object v2, v3, v1

    const-string v2, "Nexus S"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "HTC_Amaze_4G"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "DROID3"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "DROID4"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "DROIDX"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "DROID BIONIC"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "SPH-D700"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "GT-I9100"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "SGH-T959V"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "SCH-I500"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "SCH-I510"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "ADR6425LVW"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "MB865"

    aput-object v4, v3, v2

    const-string v2, "LT15a"

    aput-object v2, v3, v5

    const/16 v2, 0xf

    const-string v4, "PC36100"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "PG86100"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "GT-N7000"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "GT-P7510"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "ThinkPad Tablet"

    aput-object v4, v3, v2

    .line 406
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_1

    .line 418
    :cond_0
    :goto_0
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Lcom/instagram/l/a/b;->a(Z)Z

    move-result v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/instagram/l/a/b;->b(Z)Z

    .line 421
    return-void

    :cond_1
    move v2, v1

    .line 410
    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v4, v3, v2

    .line 411
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private scanAdvancedResizeWhiteList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 424
    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v2

    .line 431
    invoke-virtual {v2, v0}, Lcom/instagram/l/a/b;->c(Z)Z

    move-result v0

    .line 432
    invoke-static {}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->isBlacklistedForAdvancedResize()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/instagram/l/a/b;->d(Z)Z

    .line 434
    return-void

    :cond_0
    move v1, v0

    .line 432
    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAppService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Service:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TService;>;)TService;"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, serviceType:Ljava/lang/Class;,"Ljava/lang/Class<TService;>;"
    const-class v0, Lcom/instagram/common/y/f/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {}, Lcom/instagram/android/login/b/a;->a()Lcom/instagram/android/login/b/a;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/common/b/b;->getAppService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 216
    invoke-static {}, Lcom/instagram/k/d;->a()Lcom/instagram/k/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/k/f;->a:Lcom/instagram/k/f;

    invoke-virtual {v0, v1}, Lcom/instagram/k/d;->a(Lcom/instagram/k/f;)V

    .line 219
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, Lcom/facebook/e/a/a;->a(I)V

    .line 221
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/h/a;->a(Landroid/content/Context;)V

    .line 222
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/k/a;->a(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/ba;->InstagramTheme:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 229
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mChangedUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AuthHelper.BROADCAST_USER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 232
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/an;->a(Z)V

    .line 234
    new-instance v0, Lcom/instagram/api/a/c;

    invoke-direct {v0}, Lcom/instagram/api/a/c;-><init>()V

    invoke-static {v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/b/c;)V

    .line 237
    const-string v0, "1006803734412"

    invoke-static {v0}, Lcom/instagram/common/u/b/b;->a(Ljava/lang/String;)V

    .line 238
    const-string v0, "instagram"

    invoke-static {v0}, Lcom/instagram/common/u/b/d;->a(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/creation/photo/c/g;->a(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/l/a/b;->a(Landroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/instagram/m/k;->c()V

    .line 245
    new-instance v0, Lcom/instagram/android/util/c;

    invoke-direct {v0}, Lcom/instagram/android/util/c;-><init>()V

    invoke-static {v0}, Lcom/instagram/o/f/f;->a(Lcom/instagram/o/f/e;)V

    .line 246
    new-instance v0, Lcom/instagram/android/maps/f/a;

    invoke-direct {v0}, Lcom/instagram/android/maps/f/a;-><init>()V

    invoke-static {v0}, Lcom/instagram/o/f/d;->a(Lcom/instagram/o/f/c;)V

    .line 247
    new-instance v0, Lcom/instagram/android/feed/e/g;

    invoke-direct {v0}, Lcom/instagram/android/feed/e/g;-><init>()V

    invoke-static {v0}, Lcom/instagram/o/f/b;->a(Lcom/instagram/o/f/a;)V

    .line 248
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-static {v0}, Lcom/instagram/o/f/h;->a(Lcom/instagram/o/f/g;)V

    .line 251
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    .line 253
    new-instance v0, Lcom/instagram/user/f/a;

    invoke-direct {v0}, Lcom/instagram/user/f/a;-><init>()V

    invoke-static {v0}, Lcom/instagram/user/c/j;->a(Lcom/instagram/user/c/i;)V

    .line 257
    invoke-static {}, Lcom/instagram/share/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/e/a;->a(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->initRealtimeUpdates()V

    .line 261
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->initAnalytics()V

    .line 263
    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/e/a;->d()V

    .line 266
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->detectWebViewCrashingBug()V

    .line 268
    invoke-static {}, Lcom/instagram/camera/h;->a()V

    .line 270
    new-instance v0, Lcom/instagram/android/app/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/app/d;-><init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V

    .line 279
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/g/b/o;

    iget-object v3, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/instagram/common/g/b/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 281
    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    const-string v2, "images"

    invoke-static {v1, v2}, Lcom/instagram/common/g/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/common/g/b/h;

    move-result-object v1

    .line 282
    sget-object v2, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->REQUEST_FILTER:Lcom/instagram/common/g/a/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/f;)V

    .line 283
    sget-object v2, Lcom/instagram/api/g/e;->a:Lcom/instagram/api/g/e;

    invoke-virtual {v1, v2}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/f;)V

    .line 284
    sget-object v2, Lcom/instagram/api/g/f;->a:Lcom/instagram/api/g/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/i;)V

    .line 285
    invoke-virtual {v1, v0}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/c;)V

    .line 287
    iget-object v1, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/common/g/c/a;->a(Landroid/content/Context;)Lcom/instagram/common/g/c/a;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/instagram/api/g/e;->a:Lcom/instagram/api/g/e;

    invoke-virtual {v1, v2}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/a/f;)V

    .line 289
    sget-object v2, Lcom/instagram/api/g/f;->a:Lcom/instagram/api/g/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/a/i;)V

    .line 290
    invoke-virtual {v1, v0}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/a/c;)V

    .line 292
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    .line 294
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->scanAdvancedCameraWhiteList()V

    .line 295
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->scanAdvancedResizeWhiteList()V

    .line 297
    invoke-direct {p0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->installSystemMessageHandlers()V

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 303
    new-instance v1, Lcom/instagram/android/app/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/app/e;-><init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    invoke-static {}, Lcom/instagram/o/a;->a()Lcom/instagram/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/o/a;->b()V

    .line 318
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/k/a;->a(Landroid/content/Context;)Lcom/instagram/common/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/k/a;->a()V

    .line 322
    :cond_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
