.class public final Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final j:[Lcom/facebook/a/l;

.field private static n:Lcom/facebook/a/i;

.field private static q:I

.field private static r:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/facebook/a/n;

.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/a/c/g;

.field private k:Z

.field private final l:Ljava/lang/Object;

.field private m:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private o:Landroid/content/Context;

.field private p:Ljava/io/File;

.field private final s:Lcom/facebook/a/c/k;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private volatile v:Ljava/lang/String;

.field private volatile w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private final z:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/i;->c:Ljava/util/regex/Pattern;

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/a/l;

    sget-object v1, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/i;->j:[Lcom/facebook/a/l;

    .line 323
    const/4 v0, 0x5

    sput v0, Lcom/facebook/a/i;->q:I

    .line 324
    const/16 v0, 0x14

    sput v0, Lcom/facebook/a/i;->r:I

    .line 352
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/i;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/32 v0, 0xc800

    iput-wide v0, p0, Lcom/facebook/a/i;->d:J

    .line 145
    iput-boolean v2, p0, Lcom/facebook/a/i;->e:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;

    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->b:Ljava/util/Map;

    .line 304
    iput-boolean v2, p0, Lcom/facebook/a/i;->k:Z

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->l:Ljava/lang/Object;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;

    .line 325
    new-instance v0, Lcom/facebook/a/c/k;

    sget v1, Lcom/facebook/a/i;->r:I

    invoke-direct {v0, v1}, Lcom/facebook/a/c/k;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;

    .line 333
    iput-boolean v2, p0, Lcom/facebook/a/i;->w:Z

    .line 338
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;

    .line 340
    iput-boolean v2, p0, Lcom/facebook/a/i;->A:Z

    .line 1574
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/a/l;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1582
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1585
    invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/facebook/a/l;->b(Lcom/facebook/a/l;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1586
    if-eqz v8, :cond_3

    array-length v0, v8

    if-lez v0, :cond_3

    .line 1587
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1590
    new-instance v4, Lcom/facebook/a/d;

    invoke-direct {v4}, Lcom/facebook/a/d;-><init>()V

    .line 1592
    :try_start_0
    const-string v1, "crash attachment"

    new-instance v2, Lcom/facebook/a/k;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/facebook/a/k;-><init>(Lcom/facebook/a/i;B)V

    sget-object v3, Lcom/facebook/a/a;->b:[Lcom/facebook/a/r;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :goto_0
    array-length v2, v8

    move v1, v7

    :goto_1
    if-ge v7, v2, :cond_2

    aget-object v3, v8, v7

    .line 1607
    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 1608
    const-string v0, "minidumps"

    invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1606
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_1

    .line 1600
    :catch_0
    move-exception v0

    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrieve exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    sget-object v1, Lcom/facebook/a/r;->T:Lcom/facebook/a/r;

    invoke-direct {p0, v1, v0, v4, v9}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    goto :goto_0

    .line 1612
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v3, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;)Lcom/facebook/a/d;

    move-result-object v5

    .line 1613
    const-string v0, "load failed"

    .line 1614
    if-eqz v5, :cond_1

    .line 1615
    invoke-static {p2}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1618
    :cond_1
    sget-object v5, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;

    const/4 v6, 0x0

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v9}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1619
    invoke-static {p2}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1620
    sget-object v0, Lcom/facebook/a/r;->S:Lcom/facebook/a/r;

    const-string v5, "crash attachment"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1621
    invoke-direct {p0, v4}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V

    .line 1622
    invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/facebook/a/b/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1623
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1624
    :catch_1
    move-exception v0

    .line 1626
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send crash attachment report "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1637
    :cond_2
    :goto_3
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#checkAndSendCrashAttachments - finish, sent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    return v1

    .line 1628
    :catch_2
    move-exception v0

    .line 1629
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed on crash attachment file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1630
    invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v1, v7

    goto :goto_3
.end method

.method static synthetic a(Lcom/facebook/a/i;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/d;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1674
    sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    iget-wide v4, p0, Lcom/facebook/a/i;->d:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;)Lcom/facebook/a/d;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1682
    invoke-static {p3}, Lcom/facebook/a/l;->d(Lcom/facebook/a/l;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1692
    new-instance v1, Lcom/facebook/a/d;

    invoke-direct {v1}, Lcom/facebook/a/d;-><init>()V

    .line 1693
    invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 1695
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "crash report "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was too old; deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :goto_0
    return-object v0

    .line 1701
    :cond_0
    const-string v2, ".temp_stacktrace"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 1703
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too recent; skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1706
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, p4

    if-lez v2, :cond_2

    .line 1707
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-byte crash report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeded max size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes; deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1713
    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1714
    const/4 v2, 0x0

    .line 1717
    :try_start_0
    sget-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    if-ne p3, v0, :cond_3

    .line 1718
    invoke-virtual {v1, v4}, Lcom/facebook/a/d;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1740
    :goto_2
    sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;

    invoke-virtual {v1, v0, p2}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    invoke-direct {p0, v1}, Lcom/facebook/a/i;->b(Lcom/facebook/a/d;)V

    move-object v0, v1

    .line 1742
    goto :goto_0

    .line 1721
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    .line 1722
    invoke-static {v4, v0}, Lcom/facebook/a/i;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 1723
    invoke-static {p3}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    :try_start_2
    sget-object v3, Lcom/facebook/a/r;->T:Lcom/facebook/a/r;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "throwable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not load crash report:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1729
    const/4 v2, 0x1

    .line 1730
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1731
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Crash report:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " deleted"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1734
    :catchall_0
    move-exception v0

    move v1, v2

    if-nez v1, :cond_4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v0
.end method

.method public static a()Lcom/facebook/a/i;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Lcom/facebook/a/i;

    invoke-direct {v0}, Lcom/facebook/a/i;-><init>()V

    sput-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;

    .line 654
    :cond_0
    sget-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/facebook/a/r;",
            "Z)",
            "Lcom/facebook/a/m;"
        }
    .end annotation

    .prologue
    .line 1259
    invoke-static {p1}, Lcom/facebook/a/i;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1263
    invoke-direct {p0, v0}, Lcom/facebook/a/i;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    const/4 v0, 0x0

    .line 1383
    :goto_0
    return-object v0

    .line 1269
    :cond_0
    new-instance v4, Lcom/facebook/a/d;

    invoke-direct {v4}, Lcom/facebook/a/d;-><init>()V

    .line 1273
    instance-of v0, p1, Lcom/facebook/a/p;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/facebook/a/p;

    invoke-interface {v0}, Lcom/facebook/a/p;->a()Ljava/lang/String;

    move-result-object v0

    .line 1275
    :goto_1
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Handling exception for "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1284
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1285
    const-string v0, ".temp_stacktrace"

    invoke-direct {p0, v3, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v2, "acra-reports"

    invoke-static {v1, v2, v0}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 1287
    const-string v0, ".stacktrace"

    invoke-direct {p0, v3, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1288
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v1, "acra-reports"

    invoke-static {v0, v1, v6}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 1290
    const/4 v1, 0x0

    .line 1291
    const/4 v5, 0x0

    .line 1297
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/a/i;->A:Z

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1309
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/facebook/a/d;->a(Ljava/io/OutputStream;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    move-object v7, v2

    .line 1319
    :goto_2
    :try_start_2
    sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;

    invoke-direct {p0, v0, v6, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1320
    sget-object v0, Lcom/facebook/a/r;->S:Lcom/facebook/a/r;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1326
    invoke-static {p1}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p2

    .line 1329
    invoke-direct/range {v0 .. v6}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1353
    if-eqz v7, :cond_2

    .line 1354
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1366
    :cond_2
    :goto_3
    if-eqz p4, :cond_6

    .line 1367
    iget-boolean v0, p0, Lcom/facebook/a/i;->w:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0, p0, v4}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;Lcom/facebook/a/d;)V

    .line 1370
    :goto_4
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1371
    invoke-virtual {v0}, Lcom/facebook/a/m;->start()V

    goto/16 :goto_0

    .line 1273
    :cond_3
    const-string v0, "crash"

    goto/16 :goto_1

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    :goto_5
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v7, "An error occurred while creating the report file ..."

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/i;->w:Z

    move-object v7, v1

    goto :goto_2

    .line 1360
    :catch_1
    move-exception v0

    .line 1361
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "An error occurred while deleting closing the report file ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1330
    :catch_2
    move-exception v0

    .line 1337
    :try_start_4
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    sget-object v1, Lcom/facebook/a/r;->N:Lcom/facebook/a/r;

    invoke-static {v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1347
    :try_start_5
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1353
    :goto_6
    if-eqz v7, :cond_2

    .line 1354
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 1360
    :catch_3
    move-exception v0

    .line 1361
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "An error occurred while deleting closing the report file ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1339
    :catch_4
    move-exception v1

    .line 1344
    :try_start_7
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "An error occurred while gathering internal crash data ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    sget-object v1, Lcom/facebook/a/r;->N:Lcom/facebook/a/r;

    const-string v2, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1347
    :try_start_8
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 1350
    :catchall_0
    move-exception v0

    .line 1353
    if-eqz v7, :cond_4

    .line 1354
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1355
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1358
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1363
    :cond_4
    :goto_7
    throw v0

    .line 1347
    :catchall_1
    move-exception v1

    :try_start_a
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "An error occurred while gathering crash data ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1360
    :catch_5
    move-exception v1

    .line 1361
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1367
    :cond_5
    new-instance v0, Lcom/facebook/a/m;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/a/l;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V

    goto/16 :goto_4

    .line 1380
    :cond_6
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1383
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1312
    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5
.end method

.method private varargs a([Lcom/facebook/a/l;)Lcom/facebook/a/m;
    .locals 1
    .parameter

    .prologue
    .line 1878
    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0, p0, p1}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V

    .line 1879
    invoke-virtual {v0}, Lcom/facebook/a/m;->start()V

    .line 1880
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1841
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1842
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 730
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 731
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 732
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/Display;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 1020
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1021
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps\nmetrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1809
    .line 1811
    new-array v3, p1, [B

    move v1, v0

    .line 1812
    :goto_0
    sub-int v2, p1, v1

    if-lez v2, :cond_0

    .line 1813
    sub-int v0, p1, v1

    invoke-virtual {p0, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1814
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1815
    add-int/2addr v1, v0

    goto :goto_0

    .line 1820
    :cond_0
    if-nez v0, :cond_1

    .line 1821
    const-string v0, ""

    .line 1833
    :goto_1
    return-object v0

    .line 1825
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1826
    const/4 v2, 0x0

    .line 1828
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    const/4 v2, 0x0

    :try_start_1
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1830
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1831
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1833
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1834
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw v0

    .line 1833
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1129
    if-nez p0, :cond_0

    .line 1130
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1133
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1134
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1135
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1136
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/a/i;->b(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-static {v0, p1}, Lcom/facebook/a/i;->b(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/facebook/a/i;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1518
    const-string v1, "acra-reports"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ".stacktrace"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, ".temp_stacktrace"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1520
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1527
    invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 1528
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 1529
    const/4 v6, 0x5

    if-lt v0, v6, :cond_0

    .line 1537
    const-string v6, "acra-reports"

    invoke-static {p1, v6, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1541
    :cond_0
    sget-object v6, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1543
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/d;

    move-result-object v6

    .line 1545
    if-eqz v6, :cond_1

    .line 1546
    sget-object v7, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;

    invoke-virtual {v6, v7, v5}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    sget-object v7, Lcom/facebook/a/r;->L:Lcom/facebook/a/r;

    invoke-virtual {v6, v7, v3}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object v7, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1552
    invoke-direct {p0, v6}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V

    .line 1553
    const-string v6, "acra-reports"

    invoke-static {p1, v6, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/a/b/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 1567
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to send crash reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    const-string v0, "acra-reports"

    invoke-static {p1, v0, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_2
    :goto_2
    return-void

    .line 1559
    :catch_1
    move-exception v0

    .line 1560
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    const-string v0, "acra-reports"

    invoke-static {p1, v0, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1563
    :catch_2
    move-exception v0

    .line 1564
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 902
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 905
    sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 910
    :cond_0
    sget-object v0, Lcom/facebook/a/r;->J:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    sget-object v0, Lcom/facebook/a/r;->J:Lcom/facebook/a/r;

    invoke-direct {p0}, Lcom/facebook/a/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 915
    :cond_1
    sget-object v0, Lcom/facebook/a/r;->u:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    sget-object v0, Lcom/facebook/a/r;->u:Lcom/facebook/a/r;

    iget-object v2, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 920
    :cond_2
    sget-object v0, Lcom/facebook/a/r;->O:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    sget-object v0, Lcom/facebook/a/r;->O:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/i;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 925
    :cond_3
    sget-object v0, Lcom/facebook/a/r;->P:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 926
    sget-object v0, Lcom/facebook/a/r;->P:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/i;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 929
    :cond_4
    sget-object v0, Lcom/facebook/a/r;->s:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 931
    sget-object v2, Lcom/facebook/a/r;->s:Lcom/facebook/a/r;

    invoke-static {v0}, Lcom/facebook/a/c;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 935
    :cond_5
    sget-object v0, Lcom/facebook/a/r;->p:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 936
    invoke-static {}, Lcom/facebook/a/i;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 937
    sget-object v2, Lcom/facebook/a/r;->p:Lcom/facebook/a/r;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 941
    :cond_6
    sget-object v0, Lcom/facebook/a/r;->w:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 942
    sget-object v0, Lcom/facebook/a/r;->w:Lcom/facebook/a/r;

    invoke-static {p1}, Lcom/facebook/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 946
    :cond_7
    sget-object v0, Lcom/facebook/a/r;->v:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 947
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 948
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 949
    sget-object v2, Lcom/facebook/a/r;->v:Lcom/facebook/a/r;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 953
    :cond_8
    sget-object v0, Lcom/facebook/a/r;->M:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 955
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_14

    .line 956
    iget-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;

    invoke-virtual {v0}, Lcom/facebook/a/c/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    :goto_0
    sget-object v2, Lcom/facebook/a/r;->M:Lcom/facebook/a/r;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 964
    :cond_9
    sget-object v0, Lcom/facebook/a/r;->K:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 965
    sget-object v0, Lcom/facebook/a/r;->K:Lcom/facebook/a/r;

    invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 967
    :cond_a
    invoke-direct {p0}, Lcom/facebook/a/i;->g()V

    .line 970
    sget-object v0, Lcom/facebook/a/r;->V:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 971
    sget-object v0, Lcom/facebook/a/r;->V:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/c/h;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 974
    :cond_b
    sget-object v0, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 975
    :cond_c
    invoke-static {}, Lcom/facebook/a/c/h;->b()Lcom/facebook/a/c/i;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_e

    .line 977
    sget-object v2, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 978
    sget-object v2, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;

    iget-object v3, v0, Lcom/facebook/a/c/i;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 980
    :cond_d
    sget-object v2, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 981
    sget-object v2, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;

    iget-object v0, v0, Lcom/facebook/a/c/i;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 989
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_12

    iget-boolean v0, p0, Lcom/facebook/a/i;->B:Z

    if-eqz v0, :cond_12

    .line 990
    sget-object v0, Lcom/facebook/a/r;->y:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 991
    sget-object v0, Lcom/facebook/a/r;->y:Lcom/facebook/a/r;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 993
    :cond_f
    sget-object v0, Lcom/facebook/a/r;->z:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 994
    sget-object v0, Lcom/facebook/a/r;->z:Lcom/facebook/a/r;

    const-string v2, "events"

    invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 996
    :cond_10
    sget-object v0, Lcom/facebook/a/r;->A:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 997
    sget-object v0, Lcom/facebook/a/r;->A:Lcom/facebook/a/r;

    const-string v2, "radio"

    invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 999
    :cond_11
    sget-object v0, Lcom/facebook/a/r;->x:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1000
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/a/a/b;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/a/g;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    sget-object v2, Lcom/facebook/a/r;->x:Lcom/facebook/a/r;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1005
    :cond_12
    sget-object v0, Lcom/facebook/a/r;->ad:Lcom/facebook/a/r;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 1007
    sget-object v0, Lcom/facebook/a/r;->ad:Lcom/facebook/a/r;

    invoke-static {p1}, Lcom/facebook/a/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1009
    :cond_13
    return-void

    .line 958
    :cond_14
    iget-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;

    sget v2, Lcom/facebook/a/i;->q:I

    invoke-virtual {v0, v2}, Lcom/facebook/a/c/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/facebook/a/d;)V
    .locals 5
    .parameter

    .prologue
    .line 1436
    const/4 v0, 0x0

    .line 1437
    iget-object v1, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/b;

    .line 1439
    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/a/b/b;->a(Lcom/facebook/a/d;)V
    :try_end_0
    .catch Lcom/facebook/a/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    const/4 v0, 0x1

    move v1, v0

    .line 1450
    goto :goto_0

    .line 1443
    :catch_0
    move-exception v3

    .line 1444
    if-nez v1, :cond_0

    .line 1445
    throw v3

    .line 1447
    :cond_0
    sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ReportSender of class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1452
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/a/d;Ljava/io/Writer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/facebook/a/i;->p()Ljava/util/Map;

    move-result-object v0

    .line 808
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 809
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1186
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/a/i;->w:Z

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/i;->w:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/facebook/a/i;->d()Lcom/facebook/a/n;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lcom/facebook/a/r;",
            "Lcom/facebook/a/d;",
            "Ljava/io/Writer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1150
    if-nez p3, :cond_1

    .line 1151
    sget-object v3, Lcom/facebook/a/a;->c:[Lcom/facebook/a/r;

    .line 1155
    :goto_0
    sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;

    invoke-direct {p0}, Lcom/facebook/a/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1159
    sget-object v0, Lcom/facebook/a/r;->r:Lcom/facebook/a/r;

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1161
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    goto :goto_1

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1166
    invoke-direct {p0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1168
    sget-object v0, Lcom/facebook/a/r;->q:Lcom/facebook/a/r;

    invoke-direct {p0, p6, p2}, Lcom/facebook/a/i;->a(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V

    .line 1169
    return-void

    :cond_1
    move-object v3, p3

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 498
    if-eqz p1, :cond_1

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 499
    :goto_0
    if-eqz p2, :cond_0

    const-string v0, "\n"

    const-string v2, "\\n"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    return-void

    :cond_1
    move-object v1, v0

    .line 498
    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e;

    invoke-interface {v0}, Lcom/facebook/a/e;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    invoke-static {p0, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "Caught throwable while getting custom report data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1468
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1469
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v1, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-array v0, v3, [Ljava/lang/String;

    .line 1494
    :cond_0
    :goto_0
    return-object v0

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_2

    .line 1475
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Looking for error files in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    new-instance v1, Lcom/facebook/a/j;

    invoke-direct {v1, p0, p2}, Lcom/facebook/a/j;-><init>(Lcom/facebook/a/i;[Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 1489
    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0

    .line 1491
    :cond_2
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1494
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1846
    invoke-static {p0, p1, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1847
    if-nez v0, :cond_0

    .line 1848
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1850
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/a/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    return-void
.end method

.method private b(Lcom/facebook/a/d;)V
    .locals 5
    .parameter

    .prologue
    .line 1754
    sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;

    invoke-virtual {p1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    iget-object v1, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 1758
    :goto_0
    sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;

    invoke-virtual {p1, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1759
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1761
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/a/r;

    sget-object v4, Lcom/facebook/a/r;->e:Lcom/facebook/a/r;

    invoke-virtual {v1, v4}, Lcom/facebook/a/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1763
    if-nez v2, :cond_1

    .line 1764
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1756
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 1770
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1771
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1778
    :cond_4
    invoke-direct {p0}, Lcom/facebook/a/i;->e()Ljava/lang/String;

    move-result-object v1

    .line 1779
    sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;

    invoke-virtual {p1, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1780
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1781
    sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    :cond_5
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    invoke-static {p0, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;
    .locals 1
    .parameter

    .prologue
    .line 1947
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/a/a;->c:[Lcom/facebook/a/r;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/a/a;->b:[Lcom/facebook/a/r;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1793
    if-eqz p0, :cond_0

    .line 1794
    sget-object v0, Lcom/facebook/a/i;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1795
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1799
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter

    .prologue
    .line 1963
    instance-of v0, p0, Lcom/facebook/a/p;

    if-eqz v0, :cond_1

    .line 1972
    :cond_0
    return-object p0

    .line 1967
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1969
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method private d()Lcom/facebook/a/n;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/a/i;->C:Lcom/facebook/a/n;

    return-object v0
.end method

.method private d(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1983
    iget-object v1, p0, Lcom/facebook/a/i;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1984
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/a/i;->k:Z

    if-eqz v2, :cond_0

    .line 1986
    const/4 v0, 0x0

    monitor-exit v1

    .line 1993
    :goto_0
    return v0

    .line 1989
    :cond_0
    instance-of v2, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 1991
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/a/i;->k:Z

    .line 1993
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/a/i;->v:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/facebook/a/i;->x:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    .line 532
    :goto_0
    return-object v0

    .line 511
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    .line 512
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 514
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 515
    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 520
    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 525
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_3

    .line 526
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    .line 531
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/i;->x:Z

    .line 532
    iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/a/i;->x:Z

    .line 538
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/facebook/a/i;->f()Ljava/lang/String;

    move-result-object v0

    .line 546
    if-nez v0, :cond_0

    .line 547
    const-string v0, "n/a"

    .line 549
    :cond_0
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 6

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/facebook/a/i;->f()Ljava/lang/String;

    move-result-object v3

    .line 559
    if-nez v3, :cond_3

    .line 560
    const/4 v1, 0x0

    .line 562
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/self/cmdline"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 563
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x80

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 566
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 572
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 574
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 581
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 582
    const-string v0, ""

    .line 584
    :cond_2
    return-object v0

    .line 568
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 569
    :goto_2
    sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v4, "Failed to get process name."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    move-object v2, v1

    goto :goto_0

    .line 575
    :catch_1
    move-exception v1

    .line 576
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "Failed to close file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 568
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method private static j()Ljava/lang/String;
    .locals 6

    .prologue
    .line 594
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 595
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "yes"

    .line 628
    :goto_0
    return-object v0

    .line 601
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const-string v0, "yes"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to find Superuser.pak"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_3

    .line 612
    const-string v1, "PATH"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 615
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/su"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    const-string v0, "yes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 622
    :catch_1
    move-exception v0

    .line 623
    sget-object v4, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v5, "Failed to find su binary in the PATH"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 628
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method private static k()J
    .locals 2

    .prologue
    .line 635
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static l()J
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .locals 8

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 746
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    const-wide/32 v6, 0xc800

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 748
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 747
    add-int/lit16 v0, v0, 0x2800

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 755
    :cond_1
    if-eqz v1, :cond_2

    .line 756
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 759
    :cond_2
    :goto_1
    return-void

    .line 751
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 752
    :goto_2
    :try_start_3
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "Failed to pre-allocate crash report file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 755
    if-eqz v1, :cond_2

    .line 756
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 759
    :catch_1
    move-exception v0

    goto :goto_1

    .line 754
    :catchall_0
    move-exception v0

    .line 755
    :goto_3
    if-eqz v2, :cond_3

    .line 756
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 758
    :cond_3
    :goto_4
    throw v0

    .line 759
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 754
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 751
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static n()J
    .locals 4

    .prologue
    .line 770
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 771
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 773
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 774
    mul-long/2addr v0, v2

    .line 776
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static o()J
    .locals 4

    .prologue
    .line 788
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 789
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 791
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 792
    mul-long/2addr v0, v2

    .line 794
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private p()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/r;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v1, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    monitor-enter v1

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->l:Lcom/facebook/a/r;

    const-class v3, Landroid/os/Build;

    invoke-static {v3}, Lcom/facebook/a/q;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->Q:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->D:Lcom/facebook/a/r;

    iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/a/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->o:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/i;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Lcom/facebook/a/i;->i:Lcom/facebook/a/c/g;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Lcom/facebook/a/c/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 832
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_0

    .line 834
    iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v3, Lcom/facebook/a/r;->C:Lcom/facebook/a/r;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 841
    iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v3, Lcom/facebook/a/r;->t:Lcom/facebook/a/r;

    invoke-static {v0}, Lcom/facebook/a/i;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->G:Lcom/facebook/a/r;

    const-class v3, Landroid/os/Environment;

    invoke-static {v3}, Lcom/facebook/a/q;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->F:Lcom/facebook/a/r;

    iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->H:Lcom/facebook/a/r;

    iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->I:Lcom/facebook/a/r;

    iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/a/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 857
    iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 859
    iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v3, Lcom/facebook/a/r;->ab:Lcom/facebook/a/r;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->ae:Lcom/facebook/a/r;

    invoke-static {}, Lcom/facebook/a/i;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 874
    const-string v0, "DALVIK"

    .line 884
    :goto_0
    return-object v0

    .line 876
    :cond_0
    const-string v0, "java.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_2

    .line 878
    const-string v1, "/system/framework/core-libart.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    const-string v0, "ART"

    goto :goto_0

    .line 880
    :cond_1
    const-string v1, "/system/framework/core.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    const-string v0, "DALVIK"

    goto :goto_0

    .line 884
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1906
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/a/m;"
        }
    .end annotation

    .prologue
    .line 1225
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1226
    :goto_0
    invoke-static {p1}, Lcom/facebook/a/i;->b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;

    move-result-object v1

    .line 1227
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;

    move-result-object v0

    return-object v0

    .line 1225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 405
    if-eqz p2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/facebook/a/d;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1649
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 1652
    sget-object v1, Lcom/facebook/a/r;->L:Lcom/facebook/a/r;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    invoke-direct {p0, p2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V

    .line 1660
    sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;

    invoke-virtual {p2, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1661
    if-eqz v0, :cond_0

    .line 1662
    const-string v1, "acra-reports"

    invoke-static {p1, v1, v0}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1670
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    :try_start_2
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to send in-memory crash report: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_3

    .line 669
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 671
    iput-boolean p2, p0, Lcom/facebook/a/i;->B:Z

    .line 673
    iput-object p1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    .line 675
    new-instance v0, Lcom/facebook/a/c/g;

    invoke-direct {v0, p1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V

    .line 676
    invoke-virtual {v0}, Lcom/facebook/a/c/g;->a()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 678
    if-eqz v1, :cond_0

    .line 679
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;

    .line 680
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/facebook/a/i;->u:Ljava/lang/String;

    .line 683
    :cond_0
    new-instance v0, Lcom/facebook/a/c/g;

    invoke-direct {v0, p1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/a/i;->i:Lcom/facebook/a/c/g;

    .line 684
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    if-eqz v2, :cond_5

    const-string v0, "cyanogenmod"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 687
    :goto_1
    iget-object v3, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 690
    :try_start_0
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->b:Lcom/facebook/a/r;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->d:Lcom/facebook/a/r;

    iget-object v5, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->e:Lcom/facebook/a/r;

    iget-object v5, p0, Lcom/facebook/a/i;->u:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->f:Lcom/facebook/a/r;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->h:Lcom/facebook/a/r;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->i:Lcom/facebook/a/r;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v4, Lcom/facebook/a/r;->j:Lcom/facebook/a/r;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v2, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v3, Lcom/facebook/a/r;->k:Lcom/facebook/a/r;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->m:Lcom/facebook/a/r;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->n:Lcom/facebook/a/r;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v0, "n/a"

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_1
    iget-object v2, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v3, Lcom/facebook/a/r;->g:Lcom/facebook/a/r;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 710
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->aa:Lcom/facebook/a/r;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    if-eqz v1, :cond_2

    .line 713
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->Y:Lcom/facebook/a/r;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Lcom/facebook/a/i;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;

    sget-object v2, Lcom/facebook/a/r;->Z:Lcom/facebook/a/r;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v3, v4}, Lcom/facebook/a/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_2
    :goto_2
    const-string v0, "acra-reports"

    const-string v1, "reportfile.prealloc"

    invoke-static {p1, v0, v1}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;

    .line 725
    invoke-direct {p0}, Lcom/facebook/a/i;->m()V

    .line 727
    :cond_3
    return-void

    .line 680
    :cond_4
    const-string v0, "not set"

    goto/16 :goto_0

    .line 685
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 717
    :catch_0
    move-exception v0

    .line 720
    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v2, "failed to install constants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method final varargs declared-synchronized a(Landroid/content/Context;[Lcom/facebook/a/l;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1507
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 1508
    sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    if-ne v3, v2, :cond_0

    .line 1509
    invoke-direct {p0, p1}, Lcom/facebook/a/i;->a(Landroid/content/Context;)V

    .line 1507
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Lcom/facebook/a/l;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1514
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/facebook/a/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1923
    invoke-direct {p0}, Lcom/facebook/a/i;->r()V

    .line 1924
    invoke-direct {p0, p1}, Lcom/facebook/a/i;->b(Lcom/facebook/a/b/b;)V

    .line 1925
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/facebook/a/i;->v:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public final b()Lcom/facebook/a/m;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1856
    const-string v0, "acra-reports"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ".stacktrace"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1857
    const-string v1, "minidumps"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, ".dmp"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1858
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    array-length v0, v1

    if-lez v0, :cond_3

    .line 1860
    :cond_1
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 1861
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 1862
    iput-boolean v4, p0, Lcom/facebook/a/i;->e:Z

    .line 1864
    :cond_2
    sget-object v0, Lcom/facebook/a/i;->j:[Lcom/facebook/a/l;

    invoke-direct {p0, v0}, Lcom/facebook/a/i;->a([Lcom/facebook/a/l;)Lcom/facebook/a/m;

    move-result-object v0

    .line 1866
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1914
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/facebook/a/i;->d:J

    .line 1915
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 1040
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA caught a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-boolean v3, p0, Lcom/facebook/a/i;->A:Z

    .line 1047
    sget-object v0, Lcom/facebook/a/i;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    .line 1048
    const/4 v1, 0x0

    .line 1051
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1052
    :try_start_1
    const-string v1, "IS_PROCESSING_ANOTHER_EXCEPTION"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1059
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;

    move-result-object v1

    .line 1061
    if-eqz v1, :cond_1

    .line 1062
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/a/m;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v2

    .line 1068
    sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v4, "Error : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1072
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/a/m;->a()Ljava/lang/Throwable;

    move-result-object v1

    .line 1073
    if-eqz v1, :cond_1

    .line 1074
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string v3, "ReportsWorkerSender failed with exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    invoke-static {p2}, Lcom/facebook/a/i;->b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;

    move-result-object v2

    .line 1079
    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1086
    :cond_2
    return-void

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
