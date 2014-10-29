.class public final Lcom/instagram/creation/b/c/a/f;
.super Lcom/instagram/common/a/a/a;
.source "UploadVideoChunkRequest.java"


# instance fields
.field private a:Lcom/instagram/creation/b/a/j;

.field private b:Ljava/io/File;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/creation/b/a/j;Ljava/io/File;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/creation/b/c/a/f;->f:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/instagram/creation/b/c/a/f;->a:Lcom/instagram/creation/b/a/j;

    .line 33
    iput-object p3, p0, Lcom/instagram/creation/b/c/a/f;->b:Ljava/io/File;

    .line 34
    iput p4, p0, Lcom/instagram/creation/b/c/a/f;->d:I

    .line 35
    iput p5, p0, Lcom/instagram/creation/b/c/a/f;->e:I

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/instagram/creation/b/c/a/h;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/f;->b:Ljava/io/File;

    iget v2, p0, Lcom/instagram/creation/b/c/a/f;->d:I

    iget v3, p0, Lcom/instagram/creation/b/c/a/f;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/b/c/a/h;-><init>(Ljava/io/File;II)V

    .line 66
    const-string v1, "video"

    iget-object v2, p0, Lcom/instagram/creation/b/c/a/f;->b:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 67
    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final g_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/creation/b/c/a/f;->a:Lcom/instagram/creation/b/a/j;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v2, "Content-Disposition"

    const-string v3, "attachment; filename=\\\"video.mov\\\""

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v2, "Content-Range"

    const-string v3, "bytes %s-%s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/instagram/creation/b/c/a/f;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/instagram/creation/b/c/a/f;->d:I

    iget v7, p0, Lcom/instagram/creation/b/c/a/f;->e:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/instagram/creation/b/c/a/f;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v2, "Session-ID"

    iget-object v3, p0, Lcom/instagram/creation/b/c/a/f;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v2, "job"

    iget-object v3, p0, Lcom/instagram/creation/b/c/a/f;->a:Lcom/instagram/creation/b/a/j;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method
