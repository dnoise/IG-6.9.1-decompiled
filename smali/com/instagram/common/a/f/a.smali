.class public final Lcom/instagram/common/a/f/a;
.super Ljava/lang/Object;
.source "ByteArrayParam.java"

# interfaces
.implements Lcom/instagram/common/a/f/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/common/a/f/a;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/instagram/common/a/f/a;->b:[B

    .line 16
    iput-object p3, p0, Lcom/instagram/common/a/f/a;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/common/a/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/common/a/f/a;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/common/a/f/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/instagram/common/a/f/a;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
