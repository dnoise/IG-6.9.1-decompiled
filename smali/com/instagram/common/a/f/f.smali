.class public final Lcom/instagram/common/a/f/f;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;
.implements Lcom/instagram/common/a/f/e;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lch/boye/httpclientandroidlib/Header;

.field private final c:Lcom/instagram/common/a/f/b;

.field private final d:Lcom/instagram/common/a/f/b;

.field private e:Z

.field private f:Lcom/instagram/common/a/f/j;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/common/a/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/instagram/common/a/f/f;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/instagram/common/a/f/f;->e:Z

    .line 29
    sget-object v0, Lcom/instagram/common/a/f/j;->a:Lcom/instagram/common/a/f/j;

    iput-object v0, p0, Lcom/instagram/common/a/f/f;->f:Lcom/instagram/common/a/f/j;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    move v0, v1

    .line 36
    :goto_0
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_0

    .line 37
    sget-object v4, Lcom/instagram/common/a/f/f;->a:[C

    sget-object v5, Lcom/instagram/common/a/f/f;->a:[C

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "multipart/form-data; boundary="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/instagram/common/a/f/f;->b:Lch/boye/httpclientandroidlib/Header;

    .line 41
    new-instance v2, Lcom/instagram/common/a/f/i;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "--"

    aput-object v4, v3, v1

    aput-object v0, v3, v6

    const-string v4, "\r\n"

    aput-object v4, v3, v7

    invoke-direct {v2, v3}, Lcom/instagram/common/a/f/i;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/instagram/common/a/f/f;->c:Lcom/instagram/common/a/f/b;

    .line 42
    new-instance v2, Lcom/instagram/common/a/f/i;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "--"

    aput-object v4, v3, v1

    aput-object v0, v3, v6

    const-string v0, "--"

    aput-object v0, v3, v7

    const-string v0, "\r\n"

    aput-object v0, v3, v8

    invoke-direct {v2, v3}, Lcom/instagram/common/a/f/i;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/instagram/common/a/f/f;->d:Lcom/instagram/common/a/f/b;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/f/j;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/common/a/f/f;->f:Lcom/instagram/common/a/f/j;

    .line 47
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/common/a/f/h;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/common/a/f/f;->c:Lcom/instagram/common/a/f/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/instagram/common/a/f/i;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Content-Disposition: form-data; name=\""

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    const/4 v2, 0x2

    const-string v3, "\"; filename=\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-interface {p2}, Lcom/instagram/common/a/f/h;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Content-Type: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-interface {p2}, Lcom/instagram/common/a/f/h;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Content-Transfer-Encoding: binary"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/instagram/common/a/f/i;-><init>([Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    new-instance v1, Lcom/instagram/common/a/f/g;

    invoke-direct {v1, p2}, Lcom/instagram/common/a/f/g;-><init>(Lcom/instagram/common/a/f/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    new-instance v1, Lcom/instagram/common/a/f/i;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "\r\n"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/instagram/common/a/f/i;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iput-boolean v4, p0, Lcom/instagram/common/a/f/f;->e:Z

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/common/a/f/f;->c:Lcom/instagram/common/a/f/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/instagram/common/a/f/i;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition: form-data; name=\""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const/4 v2, 0x6

    const-string v3, "\r\n"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/instagram/common/a/f/i;-><init>([Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public final consumeContent()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContent circumvents upload progress listening"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 6

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    .line 72
    iget-object v2, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/f/b;

    .line 73
    invoke-interface {v0}, Lcom/instagram/common/a/f/b;->a()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->d:Lcom/instagram/common/a/f/b;

    invoke-interface {v0}, Lcom/instagram/common/a/f/b;->a()J

    move-result-wide v3

    add-long v0, v1, v3

    return-wide v0
.end method

.method public final getContentType()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->b:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/instagram/common/a/f/f;->e:Z

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .parameter "out"

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/instagram/common/a/f/f;->getContentLength()J

    move-result-wide v4

    .line 102
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->f:Lcom/instagram/common/a/f/j;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/instagram/common/a/f/j;->a(JJ)V

    .line 103
    iget-object v0, p0, Lcom/instagram/common/a/f/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/instagram/common/a/f/b;

    .line 104
    new-instance v0, Lcom/instagram/common/a/f/c;

    iget-object v1, p0, Lcom/instagram/common/a/f/f;->f:Lcom/instagram/common/a/f/j;

    invoke-direct/range {v0 .. v5}, Lcom/instagram/common/a/f/c;-><init>(Lcom/instagram/common/a/f/j;JJ)V

    invoke-interface {v6, p1, v0}, Lcom/instagram/common/a/f/b;->a(Ljava/io/OutputStream;Lcom/instagram/common/a/f/c;)V

    .line 106
    invoke-interface {v6}, Lcom/instagram/common/a/f/b;->a()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 107
    goto :goto_0

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/instagram/common/a/f/f;->d:Lcom/instagram/common/a/f/b;

    new-instance v0, Lcom/instagram/common/a/f/c;

    iget-object v1, p0, Lcom/instagram/common/a/f/f;->f:Lcom/instagram/common/a/f/j;

    invoke-direct/range {v0 .. v5}, Lcom/instagram/common/a/f/c;-><init>(Lcom/instagram/common/a/f/j;JJ)V

    invoke-interface {v6, p1, v0}, Lcom/instagram/common/a/f/b;->a(Ljava/io/OutputStream;Lcom/instagram/common/a/f/c;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/a/f/f;->e:Z

    .line 112
    return-void
.end method
