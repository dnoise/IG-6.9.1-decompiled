.class public Lcom/instagram/creation/video/g/b/g;
.super Ljava/lang/Object;
.source "MediaCodecFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/instagram/creation/video/g/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/instagram/creation/video/g/b/g;

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->a:Ljava/lang/Class;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->b:Ljava/util/Set;

    const-string v1, "OMX.ittiam.video.encoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->b:Ljava/util/Set;

    const-string v1, "OMX.Exynos.avc.enc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->c:Ljava/util/Map;

    const-string v1, "OMX.qcom.video.encoder.avc"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->d:Ljava/util/Set;

    const-string v1, "OMX.qcom.video.decoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->e:Ljava/util/Set;

    const-string v1, "OMX.ittiam.video.decoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->e:Ljava/util/Set;

    const-string v1, "OMX.Exynos.AVC.Decoder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-S6812i"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8262B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sput-object v0, Lcom/instagram/creation/video/g/b/g;->g:Ljava/util/List;

    const-string v1, "OMX.SEC.AVC.Encoder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/instagram/creation/video/g/b/g;->g:Ljava/util/List;

    const-string v1, "OMX.SEC.avc.enc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/instagram/creation/video/g/b/h;->a()Lcom/instagram/creation/video/g/b/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/b/g;-><init>(Lcom/instagram/creation/video/g/b/h;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Lcom/instagram/creation/video/g/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/instagram/creation/video/g/b/g;->h:Lcom/instagram/creation/video/g/b/h;

    .line 103
    return-void
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    sget v0, Lcom/instagram/creation/video/g/b/c;->b:I

    if-ne p2, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 222
    invoke-virtual {p0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 225
    sget v0, Lcom/instagram/creation/video/g/b/c;->b:I

    if-ne p2, v0, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 228
    :goto_1
    invoke-static {p0, v0}, Lcom/instagram/creation/video/g/b/i;->a(Landroid/media/MediaCodec;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 236
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, v0}, Lcom/instagram/creation/video/g/b/i;->a(Landroid/media/MediaCodec;Z)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-static {p0}, Lcom/instagram/creation/video/g/b/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 148
    invoke-static {v0, p1, p2}, Lcom/instagram/creation/video/g/b/g;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/instagram/creation/video/g/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/a;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {p0}, Lcom/instagram/creation/video/g/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 186
    invoke-static {v0, p1, p2}, Lcom/instagram/creation/video/g/b/g;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/instagram/creation/video/g/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/a;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->e:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->d:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->a:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/instagram/creation/video/g/b/e;->i:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
