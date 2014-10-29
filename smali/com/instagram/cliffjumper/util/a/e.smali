.class public Lcom/instagram/cliffjumper/util/a/e;
.super Ljava/lang/Object;
.source "ProcessorInfoUtil.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/instagram/cliffjumper/util/a/e;

    sput-object v0, Lcom/instagram/cliffjumper/util/a/e;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 35
    iget v1, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I

    if-nez v1, :cond_1

    move v1, v0

    .line 40
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 41
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    if-nez v1, :cond_2

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    :goto_1
    iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I

    return v0

    .line 53
    :cond_2
    :try_start_1
    iput v1, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    sget-object v0, Lcom/instagram/cliffjumper/util/a/e;->a:Ljava/lang/Class;

    .line 57
    iput v5, p0, Lcom/instagram/cliffjumper/util/a/e;->b:I

    goto :goto_1
.end method

.method private c()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I

    .line 71
    :cond_0
    iget v0, p0, Lcom/instagram/cliffjumper/util/a/e;->c:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 84
    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/instagram/cliffjumper/util/a/e;->b()I

    move-result v0

    .line 88
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/instagram/cliffjumper/util/a/e;->c()I

    move-result v0

    goto :goto_0
.end method
