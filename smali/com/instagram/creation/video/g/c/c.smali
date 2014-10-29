.class public final Lcom/instagram/creation/video/g/c/c;
.super Ljava/lang/Object;
.source "SystemVideoMetadataExtractor.java"

# interfaces
.implements Lcom/instagram/creation/video/g/a/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/creation/video/g/c/c;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return p2

    .line 58
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :goto_0
    return-wide v0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 29
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/g/c/c;->a:Landroid/content/Context;

    invoke-virtual {v6, v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 38
    const/16 v0, 0x12

    const/4 v1, -0x1

    invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I

    move-result v3

    .line 39
    const/16 v0, 0x13

    const/4 v1, -0x1

    invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I

    move-result v4

    .line 41
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 42
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I

    move-result v5

    .line 45
    :cond_0
    invoke-static {v6}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v1

    .line 46
    new-instance v0, Lcom/instagram/creation/video/g/a/c;

    invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/video/g/a/c;-><init>(JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    :cond_1
    move v3, v4

    goto :goto_0
.end method
