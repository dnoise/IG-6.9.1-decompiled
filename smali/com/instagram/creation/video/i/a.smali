.class public final Lcom/instagram/creation/video/i/a;
.super Ljava/lang/Object;
.source "Clip.java"


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/instagram/creation/video/i/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    .line 30
    iput p1, p0, Lcom/instagram/creation/video/i/a;->g:I

    .line 31
    iput-wide p2, p0, Lcom/instagram/creation/video/i/a;->d:J

    .line 32
    sget v0, Lcom/instagram/creation/video/i/c;->b:I

    iput v0, p0, Lcom/instagram/creation/video/i/a;->e:I

    .line 33
    iput-object p4, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 44
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/instagram/creation/video/i/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v1

    .line 47
    new-instance v0, Lcom/instagram/creation/video/i/a;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/instagram/creation/video/i/a;

    const/4 v1, 0x0

    sget v2, Lcom/instagram/creation/video/i/a;->a:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/3gpp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/3gpp2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/creation/video/i/a;->f:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/i/a;->b(J)V

    .line 81
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/instagram/creation/video/i/a;->e:I

    .line 101
    iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/b;

    .line 102
    invoke-interface {v0, p1}, Lcom/instagram/creation/video/i/b;->a(I)V

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/instagram/creation/video/i/a;->f:J

    .line 74
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/b;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/instagram/creation/video/i/a;->d:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/instagram/creation/video/i/a;->g:I

    .line 133
    return-void
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/instagram/creation/video/i/a;->d:J

    .line 85
    iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/b;

    .line 86
    invoke-interface {v0, p0}, Lcom/instagram/creation/video/i/b;->a(Lcom/instagram/creation/video/i/a;)V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public final b(Lcom/instagram/creation/video/i/b;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/instagram/creation/video/i/a;->e:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/instagram/creation/video/i/a;->g:I

    return v0
.end method
