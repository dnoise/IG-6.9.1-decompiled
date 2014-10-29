.class public Lcom/facebook/f/a/a;
.super Ljava/lang/Object;
.source "AdvancedDragDetector.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/facebook/f/a/h;

.field private l:I

.field private m:Landroid/view/VelocityTracker;

.field private n:I

.field private o:Lcom/facebook/f/a/c;

.field private p:Lcom/facebook/f/a/d;

.field private q:Lcom/facebook/f/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/f/a/a;

    sput-object v0, Lcom/facebook/f/a/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget v0, Lcom/facebook/f/a/g;->b:I

    iput v0, p0, Lcom/facebook/f/a/a;->f:I

    .line 153
    iput v2, p0, Lcom/facebook/f/a/a;->g:F

    .line 154
    iput v2, p0, Lcom/facebook/f/a/a;->h:F

    .line 155
    iput v3, p0, Lcom/facebook/f/a/a;->i:F

    .line 156
    iput v3, p0, Lcom/facebook/f/a/a;->j:F

    .line 157
    iput-object v1, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    .line 165
    sget v0, Lcom/facebook/f/a/e;->a:I

    iput v0, p0, Lcom/facebook/f/a/a;->l:I

    .line 167
    iput-object v1, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/f/a/a;->n:I

    .line 170
    iput-object v1, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    .line 171
    iput-object v1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    .line 172
    iput-object v1, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/support/v4/view/az;->a(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/facebook/f/a/a;->b:I

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/facebook/f/a/a;->c:I

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/facebook/f/a/a;->d:I

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/facebook/f/a/a;->e:I

    .line 183
    return-void
.end method

.method private a(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f00

    .line 450
    invoke-direct {p0}, Lcom/facebook/f/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v0, p0, Lcom/facebook/f/a/a;->g:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 455
    iget v1, p0, Lcom/facebook/f/a/a;->h:F

    sub-float v1, p2, v1

    float-to-int v1, v1

    .line 456
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 457
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 459
    iget v4, p0, Lcom/facebook/f/a/a;->i:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/facebook/f/a/a;->i:F

    .line 460
    iget v4, p0, Lcom/facebook/f/a/a;->j:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/facebook/f/a/a;->j:F

    .line 462
    iget v4, p0, Lcom/facebook/f/a/a;->c:I

    if-le v3, v4, :cond_5

    iget v4, p0, Lcom/facebook/f/a/a;->f:I

    sget v5, Lcom/facebook/f/a/g;->b:I

    if-eq v4, v5, :cond_2

    int-to-float v4, v3

    mul-float/2addr v4, v6

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 466
    :cond_2
    if-gez v1, :cond_3

    invoke-direct {p0}, Lcom/facebook/f/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V

    goto :goto_0

    .line 468
    :cond_3
    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/facebook/f/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V

    goto :goto_0

    .line 471
    :cond_4
    invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V

    goto :goto_0

    .line 473
    :cond_5
    iget v1, p0, Lcom/facebook/f/a/a;->b:I

    if-le v2, v1, :cond_0

    iget v1, p0, Lcom/facebook/f/a/a;->f:I

    sget v4, Lcom/facebook/f/a/g;->a:I

    if-eq v1, v4, :cond_6

    int-to-float v1, v2

    mul-float/2addr v1, v6

    int-to-float v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 477
    :cond_6
    if-gez v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/f/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 478
    sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V

    goto :goto_0

    .line 479
    :cond_7
    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/facebook/f/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V

    goto :goto_0

    .line 482
    :cond_8
    invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V

    goto :goto_0
.end method

.method private a(FFLcom/facebook/f/a/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput p1, p0, Lcom/facebook/f/a/a;->g:F

    .line 408
    iput p2, p0, Lcom/facebook/f/a/a;->h:F

    .line 409
    iput-object p3, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    .line 410
    sget v0, Lcom/facebook/f/a/e;->c:I

    iput v0, p0, Lcom/facebook/f/a/a;->l:I

    .line 411
    iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    invoke-interface {v0}, Lcom/facebook/f/a/d;->a()Z

    .line 412
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget v0, p0, Lcom/facebook/f/a/a;->n:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/f/a/a;->n:I

    .line 200
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    iget v1, p0, Lcom/facebook/f/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z

    move-result v0

    return v0
.end method

.method private a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    invoke-interface {v0, p1}, Lcom/facebook/f/a/c;->a(F)Z

    move-result v0

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private varargs b([Lcom/facebook/f/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 204
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 205
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/facebook/f/a/h;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/f/a/a;->a(I)V

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    iget v1, p0, Lcom/facebook/f/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    iget v1, p0, Lcom/facebook/f/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    iget v1, p0, Lcom/facebook/f/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/facebook/f/a/a;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/facebook/f/a/a;->l:I

    sget v1, Lcom/facebook/f/a/e;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/facebook/f/a/a;->l:I

    sget v1, Lcom/facebook/f/a/e;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/facebook/f/a/a;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/f/a/a;->c:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/f/a/a;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/f/a/a;->c:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    const/high16 v0, -0x4080

    .line 417
    iput v0, p0, Lcom/facebook/f/a/a;->g:F

    .line 418
    iput v0, p0, Lcom/facebook/f/a/a;->h:F

    .line 419
    sget v0, Lcom/facebook/f/a/e;->d:I

    iput v0, p0, Lcom/facebook/f/a/a;->l:I

    .line 420
    iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 425
    :cond_0
    return-void
.end method

.method private j()Lcom/facebook/f/a/h;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    .line 446
    :goto_0
    return-object v0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/facebook/f/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/facebook/f/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    goto :goto_0

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/facebook/f/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    goto :goto_0

    .line 446
    :cond_3
    sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/f/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;

    .line 216
    return-void
.end method

.method public final a(Lcom/facebook/f/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    .line 220
    return-void
.end method

.method public final a(Lcom/facebook/f/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    .line 224
    return-void
.end method

.method public final varargs a([Lcom/facebook/f/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/f/a/a;->n:I

    .line 191
    invoke-direct {p0, p1}, Lcom/facebook/f/a/a;->b([Lcom/facebook/f/a/h;)V

    .line 192
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 255
    iget-object v1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/f/a/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 264
    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z

    move-result v0

    goto :goto_0

    .line 266
    :pswitch_0
    sget v1, Lcom/facebook/f/a/e;->b:I

    iput v1, p0, Lcom/facebook/f/a/a;->l:I

    .line 267
    iput v4, p0, Lcom/facebook/f/a/a;->i:F

    .line 268
    iput v4, p0, Lcom/facebook/f/a/a;->j:F

    .line 270
    invoke-direct {p0, v3}, Lcom/facebook/f/a/a;->a(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V

    goto :goto_0

    .line 275
    :cond_3
    iput v2, p0, Lcom/facebook/f/a/a;->g:F

    .line 276
    iput v3, p0, Lcom/facebook/f/a/a;->h:F

    .line 278
    invoke-direct {p0}, Lcom/facebook/f/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/facebook/f/a/a;->j()Lcom/facebook/f/a/h;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V

    goto :goto_1

    .line 283
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/facebook/f/a/a;->a(FF)V

    goto :goto_1

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/f/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/f/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    invoke-interface {v0, v2, v3}, Lcom/facebook/f/a/f;->a(FF)Z

    move-result v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 304
    invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/facebook/f/a/a;->a(Landroid/view/MotionEvent;)Z

    .line 314
    sget-object v2, Lcom/facebook/f/a/b;->a:[I

    iget v3, p0, Lcom/facebook/f/a/a;->l:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 392
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/facebook/f/a/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 327
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 336
    packed-switch v0, :pswitch_data_1

    :goto_1
    move v0, v1

    .line 392
    goto :goto_0

    .line 338
    :pswitch_1
    iget v0, p0, Lcom/facebook/f/a/a;->g:F

    sub-float v0, v2, v0

    .line 339
    iget v4, p0, Lcom/facebook/f/a/a;->h:F

    sub-float v4, v3, v4

    .line 340
    iput v2, p0, Lcom/facebook/f/a/a;->g:F

    .line 341
    iput v3, p0, Lcom/facebook/f/a/a;->h:F

    .line 342
    iget v2, p0, Lcom/facebook/f/a/a;->i:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/facebook/f/a/a;->i:F

    .line 343
    iget v2, p0, Lcom/facebook/f/a/a;->j:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/facebook/f/a/a;->j:F

    .line 345
    iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    invoke-virtual {v2}, Lcom/facebook/f/a/h;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    cmpg-float v3, v4, v5

    if-gez v3, :cond_3

    sget-object v3, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    :goto_2
    invoke-interface {v2, v0}, Lcom/facebook/f/a/d;->b(F)V

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    goto :goto_2

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    cmpg-float v3, v0, v5

    if-gez v3, :cond_5

    sget-object v3, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    :goto_3
    invoke-interface {v2, v0}, Lcom/facebook/f/a/d;->b(F)V

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    goto :goto_3

    .line 353
    :pswitch_2
    iget-object v4, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;

    .line 355
    const/16 v0, 0x3e8

    iget v5, p0, Lcom/facebook/f/a/a;->e:I

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 358
    iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    invoke-virtual {v0}, Lcom/facebook/f/a/h;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 359
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 364
    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/facebook/f/a/a;->d:I

    if-le v5, v6, :cond_b

    .line 366
    if-gez v0, :cond_9

    .line 368
    iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    invoke-virtual {v2}, Lcom/facebook/f/a/h;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    :goto_5
    invoke-interface {v0}, Lcom/facebook/f/a/d;->c()V

    .line 390
    :cond_6
    :goto_6
    sget v0, Lcom/facebook/f/a/e;->a:I

    iput v0, p0, Lcom/facebook/f/a/a;->l:I

    .line 391
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    goto :goto_1

    .line 361
    :cond_7
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_4

    .line 368
    :cond_8
    sget-object v2, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;

    goto :goto_5

    .line 373
    :cond_9
    if-lez v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;

    invoke-virtual {v2}, Lcom/facebook/f/a/h;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    :goto_7
    invoke-interface {v0}, Lcom/facebook/f/a/d;->c()V

    goto :goto_6

    :cond_a
    sget-object v2, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;

    goto :goto_7

    .line 383
    :cond_b
    iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/facebook/f/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 384
    iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;

    invoke-interface {v0, v2, v3}, Lcom/facebook/f/a/f;->b(FF)V

    goto :goto_6

    .line 386
    :cond_c
    iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;

    invoke-interface {v0}, Lcom/facebook/f/a/d;->b()V

    goto :goto_6

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
