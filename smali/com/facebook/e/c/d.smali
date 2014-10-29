.class final Lcom/facebook/e/c/d;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/e/c/d;",
            ">;"
        }
    .end annotation
.end field

.field static b:I

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final e:Landroid/support/v4/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/d",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcom/facebook/e/c/g;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/e/c/e;

    invoke-direct {v0}, Lcom/facebook/e/c/e;-><init>()V

    sput-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/facebook/e/c/d;->b:I

    .line 54
    new-instance v0, Lcom/facebook/e/c/f;

    invoke-direct {v0}, Lcom/facebook/e/c/f;-><init>()V

    sput-object v0, Lcom/facebook/e/c/d;->c:Ljava/util/Comparator;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    .line 79
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/facebook/e/c/g;

    iput-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    return-void
.end method

.method private a(J)I
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 451
    .line 452
    const/16 v1, 0xa

    new-array v1, v1, [I

    move-object v2, v1

    move v3, v0

    move v1, v0

    .line 454
    :goto_0
    iget v4, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v4, :cond_3

    .line 455
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v4, v4, v0

    .line 456
    if-eqz v4, :cond_1

    .line 457
    invoke-virtual {v4}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v5

    sget-object v6, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    if-ne v5, v6, :cond_2

    .line 460
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 461
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 463
    :cond_0
    aput v0, v2, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    .line 454
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v5

    sget-object v6, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    if-ne v5, v6, :cond_1

    .line 466
    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    .line 467
    add-int/lit8 v1, v1, -0x1

    .line 469
    invoke-virtual {v4}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-gtz v6, :cond_1

    .line 470
    iget-object v6, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v6, v6, v5

    .line 471
    invoke-virtual {v4}, Lcom/facebook/e/c/g;->a()V

    .line 472
    invoke-virtual {v6}, Lcom/facebook/e/c/g;->a()V

    .line 473
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v10, v4, v0

    .line 474
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v10, v4, v5

    .line 475
    iget v4, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/facebook/e/c/d;->h:I

    .line 476
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 481
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    return v3
.end method

.method private a(Lcom/facebook/e/c/g;)V
    .locals 3
    .parameter

    .prologue
    .line 551
    iget v0, p0, Lcom/facebook/e/c/d;->h:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-le v0, v1, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/facebook/e/c/d;->g()V

    .line 555
    :cond_0
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 557
    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/e/c/g;

    iput-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/e/c/d;->g:I

    aput-object p1, v0, v1

    .line 560
    return-void
.end method

.method private b(I)J
    .locals 6
    .parameter

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    .line 410
    const/16 v1, 0x5dc

    if-gt v0, v1, :cond_1

    .line 411
    const-wide/16 v0, -0x1

    .line 440
    :cond_0
    :goto_0
    return-wide v0

    .line 414
    :cond_1
    new-instance v1, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Lcom/facebook/e/c/d;->c:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 417
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v2, v2, v0

    .line 419
    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v3

    .line 423
    sget-object v4, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    if-ne v3, v4, :cond_2

    .line 424
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_3
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    add-int/lit16 v2, v0, -0x5dc

    .line 429
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 430
    const-wide/16 v0, 0x0

    .line 431
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/g;

    .line 433
    invoke-virtual {v0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 434
    add-int/lit8 v2, v2, -0x2

    .line 435
    goto :goto_2

    .line 436
    :cond_4
    if-lez v2, :cond_0

    .line 440
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 171
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v2, v2, v0

    .line 173
    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v3

    sget-object v4, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v3, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/c/d;->b(I)V

    .line 177
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->a()V

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iput v1, p0, Lcom/facebook/e/c/d;->g:I

    .line 181
    iput v1, p0, Lcom/facebook/e/c/d;->h:I

    .line 182
    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->b()V

    .line 183
    return-void
.end method

.method private c(I)I
    .locals 3
    .parameter

    .prologue
    .line 527
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    .line 529
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/e/c/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 533
    :goto_1
    return v0

    .line 527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 10

    .prologue
    const/16 v5, 0x7d0

    const/4 v1, 0x0

    const-wide/32 v8, 0xf4240

    .line 290
    .line 291
    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v2

    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v5, :cond_1

    .line 321
    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    .line 322
    sub-long v6, v4, v2

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v0, v4, v2

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/e/c/d;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    .line 302
    invoke-direct {p0}, Lcom/facebook/e/c/d;->e()I

    move-result v0

    add-int/2addr v1, v0

    .line 305
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    const/16 v4, 0x5dc

    if-le v0, v4, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/facebook/e/c/d;->f()I

    move-result v0

    add-int/2addr v1, v0

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 313
    const-string v0, "ThreadTrace"

    const-string v4, "Resetting because hit couldn\'t get under hard limit after normal pruning"

    invoke-static {v0, v4}, Lcom/facebook/e/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/e/c/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :goto_1
    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    .line 322
    sub-long v6, v4, v2

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    if-lez v1, :cond_0

    .line 323
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v0, v4, v2

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_0

    .line 317
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    .line 322
    sub-long v6, v4, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    if-lez v1, :cond_6

    .line 323
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v1, v4, v2

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    :cond_6
    throw v0
.end method

.method private d()I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v4

    move v0, v1

    move v2, v1

    move v3, v1

    .line 341
    :goto_0
    iget v6, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v6, :cond_3

    .line 342
    iget-object v6, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v6, v6, v0

    .line 343
    if-eqz v6, :cond_1

    .line 344
    invoke-virtual {v6}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v7

    .line 347
    sget-object v8, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    if-ne v7, v8, :cond_2

    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 354
    :cond_0
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide v8, 0x29e8d60800L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 355
    if-nez v3, :cond_1

    move v2, v0

    .line 341
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    sget-object v8, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    if-ne v7, v8, :cond_0

    .line 350
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 364
    :cond_3
    if-lez v2, :cond_5

    move v0, v1

    .line 365
    :goto_2
    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v1

    .line 367
    if-eqz v3, :cond_4

    .line 368
    invoke-virtual {v3}, Lcom/facebook/e/c/g;->a()V

    .line 369
    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 370
    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 375
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    return v0
.end method

.method private d(I)I
    .locals 3
    .parameter

    .prologue
    .line 537
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    .line 539
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/e/c/i;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 543
    :goto_1
    return v0

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private e()I
    .locals 4

    .prologue
    .line 391
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->b(I)J

    move-result-wide v0

    .line 392
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/e/c/d;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method private f()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 492
    .line 493
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v1

    add-int/lit16 v1, v1, -0x5dc

    move v2, v0

    .line 494
    :goto_0
    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v3, :cond_1

    .line 495
    if-lez v1, :cond_1

    .line 496
    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v0

    .line 499
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/e/c/g;->c()Lcom/facebook/e/c/i;

    move-result-object v4

    sget-object v5, Lcom/facebook/e/c/i;->e:Lcom/facebook/e/c/i;

    if-ne v4, v5, :cond_0

    .line 500
    invoke-virtual {v3}, Lcom/facebook/e/c/g;->a()V

    .line 501
    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 502
    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 504
    add-int/lit8 v1, v1, -0x1

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    return v2
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 512
    move v0, v1

    move v2, v1

    .line 514
    :goto_0
    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v2, v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v2

    .line 516
    if-eqz v3, :cond_0

    .line 517
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v3, v4, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 520
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 521
    goto :goto_0

    .line 522
    :cond_1
    iput v0, p0, Lcom/facebook/e/c/d;->g:I

    .line 523
    iput v1, p0, Lcom/facebook/e/c/d;->h:I

    .line 524
    return-void
.end method

.method private h()I
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    iget v1, p0, Lcom/facebook/e/c/d;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static i()I
    .locals 2

    .prologue
    .line 568
    sget-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 570
    :goto_0
    sget v1, Lcom/facebook/e/c/d;->b:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    sget-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    goto :goto_0

    .line 574
    :cond_1
    return v0
.end method


# virtual methods
.method final a(Ljava/lang/String;[Ljava/lang/Object;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/e/c/d;->c()V

    .line 95
    invoke-static {}, Lcom/facebook/e/c/d;->i()I

    move-result v0

    .line 96
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/e/c/g;->a(ILjava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/e/c/g;

    move-result-object v1

    .line 97
    invoke-direct {p0, v1}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    .line 98
    iget-object v2, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/c/d;->b(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v0

    return v0
.end method

.method final a()J
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    .line 233
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v0

    .line 237
    :goto_1
    return-wide v0

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method final a(IJZ)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v1

    .line 132
    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->f(I)I

    move-result v3

    .line 139
    if-gez v3, :cond_0

    .line 140
    const-wide/16 v0, -0x1

    .line 163
    :goto_0
    return-wide v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0, v3}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/g;

    .line 144
    iget-object v4, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v4, v3}, Landroid/support/v4/c/d;->c(I)V

    .line 147
    invoke-virtual {v0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 148
    const-wide/32 v3, 0x2dc6c0

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 149
    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    .line 150
    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 151
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v4, v4, v3

    .line 152
    if-ne v4, v0, :cond_2

    .line 153
    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 154
    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    .line 155
    invoke-virtual {v0}, Lcom/facebook/e/c/g;->a()V

    :cond_1
    :goto_2
    move-wide v0, v1

    .line 163
    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 160
    :cond_3
    invoke-static {v0}, Lcom/facebook/e/c/g;->a(Lcom/facebook/e/c/g;)Lcom/facebook/e/c/g;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    goto :goto_2
.end method

.method final a(I)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/facebook/e/c/d;->g()V

    .line 250
    invoke-direct {p0, p1}, Lcom/facebook/e/c/d;->c(I)I

    move-result v0

    .line 251
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/e/c/d;->d(I)I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method final a(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-static {p1, v0, p3, v1, v2}, Lcom/facebook/e/c/j;->a(IILjava/lang/String;Ljava/util/List;Landroid/support/v4/c/d;)V

    .line 283
    return-void
.end method

.method final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/facebook/e/c/d;->i()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/e/c/g;->a(ILjava/lang/String;[Ljava/lang/Object;)Lcom/facebook/e/c/g;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    .line 195
    return-void
.end method
