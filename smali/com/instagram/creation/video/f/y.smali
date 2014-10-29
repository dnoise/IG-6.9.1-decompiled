.class public final Lcom/instagram/creation/video/f/y;
.super Lcom/instagram/base/a/b;
.source "ThumbnailVideoPreviewFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;

.field private b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

.field private c:Lcom/instagram/creation/video/l/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/y;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/creation/video/f/y;->a:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/creation/video/f/y;

    invoke-direct {v2}, Lcom/instagram/creation/video/f/y;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/y;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/creation/video/f/y;->b()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/l/h;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 124
    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->a:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 108
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->e()V

    .line 109
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->d()V

    .line 114
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 115
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 50
    sget v0, Lcom/facebook/aw;->fragment_thumbnail_video_preview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    new-instance v0, Lcom/instagram/creation/video/f/aa;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/f/aa;-><init>(Lcom/instagram/creation/video/f/y;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcom/facebook/av;->square_texture_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/y;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    .line 60
    new-instance v0, Lcom/instagram/creation/video/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/ui/a/a;-><init>()V

    sget v2, Lcom/facebook/av;->play_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/a/a;->a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v0

    sget v2, Lcom/facebook/av;->seek_frame_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/a/a;->b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/instagram/creation/video/l/h;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/y;->n()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/instagram/creation/video/l/h;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V

    iput-object v2, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    .line 67
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iget-object v2, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setDelegate(Lcom/instagram/creation/video/ui/d;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/creation/video/f/y;->c:Lcom/instagram/creation/video/l/h;

    new-instance v2, Lcom/instagram/creation/video/f/ab;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ab;-><init>(Lcom/instagram/creation/video/f/y;)V

    invoke-virtual {v0, v2}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/d/c;)V

    .line 86
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v2, Lcom/instagram/creation/video/f/ac;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ac;-><init>(Lcom/instagram/creation/video/f/y;)V

    invoke-interface {v0, v2}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 96
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/y;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/z;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/z;-><init>(Lcom/instagram/creation/video/f/y;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "metadata_thumbnail_video_preview"

    return-object v0
.end method
