.class final Lcom/facebook/bj;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/bi;


# instance fields
.field private final a:Ljava/io/BufferedOutputStream;

.field private final b:Lcom/facebook/g/n;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/facebook/g/n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/bj;->c:Z

    .line 1658
    iput-object p1, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    .line 1659
    iput-object p2, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    .line 1660
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 1732
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1733
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1686
    const-string v0, "image/png"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1689
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    invoke-direct {p0}, Lcom/facebook/bj;->a()V

    .line 1691
    iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1692
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1703
    const-string v0, "content/unknown"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1712
    const/16 v0, 0x2000

    :try_start_2
    new-array v2, v0, [B

    move v0, v4

    .line 1714
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1715
    iget-object v6, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1716
    add-int/2addr v0, v5

    goto :goto_0

    .line 1719
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1722
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 1726
    const-string v1, ""

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    invoke-direct {p0}, Lcom/facebook/bj;->a()V

    .line 1728
    iget-object v1, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1729
    return-void

    .line 1719
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 1720
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1722
    :cond_1
    if-eqz v2, :cond_2

    .line 1723
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_2
    throw v0

    .line 1719
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1736
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    if-eqz p2, :cond_0

    .line 1738
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1740
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    if-eqz p3, :cond_1

    .line 1742
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    return-void
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1695
    const-string v0, "content/unknown"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1697
    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1698
    invoke-direct {p0}, Lcom/facebook/bj;->a()V

    .line 1699
    iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1700
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1748
    iget-boolean v0, p0, Lcom/facebook/bj;->c:Z

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1751
    iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1752
    iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bj;->c:Z

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1756
    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1759
    invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1761
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1663
    invoke-static {p2}, Lcom/facebook/bc;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-static {p2}, Lcom/facebook/bc;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :goto_0
    return-void

    .line 1665
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1666
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1667
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 1668
    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1669
    :cond_2
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 1670
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 1672
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1677
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    invoke-direct {p0}, Lcom/facebook/bj;->a()V

    .line 1680
    iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1683
    :cond_0
    return-void
.end method
