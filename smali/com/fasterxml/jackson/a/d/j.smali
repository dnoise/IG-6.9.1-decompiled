.class public final Lcom/fasterxml/jackson/a/d/j;
.super Lcom/fasterxml/jackson/a/a/c;
.source "UTF8StreamJsonParser.java"


# static fields
.field private static final Q:[I

.field private static final R:[I


# instance fields
.field protected J:Lcom/fasterxml/jackson/a/s;

.field protected final K:Lcom/fasterxml/jackson/a/e/a;

.field protected L:[I

.field protected M:Z

.field protected N:Ljava/io/InputStream;

.field protected O:[B

.field protected P:Z

.field private S:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->b()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    .line 27
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->a()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/j;->R:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/InputStream;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;[BIIZ)V
    .locals 1
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
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/c;-><init>(Lcom/fasterxml/jackson/a/c/d;I)V

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 112
    iput-object p3, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    .line 113
    iput-object p4, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    .line 114
    iput-object p5, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    .line 115
    iput-object p6, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 116
    iput p7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 117
    iput p8, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 118
    iput-boolean p9, p0, Lcom/fasterxml/jackson/a/d/j;->P:Z

    .line 119
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;[B)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x22

    const/4 v8, -0x2

    const/4 v1, 0x0

    .line 467
    .line 468
    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    .line 475
    :cond_0
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v3, v4, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    .line 479
    const/16 v3, 0x20

    if-le v4, v3, :cond_0

    .line 480
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v3

    .line 481
    if-gez v3, :cond_2

    .line 482
    if-eq v4, v9, :cond_6

    .line 483
    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v3

    .line 486
    if-ltz v3, :cond_0

    :cond_2
    move v4, v3

    .line 487
    if-le v2, v5, :cond_11

    .line 493
    add-int/2addr v0, v2

    .line 494
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 502
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_3

    .line 503
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 506
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    .line 507
    if-gez v2, :cond_4

    .line 508
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    .line 510
    :cond_4
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 513
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_5

    .line 514
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 516
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 517
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    .line 520
    if-gez v2, :cond_c

    .line 521
    if-eq v2, v8, :cond_9

    .line 523
    if-ne v6, v9, :cond_8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 524
    shr-int/lit8 v4, v4, 0x4

    .line 525
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 583
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 584
    if-lez v2, :cond_7

    .line 585
    add-int/2addr v0, v2

    .line 586
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    :cond_7
    return v0

    .line 528
    :cond_8
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    .line 530
    :cond_9
    if-ne v2, v8, :cond_c

    .line 532
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_a

    .line 533
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 535
    :cond_a
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    .line 536
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected padding character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v10, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 540
    :cond_b
    shr-int/lit8 v4, v4, 0x4

    .line 541
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    .line 546
    :cond_c
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 548
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_d

    .line 549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 551
    :cond_d
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 552
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    .line 553
    if-gez v2, :cond_10

    .line 554
    if-eq v2, v8, :cond_f

    .line 556
    if-ne v6, v9, :cond_e

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_e

    .line 557
    shr-int/lit8 v4, v4, 0x2

    .line 558
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 559
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_2

    .line 562
    :cond_e
    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    .line 564
    :cond_f
    if-ne v2, v8, :cond_10

    .line 571
    shr-int/lit8 v4, v4, 0x2

    .line 572
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 573
    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_0

    .line 578
    :cond_10
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 579
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 580
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 581
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    :cond_11
    move v3, v2

    goto/16 :goto_1
.end method

.method private a(II)Lcom/fasterxml/jackson/a/e/f;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e/a;->a(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1901
    if-eqz v0, :cond_0

    .line 1906
    :goto_0
    return-object v0

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1906
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method private a(III)Lcom/fasterxml/jackson/a/e/f;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)Lcom/fasterxml/jackson/a/e/f;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1600
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method private a(I[I)Lcom/fasterxml/jackson/a/e/f;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 1473
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1474
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 1475
    if-ne v0, v4, :cond_0

    .line 1476
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v0, p1, v5}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1506
    :goto_0
    return-object v0

    .line 1478
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1480
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 1481
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1482
    aget v2, p2, v1

    if-eqz v2, :cond_3

    .line 1483
    if-ne v1, v4, :cond_2

    .line 1484
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1486
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v6}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1488
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1489
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1490
    aget v2, p2, v1

    if-eqz v2, :cond_5

    .line 1491
    if-ne v1, v4, :cond_4

    .line 1492
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1494
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1496
    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1497
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1498
    aget v2, p2, v1

    if-eqz v2, :cond_7

    .line 1499
    if-ne v1, v4, :cond_6

    .line 1500
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1502
    :cond_6
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1504
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    aput v4, v2, v3

    .line 1505
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    aput v0, v2, v5

    .line 1506
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->d(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method private a([III)Lcom/fasterxml/jackson/a/e/f;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1951
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1960
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 1961
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1963
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1969
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v1

    .line 1970
    const/4 v5, 0x0

    .line 1972
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 1973
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1974
    and-int/lit8 v4, v3, 0x3

    .line 1975
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1976
    add-int/lit8 v3, v3, 0x1

    .line 1978
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 1980
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 1981
    and-int/lit8 v4, v2, 0x1f

    .line 1982
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1993
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 1994
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1998
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1999
    and-int/lit8 v8, v3, 0x3

    .line 2000
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2001
    add-int/lit8 v3, v3, 0x1

    .line 2003
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 2004
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2006
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2007
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 2008
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2009
    and-int/lit8 v8, v3, 0x3

    .line 2010
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2011
    add-int/lit8 v3, v3, 0x1

    .line 2013
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 2014
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2016
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2017
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 2018
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2019
    and-int/lit8 v8, v3, 0x3

    .line 2020
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2021
    add-int/lit8 v3, v3, 0x1

    .line 2022
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 2023
    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2025
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2028
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 2029
    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    .line 2030
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 2031
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->m()[C

    move-result-object v1

    .line 2033
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 2034
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 2037
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 2038
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/a/g/o;->m()[C

    move-result-object v4

    .line 2040
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 2041
    goto/16 :goto_1

    .line 1965
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1983
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 1984
    and-int/lit8 v4, v2, 0xf

    .line 1985
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1986
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 1987
    and-int/lit8 v4, v2, 0x7

    .line 1988
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1990
    :cond_a
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    .line 1991
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 2044
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2046
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 2047
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 2049
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a(Ljava/lang/String;[II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private a([IIII)Lcom/fasterxml/jackson/a/e/f;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1926
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1927
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1929
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1930
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1931
    if-nez v0, :cond_1

    .line 1932
    invoke-direct {p0, p1, v1, p4}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1934
    :cond_1
    return-object v0
.end method

.method private a([IIIII)Lcom/fasterxml/jackson/a/e/f;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1619
    sget-object v5, Lcom/fasterxml/jackson/a/d/j;->R:[I

    .line 1622
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    .line 1623
    const/16 v0, 0x22

    if-eq p4, v0, :cond_7

    .line 1624
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_2

    .line 1629
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1639
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    .line 1641
    if-lt p5, v7, :cond_c

    .line 1642
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1643
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1645
    :cond_0
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1649
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_3

    .line 1650
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1651
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1669
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1673
    :goto_4
    if-ge p5, v7, :cond_5

    .line 1674
    add-int/lit8 p5, p5, 0x1

    .line 1675
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1684
    :goto_5
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1689
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_0

    .line 1632
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result p4

    goto :goto_1

    .line 1654
    :cond_3
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1655
    add-int/lit8 v2, p5, 0x1

    .line 1657
    if-lt v2, v7, :cond_b

    .line 1658
    array-length v2, v0

    if-lt v4, v2, :cond_4

    .line 1659
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1661
    :cond_4
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1665
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1666
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 1677
    :cond_5
    array-length v2, v0

    if-lt p2, v2, :cond_6

    .line 1678
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1680
    :cond_6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1682
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    .line 1692
    :cond_7
    if-lez p5, :cond_9

    .line 1693
    array-length v0, p1

    if-lt p2, v0, :cond_8

    .line 1694
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1696
    :cond_8
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1698
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1699
    if-nez v0, :cond_a

    .line 1700
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1702
    :cond_a
    return-object v0

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto/16 :goto_4
.end method

.method private a(I)Lcom/fasterxml/jackson/a/r;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 737
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 738
    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 739
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 779
    :goto_0
    return-object v0

    .line 741
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 779
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 743
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 744
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 746
    :sswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 747
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 752
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 754
    :sswitch_3
    const-string v0, "true"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 755
    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 757
    :sswitch_4
    const-string v0, "false"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 758
    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 760
    :sswitch_5
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 761
    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 777
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private a(IZ)Lcom/fasterxml/jackson/a/r;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2381
    move v0, p1

    :goto_0
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    .line 2382
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2383
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2384
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOFInValue()V

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v0, v1

    .line 2389
    const/16 v0, 0x4e

    if-ne v1, v0, :cond_2

    .line 2390
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 2396
    :goto_1
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 2397
    sget-object v2, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2398
    if-eqz p2, :cond_4

    const-wide/high16 v1, -0x10

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 2403
    :goto_3
    return-object v0

    .line 2390
    :cond_1
    const-string v0, "+INF"

    goto :goto_1

    .line 2391
    :cond_2
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_6

    .line 2392
    if-eqz p2, :cond_3

    const-string v0, "-Infinity"

    goto :goto_1

    :cond_3
    const-string v0, "+Infinity"

    goto :goto_1

    .line 2398
    :cond_4
    const-wide/high16 v1, 0x7ff0

    goto :goto_2

    .line 2400
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-standard token \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    move v0, v1

    .line 2401
    goto :goto_0

    :cond_6
    move v0, v1

    .line 2402
    :cond_7
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    .line 2403
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private a([CIIZI)Lcom/fasterxml/jackson/a/r;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1314
    const/4 v0, 0x0

    .line 1315
    const/4 v4, 0x0

    .line 1318
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_11

    .line 1319
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1323
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1324
    const/4 v4, 0x1

    .line 1339
    :cond_0
    if-nez v0, :cond_1

    .line 1340
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    :cond_1
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 1344
    :goto_1
    const/4 v3, 0x0

    .line 1345
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2

    const/16 v2, 0x45

    if-ne p3, v2, :cond_f

    .line 1346
    :cond_2
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    .line 1348
    const/4 v0, 0x0

    .line 1350
    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 1352
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v5, :cond_4

    .line 1353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 1355
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1357
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_5

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    .line 1358
    :cond_5
    array-length v0, v1

    if-lt v2, v0, :cond_d

    .line 1359
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    .line 1360
    const/4 v0, 0x0

    .line 1362
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1364
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v5, :cond_6

    .line 1365
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 1367
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 1371
    :goto_3
    const/16 v3, 0x39

    if-gt v5, v3, :cond_c

    const/16 v3, 0x30

    if-lt v5, v3, :cond_c

    .line 1372
    add-int/lit8 v2, v2, 0x1

    .line 1373
    array-length v3, v1

    if-lt v0, v3, :cond_7

    .line 1374
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    .line 1375
    const/4 v0, 0x0

    .line 1377
    :cond_7
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 1378
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v7, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v7, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1379
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 1385
    :goto_4
    if-nez v0, :cond_8

    .line 1386
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    .line 1391
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 1392
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 1394
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 1397
    invoke-virtual {p0, p4, p5, v6, v0}, Lcom/fasterxml/jackson/a/d/j;->b(ZIII)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_a
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1328
    const/16 v2, 0x30

    if-lt p3, v2, :cond_0

    const/16 v2, 0x39

    if-gt p3, v2, :cond_0

    .line 1329
    add-int/lit8 v0, v0, 0x1

    .line 1332
    array-length v2, p1

    if-lt v1, v2, :cond_10

    .line 1333
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    .line 1334
    const/4 v1, 0x0

    move v2, v1

    .line 1336
    :goto_6
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    .line 1382
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_3

    :cond_c
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    move v2, v3

    goto/16 :goto_3

    :cond_f
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_10
    move v2, v1

    goto :goto_6

    :cond_11
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_1
.end method

.method private a([CIZI)Lcom/fasterxml/jackson/a/r;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1247
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 1249
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 1269
    :goto_1
    return-object v0

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1252
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 1253
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 1254
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 1258
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    .line 1259
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    .line 1260
    const/4 v2, 0x0

    move v0, v2

    .line 1262
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 1263
    add-int/lit8 v5, v5, 0x1

    .line 1264
    goto :goto_0

    .line 1265
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 1266
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 1269
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private a(Lcom/fasterxml/jackson/a/r;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 312
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/a/d/k;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/r;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2409
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2412
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2414
    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(Ljava/lang/String;)V

    .line 2416
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2417
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2420
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2432
    :cond_4
    :goto_0
    return-void

    .line 2423
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2424
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    .line 2428
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v0

    int-to-char v0, v0

    .line 2429
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2430
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2450
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2451
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2454
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v1

    int-to-char v1, v1

    .line 2455
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2460
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    .line 2461
    return-void
.end method

.method private a([CI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2097
    sget-object v4, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    .line 2098
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 2105
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2106
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_0

    .line 2107
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2108
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2110
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 2111
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move p2, v1

    .line 2114
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2115
    :goto_1
    if-ge v0, v6, :cond_3

    .line 2116
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 2117
    aget v3, v4, v0

    if-eqz v3, :cond_2

    .line 2118
    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2126
    const/16 v2, 0x22

    if-eq v0, v2, :cond_7

    .line 2127
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    .line 2156
    const/16 v2, 0x20

    if-ge v0, v2, :cond_6

    .line 2158
    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2165
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    .line 2166
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move v2, v1

    .line 2170
    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    .line 2121
    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    .line 2123
    :cond_3
    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    goto :goto_0

    .line 2132
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v0

    goto :goto_2

    .line 2135
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->h(I)I

    move-result v0

    goto :goto_2

    .line 2138
    :pswitch_2
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 2139
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->j(I)I

    move-result v0

    goto :goto_2

    .line 2141
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->i(I)I

    move-result v0

    goto :goto_2

    .line 2145
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->k(I)I

    move-result v2

    .line 2147
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 2148
    array-length v3, p1

    if-lt v0, v3, :cond_5

    .line 2149
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move v0, v1

    .line 2152
    :cond_5
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 2154
    goto :goto_2

    .line 2161
    :cond_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_2

    .line 2172
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 2173
    return-void

    :cond_8
    move v2, p2

    goto :goto_3

    .line 2127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(ILcom/fasterxml/jackson/a/u;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 977
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->c(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    .line 982
    invoke-interface {p2}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 984
    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 985
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 986
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    .line 987
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 992
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 993
    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 994
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 1039
    :goto_0
    return v0

    .line 999
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1036
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 1038
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 1039
    goto :goto_0

    .line 1001
    :sswitch_0
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 1004
    :sswitch_1
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 1008
    :sswitch_2
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1010
    :sswitch_3
    const-string v0, "true"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 1011
    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 1014
    :sswitch_4
    const-string v0, "false"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 1015
    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 1018
    :sswitch_5
    const-string v0, "null"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 1019
    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 1033
    :sswitch_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 999
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lcom/fasterxml/jackson/a/a;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 3050
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->f()Lcom/fasterxml/jackson/a/g/d;

    move-result-object v2

    .line 3057
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_1

    .line 3058
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 3060
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 3061
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 3062
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    .line 3063
    if-gez v0, :cond_3

    .line 3064
    if-ne v1, v6, :cond_2

    .line 3065
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    .line 3133
    :goto_1
    return-object v0

    .line 3067
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    .line 3068
    if-ltz v0, :cond_0

    .line 3076
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v3, :cond_4

    .line 3077
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 3079
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 3080
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v1

    .line 3081
    if-gez v1, :cond_5

    .line 3082
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v1

    .line 3084
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 3087
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_6

    .line 3088
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 3090
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3091
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    .line 3094
    if-gez v0, :cond_b

    .line 3095
    if-eq v0, v5, :cond_8

    .line 3097
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3098
    shr-int/lit8 v0, v1, 0x4

    .line 3099
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    .line 3100
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    goto :goto_1

    .line 3102
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    .line 3104
    :cond_8
    if-ne v0, v5, :cond_b

    .line 3106
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_9

    .line 3107
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 3109
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 3110
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v7, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3114
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 3115
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    goto/16 :goto_0

    .line 3120
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 3122
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_c

    .line 3123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 3125
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3126
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    .line 3127
    if-gez v0, :cond_f

    .line 3128
    if-eq v0, v5, :cond_e

    .line 3130
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3131
    shr-int/lit8 v0, v1, 0x2

    .line 3132
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    .line 3133
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    goto/16 :goto_1

    .line 3135
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    .line 3137
    :cond_e
    if-ne v0, v5, :cond_f

    .line 3144
    shr-int/lit8 v0, v1, 0x2

    .line 3145
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    goto/16 :goto_0

    .line 3150
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 3151
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->c(I)V

    goto/16 :goto_0
.end method

.method private static a([II)[I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3027
    if-nez p0, :cond_0

    .line 3028
    new-array v0, p1, [I

    .line 3034
    :goto_0
    return-object v0

    .line 3031
    :cond_0
    array-length v1, p0

    .line 3032
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 3033
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private b(III)Lcom/fasterxml/jackson/a/e/f;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1914
    if-eqz v0, :cond_0

    .line 1920
    :goto_0
    return-object v0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1919
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1920
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)Lcom/fasterxml/jackson/a/r;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x39

    const/16 v2, 0x2d

    const/16 v9, 0x30

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1176
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v1

    .line 1178
    if-ne p1, v2, :cond_2

    move v4, v5

    .line 1181
    :goto_0
    if-eqz v4, :cond_b

    .line 1182
    aput-char v2, v1, v7

    .line 1184
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1189
    if-lt v0, v9, :cond_1

    if-le v0, v10, :cond_3

    .line 1190
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/a/d/j;->a(IZ)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 1234
    :goto_1
    return-object v0

    :cond_2
    move v4, v7

    .line 1178
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1195
    :goto_2
    if-ne v0, v9, :cond_4

    .line 1196
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->j()I

    move-result v0

    .line 1200
    :cond_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 1204
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 1205
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-le v0, v3, :cond_5

    .line 1206
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 1211
    :cond_5
    :goto_3
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-lt v3, v0, :cond_6

    .line 1213
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 1215
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1216
    if-lt v3, v9, :cond_7

    if-gt v3, v10, :cond_7

    .line 1217
    add-int/lit8 v5, v5, 0x1

    .line 1220
    array-length v6, v1

    if-lt v2, v6, :cond_a

    .line 1221
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    move v6, v7

    .line 1224
    :goto_4
    add-int/lit8 v2, v6, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v6

    goto :goto_3

    .line 1226
    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_9

    :cond_8
    move-object v0, p0

    .line 1227
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 1230
    :cond_9
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 1231
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 1234
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    :cond_a
    move v6, v2

    goto :goto_4

    :cond_b
    move v3, v7

    move v0, p1

    goto :goto_2
.end method

.method private b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3021
    iput p2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 3022
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 3023
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2437
    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    return-void
.end method

.method private c(I)Lcom/fasterxml/jackson/a/e/f;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 1409
    if-eq p1, v5, :cond_0

    .line 1410
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->e(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1466
    :goto_0
    return-object v0

    .line 1413
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-le v0, v1, :cond_1

    .line 1414
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->k()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 1424
    sget-object v1, Lcom/fasterxml/jackson/a/d/j;->R:[I

    .line 1426
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1428
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 1429
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1430
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 1431
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1432
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1433
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 1434
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1435
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1436
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 1437
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1438
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1439
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 1440
    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    .line 1441
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(I[I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1443
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1444
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1446
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1448
    :cond_4
    if-ne v3, v5, :cond_5

    .line 1449
    invoke-direct {p0, v2, v8}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0

    .line 1451
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1453
    :cond_6
    if-ne v3, v5, :cond_7

    .line 1454
    invoke-direct {p0, v2, v7}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1456
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1458
    :cond_8
    if-ne v3, v5, :cond_9

    .line 1459
    invoke-direct {p0, v2, v6}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1461
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1463
    :cond_a
    if-ne v2, v5, :cond_b

    .line 1464
    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1466
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private d(I)Lcom/fasterxml/jackson/a/e/f;
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 1513
    sget-object v1, Lcom/fasterxml/jackson/a/d/j;->R:[I

    move v2, v5

    move v4, p1

    .line 1521
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1558
    :goto_1
    return-object v0

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 1527
    aget v0, v1, v9

    if-eqz v0, :cond_2

    .line 1528
    if-ne v9, v8, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1531
    :cond_1
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1534
    :cond_2
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 1535
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1536
    aget v0, v1, v4

    if-eqz v0, :cond_4

    .line 1537
    if-ne v4, v8, :cond_3

    .line 1538
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1540
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1543
    :cond_4
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1544
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1545
    aget v0, v1, v4

    if-eqz v0, :cond_6

    .line 1546
    if-ne v4, v8, :cond_5

    .line 1547
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1549
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1

    .line 1552
    :cond_6
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1553
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1554
    aget v0, v1, v4

    if-eqz v0, :cond_8

    .line 1555
    if-ne v4, v8, :cond_7

    .line 1556
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_1

    .line 1558
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_1

    .line 1562
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 1563
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1565
    :cond_9
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 1567
    goto/16 :goto_0
.end method

.method private e(I)Lcom/fasterxml/jackson/a/e/f;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1715
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->l()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1776
    :goto_0
    return-object v0

    .line 1719
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/a/n;->c:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1720
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1726
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->d()[I

    move-result-object v6

    .line 1728
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 1729
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1736
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1743
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_4

    .line 1744
    add-int/lit8 v1, v1, 0x1

    .line 1745
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1754
    :goto_2
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v4, v5, :cond_3

    .line 1755
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1756
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1759
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 1760
    aget v4, v6, p1

    if-nez v4, :cond_6

    .line 1761
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    .line 1747
    :cond_4
    array-length v1, v0

    if-lt v3, v1, :cond_5

    .line 1748
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1750
    :cond_5
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1752
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 1766
    :cond_6
    if-lez v0, :cond_8

    .line 1767
    array-length v4, v3

    if-lt v2, v4, :cond_7

    .line 1768
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1770
    :cond_7
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1772
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v1

    .line 1773
    if-nez v1, :cond_9

    .line 1774
    invoke-direct {p0, v3, v2, v0}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private f(I)Lcom/fasterxml/jackson/a/r;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2249
    sparse-switch p1, :sswitch_data_0

    .line 2278
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2279
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2251
    :sswitch_0
    sget-object v0, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->n()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 2256
    :sswitch_1
    const-string v0, "NaN"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 2257
    sget-object v0, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2258
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 2260
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2263
    :sswitch_2
    const-string v0, "Infinity"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 2264
    sget-object v0, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2265
    const-string v0, "Infinity"

    const-wide/high16 v1, 0x7ff0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 2267
    :cond_2
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2270
    :sswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_3

    .line 2271
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2272
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOFInValue()V

    .line 2275
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(IZ)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 2249
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method private g(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 2752
    .line 2753
    if-gez p1, :cond_3

    .line 2757
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    .line 2758
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2772
    :goto_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v3

    .line 2773
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_0

    .line 2774
    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2776
    :cond_0
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2778
    if-le v0, v1, :cond_3

    .line 2779
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v1

    .line 2780
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 2781
    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2783
    :cond_1
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2784
    if-le v0, v2, :cond_3

    .line 2785
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v0

    .line 2786
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_2

    .line 2787
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    .line 2789
    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2793
    :cond_3
    return p1

    .line 2760
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_5

    .line 2761
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 2762
    goto :goto_0

    .line 2763
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_6

    .line 2765
    and-int/lit8 p1, p1, 0x7

    .line 2766
    const/4 v0, 0x3

    goto :goto_0

    .line 2768
    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    move v0, v1

    .line 2769
    goto :goto_0
.end method

.method private h(I)I
    .locals 3
    .parameter

    .prologue
    .line 2805
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2809
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2810
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2812
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private h()Lcom/fasterxml/jackson/a/r;
    .locals 4

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 785
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 786
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 788
    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 793
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    return-object v0

    .line 790
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0
.end method

.method private i(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2818
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2821
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 2822
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2823
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2824
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2826
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2827
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_2

    .line 2828
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2830
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2831
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2832
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2834
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2835
    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 905
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    .line 906
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 907
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 908
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 909
    iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 910
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 970
    :goto_0
    return-void

    .line 913
    :cond_0
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 914
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 917
    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 918
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 921
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 922
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4

    .line 923
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 924
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 929
    :cond_4
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 969
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 927
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->q()I

    move-result v0

    goto :goto_1

    .line 931
    :sswitch_0
    iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 932
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 935
    :sswitch_1
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 938
    :sswitch_2
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 942
    :sswitch_3
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 944
    :sswitch_4
    const-string v0, "true"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 945
    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 948
    :sswitch_5
    const-string v0, "false"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 949
    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 952
    :sswitch_6
    const-string v0, "null"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 953
    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 966
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method private j()I
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1281
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1286
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1287
    goto :goto_0

    .line 1290
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/a/n;->g:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1291
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;)V

    .line 1294
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 1295
    if-ne v0, v1, :cond_0

    .line 1296
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1297
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1298
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1299
    goto :goto_0

    .line 1301
    :cond_8
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 1302
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private j(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2841
    and-int/lit8 v0, p1, 0xf

    .line 2842
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2843
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 2844
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2846
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2847
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2848
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2849
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2851
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2852
    return v0
.end method

.method private k(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2862
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2863
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2866
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2867
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2869
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2871
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_2

    .line 2872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2874
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2875
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2876
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2878
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2879
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_4

    .line 2880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2882
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2883
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 2884
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2890
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private k()Lcom/fasterxml/jackson/a/e/f;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1578
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 1579
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1584
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 1585
    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1587
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method private l()Lcom/fasterxml/jackson/a/e/f;
    .locals 12

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 1787
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 1793
    if-ne v5, v10, :cond_1

    .line 1794
    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 1887
    :goto_0
    return-object v0

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1803
    sget-object v7, Lcom/fasterxml/jackson/a/d/j;->R:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1806
    :goto_1
    if-eq v5, v10, :cond_9

    .line 1807
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    .line 1811
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    .line 1814
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1824
    :goto_2
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    .line 1826
    if-lt v3, v9, :cond_e

    .line 1827
    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 1828
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1830
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1834
    :goto_3
    const/16 v6, 0x800

    if-ge v5, v6, :cond_5

    .line 1835
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1836
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 1854
    :goto_4
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1858
    :goto_5
    if-ge v2, v9, :cond_7

    .line 1859
    add-int/lit8 v2, v2, 0x1

    .line 1860
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 1869
    :goto_6
    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v5, v6, :cond_3

    .line 1870
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1871
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1874
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto :goto_1

    .line 1817
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v5

    goto :goto_2

    .line 1839
    :cond_5
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1840
    add-int/lit8 v2, v2, 0x1

    .line 1842
    if-lt v2, v9, :cond_d

    .line 1843
    array-length v2, v0

    if-lt v4, v2, :cond_6

    .line 1844
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1846
    :cond_6
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1850
    :goto_7
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1851
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_4

    .line 1862
    :cond_7
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1863
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1865
    :cond_8
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1867
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_6

    .line 1877
    :cond_9
    if-lez v3, :cond_c

    .line 1878
    array-length v1, v0

    if-lt v2, v1, :cond_a

    .line 1879
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    .line 1881
    :cond_a
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 1883
    :goto_8
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v2

    .line 1884
    if-nez v2, :cond_b

    .line 1885
    invoke-direct {p0, v1, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto :goto_8

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_7

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_3

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_5
.end method

.method private l(I)V
    .locals 1
    .parameter

    .prologue
    .line 3000
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 3001
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    .line 3003
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    .line 3004
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    .line 2183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 2186
    sget-object v3, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    .line 2187
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 2195
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2196
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 2197
    if-lt v1, v0, :cond_0

    .line 2198
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2199
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2200
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 2202
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2203
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 2204
    aget v5, v3, v1

    if-eqz v5, :cond_4

    .line 2205
    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2212
    const/16 v0, 0x22

    if-eq v1, v0, :cond_3

    .line 2213
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 2230
    const/16 v0, 0x20

    if-ge v1, v0, :cond_2

    .line 2232
    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2209
    :cond_1
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    goto :goto_0

    .line 2218
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    goto :goto_0

    .line 2221
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_0

    .line 2224
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_0

    .line 2227
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_0

    .line 2235
    :cond_2
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_0

    .line 2239
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1

    .line 2213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private m(I)V
    .locals 2
    .parameter

    .prologue
    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    .line 3010
    return-void
.end method

.method private n()Lcom/fasterxml/jackson/a/r;
    .locals 10

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 2285
    .line 2288
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v0

    .line 2291
    sget-object v6, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    .line 2292
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    move v1, v2

    .line 2299
    :cond_0
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v3, v4, :cond_1

    .line 2300
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2302
    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 2303
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v1, v2

    .line 2306
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 2308
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 2309
    if-ge v3, v4, :cond_a

    .line 2313
    :goto_1
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-ge v4, v3, :cond_0

    .line 2314
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 2315
    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-nez v4, :cond_3

    .line 2316
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 2323
    :cond_3
    if-eq v5, v9, :cond_7

    .line 2324
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    .line 2355
    const/16 v3, 0x20

    if-ge v5, v3, :cond_4

    .line 2356
    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2359
    :cond_4
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    :cond_5
    move v3, v5

    .line 2362
    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_8

    .line 2363
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v4, v2

    .line 2367
    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 2329
    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_5

    .line 2330
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v3

    goto :goto_2

    .line 2334
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->h(I)I

    move-result v3

    goto :goto_2

    .line 2337
    :pswitch_2
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 2338
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->j(I)I

    move-result v3

    goto :goto_2

    .line 2340
    :cond_6
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->i(I)I

    move-result v3

    goto :goto_2

    .line 2344
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->k(I)I

    move-result v4

    .line 2346
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 2347
    array-length v1, v0

    if-lt v3, v1, :cond_9

    .line 2348
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v1, v2

    .line 2351
    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 2353
    goto :goto_2

    .line 2369
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 2371
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    return-object v0

    :cond_8
    move v4, v1

    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_4

    :cond_a
    move v3, v4

    goto/16 :goto_1

    .line 2324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private n(I)V
    .locals 2
    .parameter

    .prologue
    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    .line 3016
    return-void
.end method

.method private o()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 2472
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2473
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2474
    if-le v0, v3, :cond_3

    .line 2475
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2476
    return v0

    .line 2478
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_0

    .line 2479
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2480
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2481
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_0

    .line 2482
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2483
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_0

    .line 2484
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2485
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2489
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0
.end method

.method private p()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 2495
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2496
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2497
    if-le v0, v3, :cond_3

    .line 2498
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2514
    :goto_1
    return v0

    .line 2501
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_0

    .line 2502
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2503
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2504
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_0

    .line 2505
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2506
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_0

    .line 2507
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2508
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2513
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_handleEOF()V

    .line 2514
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private q()I
    .locals 6

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/16 v3, 0x20

    .line 2524
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2528
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2529
    if-ne v0, v5, :cond_2

    .line 2530
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-ge v0, v1, :cond_4

    .line 2531
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2532
    if-le v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    .line 2533
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2577
    :cond_1
    return v0

    .line 2539
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 2543
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 2557
    if-ge v0, v3, :cond_3

    .line 2558
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    .line 2567
    :cond_3
    if-eq v0, v5, :cond_4

    .line 2568
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2573
    :cond_4
    :goto_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2574
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2575
    if-le v0, v3, :cond_7

    .line 2576
    if-ne v0, v4, :cond_1

    .line 2579
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_1

    .line 2548
    :sswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    .line 2562
    :goto_2
    :sswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_6

    .line 2563
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2565
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 2551
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_2

    .line 2554
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_2

    .line 2580
    :cond_7
    if-eq v0, v3, :cond_4

    .line 2581
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 2582
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_1

    .line 2583
    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 2584
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_1

    .line 2585
    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 2586
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_1

    .line 2590
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    .line 2543
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private r()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 2596
    sget-object v0, Lcom/fasterxml/jackson/a/n;->b:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2597
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2600
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2601
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2603
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2604
    if-ne v0, v3, :cond_2

    .line 2605
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->t()V

    .line 2611
    :goto_0
    return-void

    .line 2606
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2607
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->s()V

    goto :goto_0

    .line 2609
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    .line 2617
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->e()[I

    move-result-object v0

    .line 2621
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2622
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2623
    aget v2, v0, v1

    .line 2624
    if-eqz v2, :cond_0

    .line 2625
    sparse-switch v2, :sswitch_data_0

    .line 2652
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_0

    .line 2627
    :sswitch_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2628
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 2631
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2657
    :goto_1
    return-void

    .line 2636
    :sswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_0

    .line 2639
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_0

    .line 2642
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_0

    .line 2645
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_0

    .line 2648
    :sswitch_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_0

    .line 2656
    :cond_3
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_1

    .line 2625
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private t()V
    .locals 4

    .prologue
    .line 2663
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->e()[I

    move-result-object v0

    .line 2664
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2665
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2666
    aget v2, v0, v1

    .line 2667
    if-eqz v2, :cond_0

    .line 2668
    sparse-switch v2, :sswitch_data_0

    .line 2688
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_0

    .line 2670
    :sswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    .line 2692
    :cond_2
    :goto_1
    return-void

    .line 2673
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_1

    .line 2678
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_0

    .line 2681
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_0

    .line 2684
    :sswitch_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_0

    .line 2668
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private u()V
    .locals 3

    .prologue
    .line 2896
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2897
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2899
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2900
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2901
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2903
    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2911
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2912
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2915
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2916
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2917
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2919
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_2

    .line 2920
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2922
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2923
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2924
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2926
    :cond_3
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2931
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2932
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2934
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2935
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2936
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2938
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_2

    .line 2939
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2941
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2942
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2943
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2945
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_4

    .line 2946
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2948
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    .line 2949
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 2950
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    .line 2952
    :cond_5
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 2966
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2967
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2968
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2971
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    .line 2972
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    .line 2973
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 2977
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    .line 2978
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    .line 2979
    return-void
.end method

.method private z()I
    .locals 3

    .prologue
    .line 2984
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2985
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2987
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method protected final b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-wide v1, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    .line 166
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    .line 168
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 170
    if-lez v1, :cond_1

    .line 171
    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 172
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    .line 173
    const/4 v0, 0x1

    .line 182
    :cond_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->d()V

    .line 178
    if-nez v1, :cond_0

    .line 179
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()V
    .locals 9

    .prologue
    .line 2063
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2064
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    .line 2066
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2068
    :cond_0
    const/4 v1, 0x0

    .line 2069
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v3

    .line 2070
    sget-object v4, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    .line 2072
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2073
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 2074
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2075
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 2076
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 2077
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 2078
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2079
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    .line 2089
    :goto_1
    return-void

    .line 2084
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2085
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 2086
    goto :goto_0

    .line 2087
    :cond_2
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 2088
    invoke-direct {p0, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->a([CI)V

    goto :goto_1
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 799
    invoke-super {p0}, Lcom/fasterxml/jackson/a/a/c;->close()V

    .line 801
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/a;->b()V

    .line 802
    return-void
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/a/n;->a:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    .line 236
    :cond_2
    return-void
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    .line 248
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->P:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    .line 252
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->a([B)V

    .line 255
    :cond_0
    return-void
.end method

.method protected final g()C
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2698
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_0

    .line 2699
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2700
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2703
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    .line 2705
    sparse-switch v1, :sswitch_data_0

    .line 2728
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 2746
    :goto_0
    return v0

    .line 2708
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2710
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2712
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 2714
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 2716
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 2722
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 2733
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 2734
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_1

    .line 2735
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2736
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2739
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v3

    .line 2740
    invoke-static {v2}, Lcom/fasterxml/jackson/a/c/b;->a(I)I

    move-result v3

    .line 2741
    if-gez v3, :cond_2

    .line 2742
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2744
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2733
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2746
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 2705
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method public final getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
    .locals 3
    .parameter "b64variant"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-nez v0, :cond_1

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    .line 424
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_3

    .line 426
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 441
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->f()Lcom/fasterxml/jackson/a/g/d;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/a/d/j;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;Lcom/fasterxml/jackson/a/a;)V

    .line 438
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    goto :goto_0
.end method

.method public final getCodec()Lcom/fasterxml/jackson/a/s;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public final getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 268
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 270
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/r;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTextCharacters()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_4

    .line 331
    sget-object v0, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->b()[C

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    if-nez v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    .line 342
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    goto :goto_0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 340
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    goto :goto_1

    .line 348
    :pswitch_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_3

    .line 349
    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 350
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 355
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->d()[C

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextLength()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v1, :cond_0

    .line 369
    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 384
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->b()[C

    move-result-object v0

    array-length v0, v0

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 374
    :pswitch_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v1, :cond_1

    .line 375
    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 376
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 381
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->b()I

    move-result v0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextOffset()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 399
    :pswitch_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v1, :cond_1

    .line 400
    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 401
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 406
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->c()I

    move-result v0

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getValueAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 284
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defValue"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 298
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 300
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/a/a/c;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final nextBooleanValue()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1123
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_4

    .line 1124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 1125
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1126
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1127
    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 1128
    sget-object v2, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 1129
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1147
    :cond_0
    :goto_0
    return-object v0

    .line 1131
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_2

    .line 1132
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1134
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_3

    .line 1135
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1136
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1141
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1143
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1145
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final nextFieldName(Lcom/fasterxml/jackson/a/u;)Z
    .locals 10
    .parameter "str"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/16 v6, 0x22

    const/4 v1, 0x0

    .line 816
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->z:I

    .line 817
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_0

    .line 818
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->h()Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 897
    :goto_0
    return v0

    .line 821
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_1

    .line 822
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->m()V

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->p()I

    move-result v0

    .line 825
    if-gez v0, :cond_2

    .line 826
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->close()V

    .line 827
    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 828
    goto :goto_0

    .line 830
    :cond_2
    iget-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->h:J

    .line 831
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    .line 832
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    .line 835
    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    .line 838
    if-ne v0, v7, :cond_4

    .line 839
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 840
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 843
    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 844
    goto :goto_0

    .line 846
    :cond_4
    if-ne v0, v8, :cond_6

    .line 847
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v2

    if-nez v2, :cond_5

    .line 848
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 851
    sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 852
    goto :goto_0

    .line 856
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 857
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_7

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "was expecting comma to separate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 860
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 863
    :cond_8
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v2

    if-nez v2, :cond_9

    .line 864
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(I)Lcom/fasterxml/jackson/a/r;

    move v0, v1

    .line 865
    goto/16 :goto_0

    .line 869
    :cond_9
    if-ne v0, v6, :cond_b

    .line 871
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B

    move-result-object v2

    .line 872
    array-length v3, v2

    .line 873
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-ge v4, v5, :cond_b

    .line 875
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/2addr v4, v3

    .line 876
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    aget-byte v5, v5, v4

    if-ne v5, v6, :cond_b

    .line 878
    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 880
    :goto_1
    if-ne v1, v3, :cond_a

    .line 881
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 883
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    .line 884
    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 886
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->i()V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 889
    :cond_a
    aget-byte v6, v2, v1

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    add-int v8, v5, v1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_b

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 897
    :cond_b
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/a/d/j;->a(ILcom/fasterxml/jackson/a/u;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final nextIntValue(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_3

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 1077
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1078
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1079
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 1080
    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getIntValue()I

    move-result p1

    .line 1091
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1083
    .restart local p1
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1085
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getIntValue()I

    move-result p1

    goto :goto_0
.end method

.method public final nextLongValue(J)J
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_3

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 1101
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1103
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 1104
    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getLongValue()J

    move-result-wide p1

    .line 1115
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 1107
    .restart local p1
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1109
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1115
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public final nextTextValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1047
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_4

    .line 1048
    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    .line 1049
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1050
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 1051
    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 1052
    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_2

    .line 1053
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_0

    .line 1054
    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 1055
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_1
    :goto_0
    return-object v0

    .line 1059
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1061
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_0

    .line 1067
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/a/r;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->z:I

    .line 610
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->h()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->m()V

    .line 617
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->p()I

    move-result v0

    .line 618
    if-gez v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->close()V

    .line 623
    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move-object v0, v1

    goto :goto_0

    .line 629
    :cond_2
    iget-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->h:J

    .line 630
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    .line 631
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    .line 634
    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    .line 637
    if-ne v0, v7, :cond_4

    .line 638
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 642
    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 644
    :cond_4
    if-ne v0, v8, :cond_6

    .line 645
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 646
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 649
    sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_0

    .line 653
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 654
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 657
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 664
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v1

    if-nez v1, :cond_9

    .line 665
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto/16 :goto_0

    .line 668
    :cond_9
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->c(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 671
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 672
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a

    .line 673
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 675
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    .line 678
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 679
    iput-boolean v6, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    .line 680
    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto/16 :goto_0

    .line 685
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 728
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 730
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    .line 731
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto/16 :goto_0

    .line 687
    :sswitch_0
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 690
    :sswitch_1
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 696
    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 698
    :sswitch_3
    const-string v0, "true"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 699
    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 702
    :sswitch_4
    const-string v0, "false"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 703
    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 706
    :sswitch_5
    const-string v0, "null"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    .line 707
    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    goto :goto_1

    .line 725
    :sswitch_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_1

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public final readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
    .locals 3
    .parameter "b64variant"
    .parameter "out"

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_1

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    .line 451
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 452
    array-length v0, v0

    .line 459
    :goto_0
    return v0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->g()[B

    move-result-object v1

    .line 457
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 459
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    throw v0
.end method

.method public final releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .parameter "out"

    .prologue
    .line 140
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v0, v1

    .line 141
    if-gtz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    .line 146
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final setCodec(Lcom/fasterxml/jackson/a/s;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    .line 129
    return-void
.end method
