.class final Lcom/facebook/g/e;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# static fields
.field private static final a:Ljava/io/FilenameFilter;

.field private static final b:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/facebook/g/f;

    invoke-direct {v0}, Lcom/facebook/g/f;-><init>()V

    sput-object v0, Lcom/facebook/g/e;->a:Ljava/io/FilenameFilter;

    .line 300
    new-instance v0, Lcom/facebook/g/g;

    invoke-direct {v0}, Lcom/facebook/g/g;-><init>()V

    sput-object v0, Lcom/facebook/g/e;->b:Ljava/io/FilenameFilter;

    return-void
.end method

.method static a()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/facebook/g/e;->a:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 308
    invoke-static {}, Lcom/facebook/g/e;->b()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method static b(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/g/b;->a()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static b()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/facebook/g/e;->b:Ljava/io/FilenameFilter;

    return-object v0
.end method
