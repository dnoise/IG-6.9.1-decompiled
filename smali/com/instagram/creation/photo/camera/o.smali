.class final Lcom/instagram/creation/photo/camera/o;
.super Ljava/lang/Thread;
.source "CameraFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/photo/camera/t;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 1
    .parameter

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    .line 1561
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/o;->start()V

    .line 1562
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1648
    monitor-enter p0

    .line 1649
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1651
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1654
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1656
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a([BIII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1567
    new-instance v0, Lcom/instagram/creation/photo/camera/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/camera/t;-><init>(B)V

    .line 1569
    iput-object p1, v0, Lcom/instagram/creation/photo/camera/t;->a:[B

    .line 1570
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/instagram/creation/photo/camera/t;->b:Landroid/location/Location;

    .line 1571
    iput p2, v0, Lcom/instagram/creation/photo/camera/t;->c:I

    .line 1572
    iput p3, v0, Lcom/instagram/creation/photo/camera/t;->d:I

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/creation/photo/camera/t;->e:J

    .line 1574
    iget-wide v1, v0, Lcom/instagram/creation/photo/camera/t;->e:J

    invoke-static {v1, v2}, Lcom/instagram/camera/h;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    .line 1575
    iput p4, v0, Lcom/instagram/creation/photo/camera/t;->g:I

    .line 1577
    monitor-enter p0

    .line 1578
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1580
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1583
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1585
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1587
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    iget-object v0, v0, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    return-object v0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1661
    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/o;->b()V

    .line 1662
    monitor-enter p0

    .line 1663
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/photo/camera/o;->c:Z

    .line 1664
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1665
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/o;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1671
    :goto_0
    return-void

    .line 1665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1671
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 11

    .prologue
    .line 1597
    :goto_0
    monitor-enter p0

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    iget-boolean v1, p0, Lcom/instagram/creation/photo/camera/o;->c:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1606
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1610
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1612
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/instagram/creation/photo/camera/t;

    move-object v7, v0

    .line 1613
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1614
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 1616
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->x()Z

    move-result v1

    .line 1617
    invoke-static {}, Lcom/instagram/creation/photo/c/g;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-static {v1, v3}, Lcom/instagram/creation/photo/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, v7, Lcom/instagram/creation/photo/camera/t;->a:[B

    invoke-static {v2, v1, v3, v8}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Ljava/lang/String;Ljava/lang/String;[B[I)Ljava/io/File;

    move-result-object v1

    .line 1623
    if-nez v1, :cond_3

    .line 1624
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1639
    :goto_3
    monitor-enter p0

    .line 1640
    :try_start_4
    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1641
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1642
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1617
    :cond_2
    const-string v1, "temp.jpg"

    goto :goto_2

    .line 1625
    :cond_3
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/l/b/a;->x()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1626
    iget-object v9, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->E(Lcom/instagram/creation/photo/camera/c;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    iget-wide v3, v7, Lcom/instagram/creation/photo/camera/t;->e:J

    iget-object v5, v7, Lcom/instagram/creation/photo/camera/t;->b:Landroid/location/Location;

    invoke-static {}, Lcom/instagram/creation/photo/c/g;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/instagram/creation/photo/camera/t;->f:Ljava/lang/String;

    const-string v10, ".jpg"

    invoke-static {v7, v10}, Lcom/instagram/creation/photo/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;[I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_3

    .line 1635
    :cond_4
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/o;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
