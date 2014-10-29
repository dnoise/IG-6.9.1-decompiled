.class public Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackExtendsBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trex"


# instance fields
.field private defaultSampleDescriptionIndex:J

.field private defaultSampleDuration:J

.field private defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

.field private defaultSampleSize:J

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "trex"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 64
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    .line 65
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    .line 67
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    .line 68
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/a;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    .line 69
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "byteBuffer"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 54
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    .line 55
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    .line 56
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    .line 57
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    .line 58
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;->a(Ljava/nio/ByteBuffer;)V

    .line 59
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDefaultSampleDescriptionIndex()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    return-wide v0
.end method

.method public getDefaultSampleDuration()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    return-wide v0
.end method

.method public getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    return-object v0
.end method

.method public getDefaultSampleFlagsStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSampleSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    return-wide v0
.end method

.method public setDefaultSampleDescriptionIndex(J)V
    .locals 0
    .parameter "defaultSampleDescriptionIndex"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    .line 101
    return-void
.end method

.method public setDefaultSampleDuration(J)V
    .locals 0
    .parameter "defaultSampleDuration"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    .line 105
    return-void
.end method

.method public setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/a;)V
    .locals 0
    .parameter "defaultSampleFlags"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    .line 114
    return-void
.end method

.method public setDefaultSampleSize(J)V
    .locals 0
    .parameter "defaultSampleSize"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    .line 109
    return-void
.end method

.method public setTrackId(J)V
    .locals 0
    .parameter "trackId"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    .line 97
    return-void
.end method
