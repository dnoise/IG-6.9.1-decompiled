.class public final Lcom/instagram/creation/video/f/ar;
.super Lcom/instagram/creation/video/f/bf;
.source "VideoEditFragment.java"


# instance fields
.field private final a:Lcom/instagram/creation/video/f/ba;

.field private b:Lcom/instagram/ui/dialog/f;

.field private c:Lcom/instagram/creation/video/f/av;

.field private d:Lcom/instagram/creation/video/f/aw;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/instagram/creation/video/ui/r;

.field private g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bf;-><init>()V

    .line 136
    new-instance v0, Lcom/instagram/creation/video/f/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/video/f/ba;-><init>(Lcom/instagram/creation/video/f/ar;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method private X()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->creation_secondary_actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 243
    sget v0, Lcom/facebook/av;->button_mode_trim:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    if-eqz v1, :cond_2

    move v2, v3

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v6, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-eq v1, v6, :cond_0

    if-eqz v2, :cond_3

    .line 246
    :cond_0
    sget v1, Lcom/facebook/au;->tab_trim_anim_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 251
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 252
    if-eqz v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    new-instance v2, Lcom/instagram/creation/video/f/au;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/au;-><init>(Lcom/instagram/creation/video/f/ar;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 262
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    aget v4, v1, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v6, v1, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    invoke-virtual {v2, v4, v0, v5}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a(IIF)V

    .line 267
    sget-object v0, Lcom/instagram/creation/video/ui/s;->e:Lcom/instagram/creation/video/ui/s;

    const/16 v2, 0x51

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->E()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aget v1, v1, v3

    sub-int v1, v4, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/ui/s;II)V

    .line 283
    :goto_2
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->s()Z

    .line 285
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 244
    goto :goto_0

    .line 248
    :cond_3
    sget v1, Lcom/facebook/au;->tab_trim_anim_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    aget v4, v1, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3eb851ec

    mul-float/2addr v1, v3

    invoke-virtual {v2, v4, v0, v1}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a(IIF)V

    .line 277
    sget-object v0, Lcom/instagram/creation/video/ui/s;->f:Lcom/instagram/creation/video/ui/s;

    const/16 v1, 0x31

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/ui/s;II)V

    goto :goto_2
.end method

.method private Y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    .line 300
    iput-object v2, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->setVisibility(I)V

    .line 304
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_mode_trim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    sget v1, Lcom/facebook/au;->tab_trim_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 307
    iput-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/aw;->c(Landroid/os/Bundle;)V

    .line 394
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/aw;->b()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;)Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 380
    sget-object v0, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    iget v0, v0, Lcom/instagram/creation/video/f/av;->d:I

    if-ne p1, v0, :cond_0

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(Z)V

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoEditFragment.EDIT_MODE"

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    iget v0, v0, Lcom/instagram/creation/video/f/av;->d:I

    if-ne p1, v0, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->ab()V

    goto :goto_0

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->aa()V

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Lcom/instagram/creation/video/f/av;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "VideoEditFragment.EDIT_MODE"

    iget v1, p1, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->ac()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ar;->a(I)V

    return-void
.end method

.method static a(Lcom/instagram/creation/video/f/av;)V
    .locals 3
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, "VideoEditFragment.EDIT_MODE"

    iget v2, p0, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    sget v1, Lcom/facebook/ba;->Tooltip_Popup:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V

    .line 293
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->E()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V

    .line 295
    :cond_1
    return-void
.end method

.method private aa()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 406
    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    .line 407
    new-instance v1, Lcom/instagram/creation/video/f/bb;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/bb;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    .line 408
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_0
.end method

.method private ab()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    .line 444
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 445
    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    .line 446
    new-instance v1, Lcom/instagram/creation/video/f/bi;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/bi;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    .line 447
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_0
.end method

.method private ac()V
    .locals 3

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    .line 456
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    .line 457
    sget v1, Lcom/facebook/av;->video_edit_fragment_container_back:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    .line 465
    :cond_0
    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->W()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    .line 482
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/k/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/k/a;->d(Lcom/instagram/creation/b/a/b;)V

    .line 484
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->ad()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/a;->a(Ljava/lang/String;Z)V

    .line 485
    return-void
.end method

.method private ad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static b()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/ar;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 422
    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    .line 424
    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    new-instance v1, Lcom/instagram/creation/video/f/am;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/am;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    .line 430
    if-eqz p1, :cond_2

    sget v0, Lcom/facebook/av;->video_edit_fragment_container_back:I

    .line 432
    :goto_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_0

    .line 427
    :cond_1
    new-instance v1, Lcom/instagram/creation/video/f/ao;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/ao;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    goto :goto_1

    .line 430
    :cond_2
    sget v0, Lcom/facebook/av;->video_edit_fragment_container_front:I

    goto :goto_2
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Y()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->F()V

    .line 329
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 330
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 332
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    invoke-static {v1, v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 336
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->G()V

    .line 341
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 342
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Y()V

    .line 343
    return-void
.end method

.method public final V()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 190
    sget v0, Lcom/facebook/aw;->fragment_video_edit:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 194
    sget v0, Lcom/facebook/av;->video_edit_actionbar_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 197
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v1

    .line 198
    if-eqz v1, :cond_0

    sget v1, Lcom/facebook/aw;->action_bar_video:I

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    return-object v2

    .line 198
    :cond_0
    sget v1, Lcom/facebook/aw;->action_bar_video_small:I

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/bf;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/as;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/as;-><init>(Lcom/instagram/creation/video/f/ar;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoEditFragment.EDIT_MODE"

    sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->W()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/c/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 352
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 356
    sget v0, Lcom/facebook/az;->processing:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/instagram/ui/dialog/f;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    .line 358
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    .line 361
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_2

    .line 362
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(Z)V

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    .line 365
    const-string v0, "VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME"

    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/instagram/creation/video/f/bf;->e(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/aw;->c(Landroid/os/Bundle;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const-string v0, "video_edit"

    return-object v0
.end method

.method public final m_()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->m_()V

    .line 324
    return-void
.end method
