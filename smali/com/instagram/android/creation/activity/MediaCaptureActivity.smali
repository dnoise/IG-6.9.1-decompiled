.class public Lcom/instagram/android/creation/activity/MediaCaptureActivity;
.super Lcom/instagram/base/activity/d;
.source "MediaCaptureActivity.java"

# interfaces
.implements Lcom/instagram/creation/b/a/e;
.implements Lcom/instagram/creation/base/a;
.implements Lcom/instagram/creation/base/b;
.implements Lcom/instagram/creation/photo/b/a;
.implements Lcom/instagram/creation/photo/camera/s;
.implements Lcom/instagram/creation/photo/crop/m;
.implements Lcom/instagram/creation/video/k/a;


# static fields
.field private static p:Z


# instance fields
.field private q:Lcom/instagram/creation/b/c/a;

.field private r:Z

.field private s:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:I

    .line 74
    const/high16 v0, -0x3d3a

    iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->t:F

    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v3, -0x3d3a

    .line 318
    iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/h;->a(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:I

    .line 323
    :cond_0
    iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:I

    if-ne v1, v0, :cond_3

    .line 324
    instance-of v1, p1, Lcom/instagram/creation/video/f/a;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/instagram/creation/photo/camera/c;

    if-eqz v1, :cond_4

    .line 327
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 328
    sget-object v1, Lcom/instagram/m/c;->c:Lcom/instagram/m/a;

    invoke-virtual {v1}, Lcom/instagram/m/a;->g()V

    .line 330
    :cond_2
    iget-boolean v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:Z

    if-eqz v1, :cond_3

    .line 331
    if-eqz v0, :cond_5

    const v0, 0x3f333333

    .line 333
    :goto_1
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/camera/h;->a(Landroid/view/Window;F)F

    move-result v0

    .line 335
    iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->t:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 336
    iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->t:F

    .line 338
    :cond_3
    return-void

    .line 324
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :cond_5
    iget v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->t:F

    goto :goto_1
.end method

.method private j()I
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaSource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "directShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v0, "directShare"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    sget v0, Lcom/instagram/creation/base/c;->b:I

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/instagram/creation/video/f/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/f/a;-><init>()V

    .line 260
    :goto_0
    new-instance v2, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v2, v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 264
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/instagram/creation/photo/camera/c;

    invoke-direct {v0}, Lcom/instagram/creation/photo/camera/c;-><init>()V

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    sget-object v0, Lcom/instagram/p/a;->j:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 297
    invoke-static {p0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(I)Lcom/instagram/creation/photo/crop/a;

    .line 300
    invoke-virtual {v0, p2}, Lcom/instagram/creation/photo/crop/a;->a(Ljava/lang/String;)Lcom/instagram/creation/photo/crop/a;

    .line 301
    invoke-virtual {v0, p3}, Lcom/instagram/creation/photo/crop/a;->a(Z)Lcom/instagram/creation/photo/crop/a;

    .line 303
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/creation/photo/crop/b;

    invoke-direct {v2}, Lcom/instagram/creation/photo/crop/b;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 304
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    const-string v1, "camera_capture"

    invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 309
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->a(Landroid/support/v4/app/Fragment;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 315
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-static {p1}, Lcom/instagram/creation/b/c/a;->b(Lcom/instagram/creation/b/a/b;)V

    .line 229
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/d/c;->a(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/instagram/p/a;->k:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 172
    const-string v0, "mediaFilePath"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 174
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public final a(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    const-string v0, "pendingMediaKey"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "directShare"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/instagram/p/a;->b:Lcom/instagram/p/a;

    invoke-virtual {v1}, Lcom/instagram/p/a;->c()V

    .line 280
    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, v0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v0, Lcom/instagram/android/creation/a/ah;

    invoke-direct {v0}, Lcom/instagram/android/creation/a/ah;-><init>()V

    invoke-virtual {v1, v0, p3}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "METADATA_FRAGMENT"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 287
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/instagram/creation/b/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->c(Lcom/instagram/creation/b/a/b;)V

    .line 234
    return-void
.end method

.method public final c(Lcom/instagram/creation/b/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/a/b;)V

    .line 239
    return-void
.end method

.method public final d(Lcom/instagram/creation/b/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->d(Lcom/instagram/creation/b/a/b;)V

    .line 244
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->onBackPressed()V

    .line 179
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 199
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/c/a;->b()V

    .line 249
    iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/c/a;->c()V

    .line 250
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 204
    instance-of v1, v0, Lcom/instagram/common/t/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/instagram/common/t/a;

    invoke-interface {v0}, Lcom/instagram/common/t/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 205
    :goto_0
    if-nez v0, :cond_0

    .line 206
    invoke-super {p0}, Lcom/instagram/base/activity/d;->onBackPressed()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 209
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/instagram/creation/b/c/a;->a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Lcom/instagram/creation/b/c/a;

    .line 82
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/instagram/android/activity/a;->a(Landroid/app/Activity;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/instagram/share/b/a;->g()V

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 92
    sget-object v0, Lcom/instagram/m/c;->c:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:Z

    .line 93
    iget-boolean v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/h;->a(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 97
    :cond_1
    sget v0, Lcom/facebook/aw;->activity_single_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->setContentView(I)V

    .line 99
    invoke-static {}, Lcom/instagram/user/userservice/b/f;->e()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 110
    const-string v0, "isCrop"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance v0, Lcom/instagram/creation/photo/crop/b;

    invoke-direct {v0}, Lcom/instagram/creation/photo/crop/b;-><init>()V

    .line 112
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 158
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    .line 159
    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 160
    if-nez v1, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 162
    sget v2, Lcom/facebook/av;->layout_container_main:I

    const-string v3, "MediaCaptureActivity"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 163
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    .line 165
    :cond_4
    :goto_1
    return-void

    .line 113
    :cond_5
    const-string v0, "videoFilePath"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    const-string v0, "videoFilePath"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "video_invalid_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 118
    invoke-static {v0}, Lcom/instagram/creation/video/i/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Lcom/instagram/creation/video/i/a;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->j()I

    move-result v3

    invoke-static {v1, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;I)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    .line 122
    const-string v3, "caption"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 126
    :cond_6
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V

    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->k()Z

    move-result v3

    invoke-static {v2, v1, v0, v5, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V

    goto :goto_1

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->finish()V

    goto :goto_1

    .line 137
    :cond_8
    invoke-static {p0}, Lcom/instagram/creation/video/l/g;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 142
    :cond_9
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->c()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_a

    .line 144
    new-instance v0, Lcom/instagram/creation/video/f/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/f/a;-><init>()V

    .line 148
    :goto_2
    const-string v2, "directShare"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v3, "directShare"

    const-string v4, "directShare"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 146
    :cond_a
    new-instance v0, Lcom/instagram/creation/photo/camera/c;

    invoke-direct {v0}, Lcom/instagram/creation/photo/camera/c;-><init>()V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/instagram/base/activity/d;->onResume()V

    .line 215
    sget-boolean v0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/activity/a;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/activity/a;-><init>(Lcom/instagram/android/creation/activity/MediaCaptureActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Z

    .line 224
    :cond_0
    return-void
.end method
