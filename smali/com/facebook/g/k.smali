.class final Lcom/facebook/g/k;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/g/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/facebook/g/k;->a:Ljava/io/File;

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/g/k;->b:J

    .line 574
    return-void
.end method

.method private a(Lcom/facebook/g/k;)I
    .locals 4
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/facebook/g/k;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/g/k;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 587
    const/4 v0, -0x1

    .line 591
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/g/k;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/g/k;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 589
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/g/k;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/g/k;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/facebook/g/k;->a:Ljava/io/File;

    return-object v0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Lcom/facebook/g/k;->b:J

    return-wide v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, Lcom/facebook/g/k;

    .end local p1
    invoke-direct {p0, p1}, Lcom/facebook/g/k;->a(Lcom/facebook/g/k;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "another"

    .prologue
    .line 597
    instance-of v0, p1, Lcom/facebook/g/k;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/g/k;

    .end local p1
    invoke-direct {p0, p1}, Lcom/facebook/g/k;->a(Lcom/facebook/g/k;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
