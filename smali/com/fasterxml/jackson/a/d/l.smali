.class public final Lcom/fasterxml/jackson/a/d/l;
.super Lcom/fasterxml/jackson/a/d/c;
.source "WriterBasedJsonGenerator.java"


# static fields
.field protected static final l:[C


# instance fields
.field protected final m:Ljava/io/Writer;

.field protected n:[C

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:[C

.field protected s:Lcom/fasterxml/jackson/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->g()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/Writer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/c;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;)V

    .line 38
    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 44
    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 75
    iput-object p4, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->i()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    .line 78
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1551
    .line 1553
    const/4 v0, -0x3

    .line 1557
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v8, v1, -0x6

    .line 1558
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v1

    shr-int/lit8 v2, v1, 0x2

    move v6, v2

    move v5, v3

    move v1, v3

    move v2, v3

    .line 1562
    :goto_0
    if-le v2, v0, :cond_0

    .line 1563
    array-length v0, p3

    invoke-static {p2, p3, v2, v1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    .line 1565
    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    .line 1566
    add-int/lit8 v0, v1, -0x3

    move v2, v3

    .line 1570
    :cond_0
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v7, v8, :cond_1

    .line 1571
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1574
    :cond_1
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x8

    .line 1575
    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    .line 1576
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, p3, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v2, v9

    .line 1577
    add-int/lit8 v5, v5, 0x3

    .line 1578
    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v2, v9, v10}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v2

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1579
    add-int/lit8 v2, v6, -0x1

    if-gtz v2, :cond_2

    .line 1580
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v9, 0x5c

    aput-char v9, v2, v6

    .line 1581
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v9, 0x6e

    aput-char v9, v2, v6

    .line 1582
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    :cond_2
    move v6, v2

    move v2, v7

    .line 1584
    goto :goto_0

    .line 1587
    :cond_3
    if-lez v1, :cond_6

    .line 1588
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v8, :cond_4

    .line 1589
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1591
    :cond_4
    aget-byte v0, p3, v3

    shl-int/lit8 v0, v0, 0x10

    .line 1593
    if-ge v4, v1, :cond_5

    .line 1594
    aget-byte v1, p3, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1595
    const/4 v1, 0x2

    .line 1597
    :goto_1
    add-int v2, v5, v1

    .line 1598
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    move v0, v2

    .line 1600
    :goto_2
    return v0

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1491
    const/4 v3, 0x0

    .line 1492
    const/4 v1, 0x0

    .line 1493
    const/4 v0, -0x3

    .line 1496
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v6, v2, -0x6

    .line 1497
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    move v4, v2

    move v2, v3

    move v3, p4

    .line 1499
    :goto_0
    const/4 v5, 0x2

    if-le v3, v5, :cond_3

    .line 1500
    if-le v2, v0, :cond_0

    .line 1501
    invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    .line 1502
    const/4 v2, 0x0

    .line 1503
    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    .line 1504
    add-int/lit8 v0, v1, -0x3

    .line 1508
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v5, v6, :cond_1

    .line 1509
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1511
    :cond_1
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x8

    .line 1512
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 1513
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    .line 1514
    add-int/lit8 v3, v3, -0x3

    .line 1515
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v2, v7, v8}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v2

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1516
    add-int/lit8 v2, v4, -0x1

    if-gtz v2, :cond_2

    .line 1517
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v7, 0x5c

    aput-char v7, v2, v4

    .line 1518
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v7, 0x6e

    aput-char v7, v2, v4

    .line 1519
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    :cond_2
    move v4, v2

    move v2, v5

    .line 1521
    goto :goto_0

    .line 1524
    :cond_3
    if-lez v3, :cond_6

    .line 1525
    invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    .line 1526
    if-lez v1, :cond_6

    .line 1528
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v6, :cond_4

    .line 1529
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1531
    :cond_4
    const/4 v0, 0x0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x10

    .line 1533
    const/4 v2, 0x1

    if-ge v2, v1, :cond_5

    .line 1534
    const/4 v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1535
    const/4 v1, 0x2

    .line 1539
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1540
    sub-int v0, v3, v1

    .line 1543
    :goto_2
    return v0

    .line 1537
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;[BIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1608
    const/4 v0, 0x0

    .line 1609
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1610
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    aput-byte v3, p1, v0

    move v0, v1

    move p2, v2

    goto :goto_0

    .line 1614
    :cond_0
    array-length v1, p1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1617
    :cond_1
    sub-int v2, v1, v0

    .line 1618
    if-eqz v2, :cond_2

    .line 1619
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1622
    if-gez v2, :cond_3

    .line 1627
    :cond_2
    :goto_1
    return v0

    .line 1625
    :cond_3
    add-int/2addr v0, v2

    .line 1626
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    goto :goto_1
.end method

.method private a([CIICI)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 1755
    if-ltz p5, :cond_2

    .line 1756
    if-le p2, v3, :cond_0

    if-ge p2, p3, :cond_0

    .line 1757
    add-int/lit8 p2, p2, -0x2

    .line 1758
    const/16 v0, 0x5c

    aput-char v0, p1, p2

    .line 1759
    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p5

    aput-char v1, p1, v0

    .line 1825
    :goto_0
    return p2

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    .line 1762
    if-nez v0, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    .line 1765
    :cond_1
    int-to-char v1, p5

    aput-char v1, v0, v3

    .line 1766
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1770
    :cond_2
    const/4 v0, -0x2

    if-eq p5, v0, :cond_7

    .line 1771
    const/4 v0, 0x5

    if-le p2, v0, :cond_4

    if-ge p2, p3, :cond_4

    .line 1772
    add-int/lit8 v0, p2, -0x6

    .line 1773
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x5c

    aput-char v2, p1, v0

    .line 1774
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 1776
    const/16 v1, 0xff

    if-le p4, v1, :cond_3

    .line 1777
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1778
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v0

    .line 1779
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 1780
    and-int/lit16 v1, p4, 0xff

    int-to-char p4, v1

    .line 1785
    :goto_1
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v3, p4, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 1786
    sget-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, p4, 0xf

    aget-char v0, v0, v2

    aput-char v0, p1, v1

    .line 1787
    add-int/lit8 p2, v1, -0x5

    goto :goto_0

    .line 1782
    :cond_3
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    .line 1783
    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    goto :goto_1

    .line 1790
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    .line 1791
    if-nez v0, :cond_5

    .line 1792
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    .line 1794
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1795
    const/16 v1, 0xff

    if-le p4, v1, :cond_6

    .line 1796
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1797
    and-int/lit16 v2, p4, 0xff

    .line 1798
    const/16 v3, 0xa

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1799
    const/16 v3, 0xb

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1800
    const/16 v1, 0xc

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1801
    const/16 v1, 0xd

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1802
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1804
    :cond_6
    sget-object v1, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v2, p4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1805
    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1806
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1812
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_8

    .line 1813
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1818
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1819
    if-lt p2, v1, :cond_9

    if-ge p2, p3, :cond_9

    .line 1820
    sub-int/2addr p2, v1

    .line 1821
    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1815
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1816
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_2

    .line 1823
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(CI)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x5c

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x6

    .line 1664
    if-ltz p2, :cond_2

    .line 1665
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v4, :cond_0

    .line 1666
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, -0x2

    .line 1667
    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1668
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v0

    .line 1669
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    .line 1742
    :goto_0
    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    .line 1674
    if-nez v0, :cond_1

    .line 1675
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    .line 1677
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1678
    const/4 v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1679
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1682
    :cond_2
    const/4 v0, -0x2

    if-eq p2, v0, :cond_7

    .line 1683
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v6, :cond_4

    .line 1684
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 1685
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, -0x6

    .line 1686
    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1687
    aput-char v7, v1, v0

    .line 1688
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1690
    const/16 v2, 0xff

    if-le p1, v2, :cond_3

    .line 1691
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1692
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1693
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    .line 1694
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1699
    :goto_1
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 1700
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    goto :goto_0

    .line 1696
    :cond_3
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1697
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_1

    .line 1704
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    .line 1705
    if-nez v0, :cond_5

    .line 1706
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    .line 1708
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1709
    const/16 v1, 0xff

    if-le p1, v1, :cond_6

    .line 1710
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1711
    and-int/lit16 v2, p1, 0xff

    .line 1712
    const/16 v3, 0xa

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1713
    const/16 v3, 0xb

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1714
    const/16 v1, 0xc

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1715
    const/16 v1, 0xd

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1716
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1718
    :cond_6
    sget-object v1, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1719
    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1720
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1726
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_8

    .line 1727
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1732
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1733
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v2, v1, :cond_9

    .line 1734
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v2, v1

    .line 1735
    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1736
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1729
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1730
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_2

    .line 1740
    :cond_9
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1741
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 621
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 625
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 626
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 627
    return-void
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1145
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int v1, v0, p1

    .line 1146
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1147
    array-length v0, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1148
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v0, v1, :cond_4

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v4, v0, v4

    .line 1157
    if-ge v4, v3, :cond_2

    .line 1158
    aget v0, v2, v4

    .line 1159
    if-eqz v0, :cond_3

    .line 1170
    :goto_1
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v5, v6

    .line 1171
    if-lez v5, :cond_1

    .line 1172
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1174
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1175
    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_0

    .line 1162
    :cond_2
    if-le v4, p2, :cond_3

    .line 1163
    const/4 v0, -0x1

    .line 1164
    goto :goto_1

    .line 1166
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v1, :cond_0

    .line 1177
    :cond_4
    return-void
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 646
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 650
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 651
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 652
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;[BII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1449
    add-int/lit8 v1, p4, -0x3

    .line 1451
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v2, v0, -0x6

    .line 1452
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1455
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1456
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v3, v2, :cond_1

    .line 1457
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1460
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1461
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1462
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1463
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1464
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v4, 0x5c

    aput-char v4, v0, v3

    .line 1467
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v4, 0x6e

    aput-char v4, v0, v3

    .line 1468
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1473
    :cond_2
    sub-int v1, p4, p3

    .line 1474
    if-lez v1, :cond_5

    .line 1475
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v2, :cond_3

    .line 1476
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1478
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1479
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1480
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1482
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1484
    :cond_5
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/u;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->b(Lcom/fasterxml/jackson/a/u;Z)V

    .line 261
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 234
    :cond_1
    if-eqz p2, :cond_2

    .line 235
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 240
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    .line 241
    sget-object v1, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v1, v2

    .line 248
    array-length v1, v0

    .line 249
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v2, v3, :cond_5

    .line 250
    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    .line 252
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    goto :goto_0

    .line 257
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 732
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    .line 737
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 741
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;Z)V

    .line 221
    :goto_0
    return-void

    .line 197
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 200
    :cond_1
    if-eqz p2, :cond_2

    .line 201
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 207
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 215
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_4

    .line 218
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method private a(S)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 596
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 600
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 601
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 602
    return-void
.end method

.method private a([CII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v0, :cond_1

    .line 1078
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/l;->b([CII)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v0, :cond_2

    .line 1082
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/d/l;->a([CIII)V

    goto :goto_0

    .line 1090
    :cond_2
    add-int v2, p3, p2

    .line 1091
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1092
    array-length v4, v3

    move v1, p2

    .line 1093
    :goto_1
    if-ge v1, v2, :cond_0

    move v0, v1

    .line 1097
    :cond_3
    aget-char v5, p1, v0

    .line 1098
    if-ge v5, v4, :cond_4

    aget v5, v3, v5

    if-nez v5, :cond_5

    .line 1099
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_3

    .line 1102
    :cond_5
    sub-int v5, v0, v1

    .line 1108
    const/16 v6, 0x20

    if-ge v5, v6, :cond_8

    .line 1110
    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v6, v7, :cond_6

    .line 1111
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1113
    :cond_6
    if-lez v5, :cond_7

    .line 1114
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1115
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1122
    :cond_7
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1123
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    .line 1127
    aget v5, v3, v0

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_1

    .line 1118
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1119
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v6, p1, v1, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_2
.end method

.method private a([CIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1224
    add-int v3, p3, p2

    .line 1225
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1226
    array-length v0, v4

    add-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1228
    const/4 v0, 0x0

    move v2, p2

    .line 1230
    :goto_0
    if-ge v2, v3, :cond_6

    move v1, v2

    .line 1235
    :cond_0
    aget-char v6, p1, v1

    .line 1236
    if-ge v6, v5, :cond_3

    .line 1237
    aget v0, v4, v6

    .line 1238
    if-eqz v0, :cond_4

    .line 1246
    :goto_1
    sub-int v7, v1, v2

    .line 1252
    const/16 v8, 0x20

    if-ge v7, v8, :cond_5

    .line 1254
    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v8, v7

    iget v9, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v8, v9, :cond_1

    .line 1255
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1257
    :cond_1
    if-lez v7, :cond_2

    .line 1258
    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v2, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1266
    :cond_2
    :goto_2
    if-ge v1, v3, :cond_6

    .line 1267
    add-int/lit8 v2, v1, 0x1

    .line 1271
    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_0

    .line 1241
    :cond_3
    if-le v6, p4, :cond_4

    .line 1242
    const/4 v0, -0x1

    .line 1243
    goto :goto_1

    .line 1245
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_0

    goto :goto_1

    .line 1262
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1263
    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v8, p1, v2, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1273
    :cond_6
    return-void
.end method

.method private b(CI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x5c

    const/16 v4, 0x30

    .line 1835
    if-ltz p2, :cond_1

    .line 1836
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_0

    .line 1837
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 1840
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1883
    :goto_0
    return-void

    .line 1843
    :cond_1
    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    .line 1844
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_2

    .line 1845
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1847
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1848
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 1849
    add-int/lit8 v2, v0, 0x1

    aput-char v3, v1, v0

    .line 1850
    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 1852
    const/16 v2, 0xff

    if-le p1, v2, :cond_3

    .line 1853
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1854
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 1855
    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 1856
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1861
    :goto_1
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, p1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1862
    sget-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 1863
    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_0

    .line 1858
    :cond_3
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 1859
    add-int/lit8 v0, v2, 0x1

    aput-char v4, v1, v2

    goto :goto_1

    .line 1867
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_5

    .line 1868
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1873
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1874
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v2, v3, :cond_6

    .line 1875
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1876
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_6

    .line 1877
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1870
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1871
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_2

    .line 1881
    :cond_6
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1882
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 823
    packed-switch p1, :pswitch_data_0

    .line 842
    invoke-static {}, Lcom/fasterxml/jackson/a/d/l;->c()V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 825
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->f(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 828
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->d(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 831
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 835
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->g(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1182
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1183
    array-length v1, v6

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v2, v0

    move v1, v0

    .line 1190
    :goto_0
    if-ge v1, p1, :cond_5

    .line 1194
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v3, v1

    .line 1195
    if-ge v4, v7, :cond_2

    .line 1196
    aget v5, v6, v4

    .line 1197
    if-eqz v5, :cond_3

    .line 1205
    :goto_1
    sub-int v0, v1, v2

    .line 1209
    if-lez v0, :cond_1

    .line 1210
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v8, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1211
    if-ge v1, p1, :cond_5

    .line 1212
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1216
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1217
    goto :goto_0

    .line 1200
    :cond_2
    if-le v4, p2, :cond_4

    .line 1201
    const/4 v5, -0x1

    .line 1202
    goto :goto_1

    :cond_3
    move v0, v5

    .line 1204
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    goto :goto_1

    .line 1218
    :cond_5
    return-void
.end method

.method private b(Lcom/fasterxml/jackson/a/u;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 294
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V

    .line 300
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    .line 301
    sget-object v1, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v1, v2, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v1, v2

    .line 306
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    .line 307
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    .line 314
    :goto_1
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 312
    :cond_3
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 270
    if-eqz p2, :cond_2

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V

    .line 276
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 281
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 289
    :goto_1
    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b([CII)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1381
    add-int v4, p3, p2

    .line 1382
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1383
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_3

    const v0, 0xffff

    .line 1384
    :goto_0
    array-length v1, v5

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1385
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    .line 1387
    const/4 v1, 0x0

    move v3, p2

    .line 1389
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1394
    :cond_0
    aget-char v8, p1, v2

    .line 1395
    if-ge v8, v6, :cond_4

    .line 1396
    aget v1, v5, v8

    .line 1397
    if-eqz v1, :cond_6

    .line 1410
    :goto_2
    sub-int v9, v2, v3

    .line 1416
    const/16 v10, 0x20

    if-ge v9, v10, :cond_7

    .line 1418
    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v10, v9

    iget v11, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v10, v11, :cond_1

    .line 1419
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1421
    :cond_1
    if-lez v9, :cond_2

    .line 1422
    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v11, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v3, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1430
    :cond_2
    :goto_3
    if-ge v2, v4, :cond_8

    .line 1431
    add-int/lit8 v3, v2, 0x1

    .line 1435
    invoke-direct {p0, v8, v1}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_1

    .line 1383
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    goto :goto_0

    .line 1400
    :cond_4
    if-le v8, v0, :cond_5

    .line 1401
    const/4 v1, -0x1

    .line 1402
    goto :goto_2

    .line 1404
    :cond_5
    invoke-virtual {v7}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v9, :cond_6

    .line 1405
    const/4 v1, -0x2

    .line 1406
    goto :goto_2

    .line 1409
    :cond_6
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_0

    goto :goto_2

    .line 1426
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1427
    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v10, p1, v3, v9}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1437
    :cond_8
    return-void
.end method

.method private c(I)V
    .locals 7
    .parameter

    .prologue
    .line 958
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p1

    .line 959
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 960
    array-length v2, v1

    .line 963
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v3, v0, :cond_2

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v3, v3, v4

    .line 968
    if-ge v3, v2, :cond_1

    aget v3, v1, v3

    if-nez v3, :cond_3

    .line 969
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v3, v0, :cond_0

    .line 990
    :cond_2
    return-void

    .line 980
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v3, v4

    .line 981
    if-lez v3, :cond_4

    .line 982
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    .line 987
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v3, v3, v4

    .line 988
    aget v4, v1, v3

    invoke-direct {p0, v3, v4}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 492
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    .line 494
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 495
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 496
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 500
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_0

    .line 501
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    .line 502
    add-int v3, v0, v2

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 503
    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 504
    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 505
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 506
    add-int/2addr v0, v2

    .line 507
    sub-int/2addr v1, v2

    .line 508
    goto :goto_0

    .line 510
    :cond_0
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 511
    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 512
    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 513
    return-void
.end method

.method private d(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1033
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1034
    array-length v7, v6

    move v1, v0

    .line 1040
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1044
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v2, v0

    .line 1045
    if-ge v4, v7, :cond_1

    aget v2, v6, v4

    if-nez v2, :cond_2

    .line 1046
    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 1049
    :cond_2
    sub-int v2, v0, v1

    .line 1058
    if-lez v2, :cond_3

    .line 1059
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 1060
    if-ge v0, p1, :cond_4

    .line 1061
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 1066
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 1067
    goto :goto_0

    .line 1068
    :cond_4
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 932
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 933
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_0

    .line 934
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->e(Ljava/lang/String;)V

    .line 952
    :goto_0
    return-void

    .line 940
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 943
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 945
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_2

    .line 946
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->e(I)V

    goto :goto_0

    .line 947
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v1, :cond_3

    .line 948
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/l;->a(II)V

    goto :goto_0

    .line 950
    :cond_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->c(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 1638
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 1639
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1641
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1642
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 1643
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1644
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1645
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1646
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1647
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1648
    return-void
.end method

.method private e(I)V
    .locals 11
    .parameter

    .prologue
    .line 1289
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int v2, v0, p1

    .line 1290
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1291
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_2

    const v0, 0xffff

    .line 1292
    :goto_0
    array-length v1, v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1293
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    .line 1297
    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v1, v2, :cond_6

    .line 1302
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v6, v1, v6

    .line 1303
    if-ge v6, v4, :cond_3

    .line 1304
    aget v1, v3, v6

    .line 1305
    if-eqz v1, :cond_5

    .line 1321
    :goto_2
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v7, v8

    .line 1322
    if-lez v7, :cond_1

    .line 1323
    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V

    .line 1325
    :cond_1
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1326
    invoke-direct {p0, v6, v1}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_1

    .line 1291
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    goto :goto_0

    .line 1308
    :cond_3
    if-le v6, v0, :cond_4

    .line 1309
    const/4 v1, -0x1

    .line 1310
    goto :goto_2

    .line 1312
    :cond_4
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v1, :cond_5

    .line 1313
    const/4 v1, -0x2

    .line 1314
    goto :goto_2

    .line 1317
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v1, v2, :cond_0

    .line 1328
    :cond_6
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1000
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    .line 1006
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    .line 1007
    add-int v4, v0, v2

    if-le v4, v3, :cond_1

    sub-int v2, v3, v0

    .line 1009
    :cond_1
    add-int v4, v0, v2

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1010
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v4, :cond_2

    .line 1011
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/l;->f(I)V

    .line 1017
    :goto_0
    add-int/2addr v0, v2

    .line 1018
    if-lt v0, v3, :cond_0

    .line 1019
    return-void

    .line 1012
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v4, :cond_3

    .line 1013
    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/a/d/l;->b(II)V

    goto :goto_0

    .line 1015
    :cond_3
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/l;->d(I)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1333
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    .line 1334
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_2

    const v0, 0xffff

    move v6, v0

    .line 1335
    :goto_0
    array-length v0, v7

    add-int/lit8 v2, v6, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1336
    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    move v2, v1

    move v0, v1

    .line 1343
    :goto_1
    if-ge v1, p1, :cond_7

    .line 1347
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v3, v1

    .line 1348
    if-ge v4, v8, :cond_3

    .line 1349
    aget v5, v7, v4

    .line 1350
    if-eqz v5, :cond_5

    .line 1363
    :goto_2
    sub-int v0, v1, v2

    .line 1367
    if-lez v0, :cond_1

    .line 1368
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v10, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1369
    if-ge v1, p1, :cond_7

    .line 1370
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1374
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1375
    goto :goto_1

    .line 1334
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    move v6, v0

    goto :goto_0

    .line 1353
    :cond_3
    if-le v4, v6, :cond_4

    .line 1354
    const/4 v5, -0x1

    .line 1355
    goto :goto_2

    .line 1357
    :cond_4
    invoke-virtual {v9}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v3, :cond_6

    .line 1358
    const/4 v5, -0x2

    .line 1359
    goto :goto_2

    :cond_5
    move v0, v5

    .line 1362
    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    goto :goto_2

    .line 1376
    :cond_7
    return-void
.end method

.method private f()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1887
    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 1889
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1891
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1892
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1893
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1894
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1896
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1897
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1898
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    .line 1899
    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1904
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v0, v1

    .line 1905
    if-lez v0, :cond_0

    .line 1906
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    .line 1907
    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 1908
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1910
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->e()I

    move-result v0

    .line 787
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-nez v1, :cond_3

    .line 792
    packed-switch v0, :pswitch_data_0

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 794
    :pswitch_0
    const/16 v0, 0x2c

    .line 808
    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v1, v2, :cond_2

    .line 809
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v0, v1, v2

    .line 812
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_0

    .line 797
    :pswitch_1
    const/16 v0, 0x3a

    .line 798
    goto :goto_1

    .line 800
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->k:Lcom/fasterxml/jackson/a/u;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->k:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->b(I)V

    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 912
    if-eqz v0, :cond_0

    .line 913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 914
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->b([C)V

    .line 916
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 869
    invoke-super {p0}, Lcom/fasterxml/jackson/a/d/c;->close()V

    .line 875
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/a/i;->b:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->a()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->writeEndArray()V

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->writeEndObject()V

    goto :goto_0

    .line 888
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 896
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/a/i;->a:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 905
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->b()V

    .line 906
    return-void

    .line 899
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 858
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 863
    :cond_0
    return-void
.end method

.method public final getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    return-object v0
.end method

.method public final writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
    .locals 5
    .parameter "b64variant"
    .parameter "data"
    .parameter "dataLength"

    .prologue
    const/16 v4, 0x22

    .line 544
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 546
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v4, v0, v1

    .line 550
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->g()[B

    move-result-object v1

    .line 553
    if-gez p3, :cond_3

    .line 554
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p3

    .line 563
    .end local p3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    .line 566
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v4, v0, v1

    .line 570
    return p3

    .line 556
    .restart local p3
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I

    move-result v0

    .line 557
    if-lez v0, :cond_1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too few bytes available: missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes (out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    throw v0
.end method

.method public final writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
    .locals 4
    .parameter "b64variant"
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v3, 0x22

    .line 525
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 527
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 531
    add-int v0, p3, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;[BII)V

    .line 533
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 537
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x65

    .line 747
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 748
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 751
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 752
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    .line 753
    if-eqz p1, :cond_1

    .line 754
    const/16 v2, 0x74

    aput-char v2, v1, v0

    .line 755
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 757
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 765
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 766
    return-void

    .line 759
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v1, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 761
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    .line 762
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 763
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;I)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    .line 155
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    .line 187
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeFieldName(Lcom/fasterxml/jackson/a/u;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I

    move-result v1

    .line 113
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 114
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/u;Z)V

    .line 117
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I

    move-result v1

    .line 101
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 102
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    .line 104
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;Z)V

    .line 105
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeNull()V
    .locals 1

    .prologue
    .line 772
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    .line 774
    return-void
.end method

.method public final writeNumber(D)V
    .locals 1
    .parameter "d"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeString(Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 684
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeNumber(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeString(Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 700
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeNumber(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 608
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 609
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(I)V

    .line 618
    :goto_0
    return-void

    .line 614
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_0
.end method

.method public final writeNumber(J)V
    .locals 2
    .parameter "l"

    .prologue
    .line 633
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 634
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->a(J)V

    .line 643
    :goto_0
    return-void

    .line 638
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 640
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_0
.end method

.method public final writeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedValue"

    .prologue
    .line 722
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 723
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 708
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 661
    if-nez p1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    .line 668
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_1

    .line 664
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeNumber(S)V
    .locals 2
    .parameter "s"

    .prologue
    .line 583
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(S)V

    .line 593
    :goto_0
    return-void

    .line 589
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_0
.end method

.method public final writeRaw(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 483
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char p1, v0, v1

    .line 487
    return-void
.end method

.method public final writeRaw(Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 457
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public final writeRaw(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 419
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v2

    .line 421
    if-nez v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 423
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v2

    .line 426
    :cond_0
    if-lt v0, v1, :cond_1

    .line 427
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 428
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeRaw(Ljava/lang/String;II)V
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 439
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    .line 441
    if-ge v0, p3, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 443
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    .line 446
    :cond_0
    if-lt v0, p3, :cond_1

    .line 447
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 448
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeRaw([CII)V
    .locals 2
    .parameter "text"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 465
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 466
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    .line 467
    if-le p3, v0, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 476
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public final writeRawUTF8String([BII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->d()V

    .line 397
    return-void
.end method

.method public final writeStartArray()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->b()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->e(Lcom/fasterxml/jackson/a/h;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->c()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;)V

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lcom/fasterxml/jackson/a/u;)V
    .locals 6
    .parameter "sstr"

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 364
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    .line 370
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    .line 371
    array-length v1, v0

    .line 373
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    .line 374
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v2, v3

    .line 375
    if-le v1, v2, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    .line 385
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    .line 389
    return-void

    .line 382
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 383
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x22

    .line 326
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 327
    if-nez p1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    .line 341
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 335
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public final writeString([CII)V
    .locals 4
    .parameter "text"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v3, 0x22

    .line 347
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/l;->a([CII)V

    .line 354
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    .line 358
    return-void
.end method

.method public final writeUTF8String([BII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->d()V

    .line 405
    return-void
.end method
