.class public final Lcom/c/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/c/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/c/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/c/a/g;->a:Lcom/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p2, p0, Lcom/c/a/g;->b:Ljava/lang/String;

    .line 687
    iput-wide p3, p0, Lcom/c/a/g;->c:J

    .line 688
    iput-object p5, p0, Lcom/c/a/g;->d:[Ljava/io/InputStream;

    .line 689
    iput-object p6, p0, Lcom/c/a/g;->e:[J

    .line 690
    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 679
    invoke-direct/range {p0 .. p6}, Lcom/c/a/g;-><init>(Lcom/c/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/c/a/g;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 717
    iget-object v1, p0, Lcom/c/a/g;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 718
    invoke-static {v3}, Lcom/c/a/j;->a(Ljava/io/Closeable;)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_0
    return-void
.end method
