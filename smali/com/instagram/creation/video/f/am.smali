.class public final Lcom/instagram/creation/video/f/am;
.super Lcom/instagram/creation/video/f/ad;
.source "VideoCoverFragmentICS.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private f:Lcom/instagram/creation/video/f/an;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/am;)Lcom/instagram/creation/video/f/an;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-object v0
.end method


# virtual methods
.method public final V()Lcom/instagram/creation/video/f/ah;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    return-object v0
.end method

.method public final X()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    .line 28
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/j;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/instagram/creation/video/f/an;

    invoke-direct {v0, p0, p1}, Lcom/instagram/creation/video/f/an;-><init>(Lcom/instagram/creation/video/f/am;Lcom/instagram/creation/video/gl/j;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/am;->f:Lcom/instagram/creation/video/f/an;

    .line 24
    return-void
.end method
