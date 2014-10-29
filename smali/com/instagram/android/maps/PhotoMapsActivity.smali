.class public Lcom/instagram/android/maps/PhotoMapsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/a/c;


# static fields
.field private static w:Lcom/instagram/android/maps/PhotoMapsActivity;


# instance fields
.field private a:Lcom/instagram/a/f;

.field private b:Lcom/instagram/android/maps/ui/i;

.field private c:Lcom/google/android/maps/MapController;

.field private d:Lcom/instagram/android/maps/b/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/ae;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/instagram/android/maps/b/i;

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:Lcom/instagram/android/maps/ui/m;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/instagram/android/maps/ae;

.field private l:Lcom/instagram/android/maps/ui/a/b;

.field private m:Lcom/instagram/android/maps/e/d;

.field private n:Lcom/instagram/android/maps/e/e;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/content/BroadcastReceiver;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/instagram/common/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/d",
            "<",
            "Lcom/instagram/feed/d/t;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Landroid/os/Handler;

    .line 105
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z

    .line 106
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z

    .line 107
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Z

    .line 109
    new-instance v0, Lcom/instagram/android/maps/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/b;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;

    .line 118
    new-instance v0, Lcom/instagram/android/maps/s;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/s;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/j/d;

    .line 149
    iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z

    .line 997
    return-void
.end method

.method private static a(IDDDD)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    const-wide v0, 0x40b8e30000000000L

    const-wide v2, 0x404ca5dcc63f1412L

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dcc63f1412L

    div-double v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x404ca5dcc63f1412L

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide v6, 0x404ca5dcc63f1412L

    div-double v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x404ca5dcc63f1412L

    div-double v6, p7, v6

    const-wide v8, 0x404ca5dcc63f1412L

    div-double v8, p5, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 1034
    const-wide/high16 v2, 0x4020

    const-wide v4, 0x3ffa504816f0068eL

    mul-double/2addr v0, v4

    mul-int v4, p0, p0

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 1036
    cmpl-double v2, p1, p3

    if-nez v2, :cond_0

    cmpl-double v2, p1, p3

    if-nez v2, :cond_0

    .line 1037
    const-wide/high16 v0, 0x4026

    .line 1040
    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/instagram/android/maps/ae;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ae;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ae;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/ae;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/maps/ae;->a()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ae;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ae;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ae;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/ae;->a()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 357
    :cond_3
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ae;

    .line 358
    return-void
.end method

.method private a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 637
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 644
    if-eqz p3, :cond_0

    .line 645
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;Z)V

    .line 424
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 428
    invoke-static {}, Lcom/instagram/android/maps/b/b;->a()Lcom/instagram/android/maps/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    .line 429
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->l:Lcom/instagram/android/maps/ui/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/i;->setOnPanListener(Lcom/instagram/android/maps/ui/a/b;)V

    .line 431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/maps/b/a;

    .line 432
    iget-object v7, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    new-instance v0, Lcom/instagram/android/maps/b/h;

    invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->b()D

    move-result-wide v1

    invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->c()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V

    invoke-virtual {v7, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    goto :goto_0

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    .line 438
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    .line 440
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->l()V

    .line 442
    :cond_1
    invoke-direct {p0, v8}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Z)V

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    if-eqz p2, :cond_2

    .line 447
    new-instance v0, Lcom/instagram/ui/dialog/b;

    sget v1, Lcom/facebook/aw;->photo_maps_dialog:I

    sget v2, Lcom/facebook/ba;->IgDialogFull:I

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/maps/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/ac;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v1

    .line 455
    new-instance v0, Lcom/instagram/android/maps/ad;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/ad;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 461
    sget v0, Lcom/facebook/av;->dialog_map_title:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->photo_map:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 462
    sget v0, Lcom/facebook/av;->dialog_map_bullet_1:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->popup_photomaps_empty_map_line_1:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 464
    sget v0, Lcom/facebook/av;->dialog_map_bullet_2:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->popup_photomaps_empty_map_line_2:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 466
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 498
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/a/f;

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 499
    return-void

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 472
    const/4 v0, 0x0

    .line 475
    if-eqz v1, :cond_4

    .line 476
    const-string v0, "@%s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_4
    if-eqz v0, :cond_5

    .line 480
    sget v1, Lcom/facebook/az;->user_has_no_geotagged_photos:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_2
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    .line 487
    sget v0, Lcom/facebook/az;->return_to_profile:I

    new-instance v2, Lcom/instagram/android/maps/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/c;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 494
    invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 482
    :cond_5
    sget v0, Lcom/facebook/az;->could_not_load_photo_map_information:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Z)V
    .locals 14
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    if-nez v0, :cond_4

    .line 659
    invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    .line 677
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    move v2, v0

    .line 679
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:I

    .line 681
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v7

    .line 682
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 684
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v9

    .line 686
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->clustering_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v1, v3, v0, v9}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;ILcom/google/android/maps/Projection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    .line 689
    const-string v0, "PhotoMap"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Clusters: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 693
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/f;

    .line 695
    new-instance v10, Lcom/instagram/android/maps/ui/ah;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v0, v1, v3}, Lcom/instagram/android/maps/ui/ah;-><init>(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/i;Landroid/content/Context;)V

    .line 697
    new-instance v1, Lcom/instagram/android/maps/i;

    invoke-direct {v1, p0, v10}, Lcom/instagram/android/maps/i;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V

    invoke-virtual {v10, v1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/a/c;)V

    .line 722
    new-instance v1, Lcom/instagram/android/maps/j;

    invoke-direct {v1, p0, v10}, Lcom/instagram/android/maps/j;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V

    invoke-virtual {v10, v1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/a/a;)V

    .line 754
    const/4 v3, 0x0

    .line 756
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 757
    instance-of v12, v1, Lcom/instagram/android/maps/ui/ah;

    if-eqz v12, :cond_3

    .line 758
    check-cast v1, Lcom/instagram/android/maps/ui/ah;

    .line 759
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v12

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v13

    invoke-virtual {v13}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 767
    :goto_4
    if-eqz v1, :cond_9

    .line 768
    iput-wide v4, v1, Lcom/instagram/android/maps/ui/ah;->a:J

    .line 769
    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/b/f;)V

    .line 770
    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->d()V

    goto :goto_3

    .line 661
    :cond_4
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_6

    .line 662
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/i;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 663
    invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    goto/16 :goto_1

    .line 664
    :cond_5
    iget v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:I

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/b/i;->a(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/b/i;

    move-result-object v0

    .line 669
    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/b/i;->b(Lcom/instagram/android/maps/b/i;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    :cond_7
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/i;->b()Lcom/instagram/android/maps/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:Lcom/instagram/android/maps/b/i;

    goto/16 :goto_1

    .line 677
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    .line 772
    :cond_9
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 777
    :cond_a
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    long-to-double v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/instagram/android/maps/ui/i;->a(D)V

    .line 779
    if-eqz v2, :cond_e

    .line 780
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/instagram/android/maps/ui/ah;

    .line 781
    const-wide/16 v2, 0x0

    .line 782
    const/4 v6, 0x0

    .line 783
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    .line 784
    instance-of v4, v0, Lcom/instagram/android/maps/ui/ah;

    if-eqz v4, :cond_f

    .line 785
    check-cast v0, Lcom/instagram/android/maps/ui/ah;

    .line 786
    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)D

    move-result-wide v4

    .line 787
    const-wide v12, 0x415312d000000000L

    cmpg-double v12, v4, v12

    if-gez v12, :cond_f

    if-eqz v6, :cond_c

    cmpg-double v12, v4, v2

    if-gez v12, :cond_f

    :cond_c
    move-wide v2, v4

    :goto_7
    move-object v6, v0

    .line 792
    goto :goto_6

    .line 794
    :cond_d
    if-eqz v6, :cond_b

    .line 795
    invoke-virtual {v6}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    invoke-static {v0, v9}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;Lcom/google/android/maps/Projection;)D

    move-result-wide v2

    .line 796
    const-wide/high16 v4, 0x4079

    cmpg-double v0, v2, v4

    if-gez v0, :cond_b

    .line 797
    invoke-virtual {v6}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/maps/ui/ah;->d:Lcom/instagram/android/maps/b/h;

    goto :goto_5

    .line 804
    :cond_e
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0, v8}, Lcom/instagram/android/maps/ui/i;->a(Ljava/util/Collection;)V

    .line 805
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V

    goto/16 :goto_0

    :cond_f
    move-object v0, v6

    goto :goto_7

    :cond_10
    move-object v1, v3

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 810
    invoke-static {p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;

    move-result-object v3

    .line 812
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Ljava/util/List;)V

    .line 813
    new-instance v0, Lcom/instagram/android/maps/ui/m;

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->d()Lcom/instagram/android/maps/ui/af;

    move-result-object v2

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ui/m;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/ah;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    .line 818
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v6, v6}, Lcom/instagram/android/maps/ui/m;->showAtLocation(Landroid/view/View;III)V

    .line 819
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    new-instance v1, Lcom/instagram/android/maps/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/n;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/d;)V

    .line 832
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 612
    new-array v8, v9, [F

    .line 613
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 619
    aget v0, v8, v10

    .line 620
    const-string v1, "PhotoMap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Distance = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/high16 v1, 0x43fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    move v0, v10

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-static {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 844
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    .line 845
    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/android/g/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method private static c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/f;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 837
    invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    .line 838
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 840
    :cond_0
    return-object v1
.end method

.method static synthetic d(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z

    return v0
.end method

.method public static e()Lcom/instagram/android/maps/PhotoMapsActivity;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 241
    .line 243
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/f;

    .line 246
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_5

    :cond_0
    :goto_1
    move-object v1, v0

    .line 249
    goto :goto_0

    .line 250
    :cond_1
    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    move-object v4, v2

    .line 255
    :goto_2
    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 257
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 258
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v4, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 261
    :cond_2
    if-eqz v4, :cond_3

    .line 262
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 265
    :cond_3
    new-instance v0, Lcom/instagram/android/maps/ae;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I

    move-result v2

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I

    move-result v3

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ae;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/ae;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z

    .line 267
    return-void

    :cond_4
    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic h(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V

    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/a/f;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/a/f;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->j()Ljava/util/List;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V

    .line 315
    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    iget-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z

    if-eqz v1, :cond_3

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z

    .line 321
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/z;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/z;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 327
    :cond_3
    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lcom/instagram/android/c/a/b;

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->e()Landroid/support/v4/app/an;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/aa;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/aa;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/c/a/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/b;->a(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private l()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Lcom/instagram/android/maps/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/d;

    .line 518
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    .line 522
    new-instance v0, Lcom/instagram/android/maps/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/e;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Lcom/instagram/android/maps/e/e;

    .line 543
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Lcom/instagram/android/maps/e/e;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/e;)V

    .line 544
    return-void
.end method

.method static synthetic l(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->m()V

    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 952
    sget v0, Lcom/facebook/az;->edit_photos_on_map:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 953
    sget v0, Lcom/facebook/az;->view_all_photos_on_map:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 955
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Lcom/instagram/android/maps/b/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    aput-object v2, v0, v5

    .line 961
    :goto_0
    new-instance v3, Lcom/instagram/ui/dialog/b;

    invoke-direct {v3, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/instagram/android/maps/u;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/instagram/android/maps/u;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 995
    return-void

    .line 958
    :cond_0
    new-array v0, v5, [Ljava/lang/CharSequence;

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method static synthetic m(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z

    .line 234
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/maps/d/l;->a(Ljava/lang/String;Landroid/support/v4/app/s;)V

    .line 237
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 908
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    sget v0, Lcom/facebook/az;->edit_photos_on_map:I

    new-instance v1, Lcom/instagram/android/maps/q;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/q;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 949
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 923
    sget v0, Lcom/facebook/az;->photo_map:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 924
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 926
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/maps/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/r;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 943
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->action_bar_semi_transparent_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->grey_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Lcom/instagram/a/e;->c:Lcom/instagram/a/e;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/instagram/a/b;->a(IIILcom/instagram/a/e;)V

    goto :goto_0

    .line 934
    :cond_1
    new-instance v0, Lcom/instagram/android/maps/t;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/t;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-interface {p1, v1, v0}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 940
    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    goto :goto_1
.end method

.method public final a(Lcom/instagram/android/maps/b/f;)Z
    .locals 14
    .parameter

    .prologue
    .line 553
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    .line 554
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->d()Lcom/instagram/android/maps/b/h;

    move-result-object v7

    .line 555
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v9

    .line 556
    new-instance v10, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v1

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v2

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v10, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 561
    invoke-static {v0, v7}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)Z

    move-result v11

    .line 563
    if-eqz v11, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 566
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 567
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 568
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v12

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 570
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getWidth()I

    move-result v0

    invoke-static/range {v0 .. v8}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(IDDDD)I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    invoke-virtual {v9}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/f;

    invoke-direct {v3, p0, v0, v10}, Lcom/instagram/android/maps/f;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 599
    :goto_0
    return v11

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v10}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method public final b()Landroid/support/v4/app/k;
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    return-object v0
.end method

.method public final c()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/instagram/android/maps/ui/af;
    .locals 1

    .prologue
    .line 889
    new-instance v0, Lcom/instagram/android/maps/p;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/p;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1073
    const-string v0, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->a()V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1079
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1082
    :cond_3
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1084
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 154
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget v0, Lcom/facebook/aw;->layout_maps:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->setContentView(I)V

    .line 157
    new-instance v1, Lcom/instagram/a/f;

    sget v0, Lcom/facebook/av;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/instagram/android/maps/v;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/v;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/instagram/a/f;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/a/f;

    .line 167
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/e/a;->a(Z)V

    .line 172
    :cond_0
    new-instance v0, Lcom/instagram/android/maps/ui/i;

    invoke-static {}, Lcom/instagram/android/maps/PhotoMapsActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    .line 173
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/i;->setBuiltInZoomControls(Z)V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    new-instance v1, Lcom/instagram/android/maps/w;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/w;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/i;->setDetachWindowListener(Lcom/instagram/android/maps/ui/l;)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0, v5}, Lcom/instagram/android/maps/ui/i;->setClickable(Z)V

    .line 183
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0, v5}, Lcom/instagram/android/maps/ui/i;->setEnabled(Z)V

    .line 184
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    sget v0, Lcom/facebook/av;->layout_maps_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    .line 195
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x25353cb

    const v3, -0x1dede0d

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 196
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/google/android/maps/MapController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 198
    new-instance v0, Lcom/instagram/android/maps/x;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/x;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->l:Lcom/instagram/android/maps/ui/a/b;

    .line 222
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 225
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k()V

    .line 226
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    .line 1052
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Lcom/instagram/android/maps/e/e;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/e;)V

    .line 1055
    :cond_0
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 1059
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;

    .line 1061
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 1062
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->b()V

    .line 366
    :cond_0
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 368
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 369
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/a/f;

    invoke-virtual {v0, p0}, Lcom/instagram/a/f;->a(Lcom/instagram/a/c;)V

    .line 280
    sput v4, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    .line 283
    invoke-static {}, Lcom/instagram/android/maps/ui/ah;->h()V

    .line 287
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.maps.manager.MapReviewed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 294
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j()V

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z

    if-eqz v0, :cond_1

    .line 299
    iput-boolean v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z

    .line 302
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;Z)V

    .line 303
    invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V

    .line 307
    :cond_1
    sput-object p0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;

    .line 308
    return-void
.end method
