.class public final Lcom/instagram/creation/video/f/bb;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoFilterFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/base/ui/FilterPicker;

.field private b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

.field private c:Lcom/instagram/creation/video/l/h;

.field private d:I

.field private e:[Lcom/instagram/creation/video/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bb;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/instagram/creation/video/f/bb;->d:I

    return v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/instagram/creation/video/f/bb;->d:I

    return p1
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    return-object v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a([Lcom/instagram/creation/video/e/c;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    return-object v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V

    .line 139
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->c()V

    .line 140
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->e()V

    .line 142
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    new-instance v1, Lcom/instagram/creation/video/f/be;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/be;-><init>(Lcom/instagram/creation/video/f/bb;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->d()V

    .line 133
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->G()V

    .line 134
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/aw;->fragment_video_filter:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/facebook/aw;->fragment_video_filter_small:I

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->square_texture_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    .line 66
    new-instance v0, Lcom/instagram/creation/video/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/ui/a/a;-><init>()V

    sget v1, Lcom/facebook/av;->play_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/a/a;->a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v0

    sget v1, Lcom/facebook/av;->seek_frame_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/a/a;->b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/instagram/creation/video/l/h;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lcom/instagram/creation/video/l/h;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    .line 70
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setDelegate(Lcom/instagram/creation/video/ui/d;)V

    .line 72
    sget v0, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/ui/FilterPicker;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    .line 73
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;)[Lcom/instagram/creation/video/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    .line 74
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->setFilters([Lcom/instagram/creation/base/ui/h;)V

    .line 75
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoFilterFragment.FILTER_POS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setSelectedFilterIndex(I)V

    .line 78
    iget-object v1, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->b()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/bb;->d:I

    .line 79
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->b(I)V

    .line 80
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    iget v1, p0, Lcom/instagram/creation/video/f/bb;->d:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V

    .line 82
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    new-instance v1, Lcom/instagram/creation/video/f/bc;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bc;-><init>(Lcom/instagram/creation/video/f/bb;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->setFilterListener(Lcom/instagram/creation/base/ui/e;)V

    .line 103
    sget-object v0, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/bb;->a(Lcom/instagram/creation/video/f/av;)V

    .line 105
    invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/bd;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bd;-><init>(Lcom/instagram/creation/video/f/bb;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->k()V

    .line 48
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const-string v0, "VideoFilterFragment.FILTER_POS"

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bb;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v0, "VideoFilterFragment.FILTER_SCROLL_X"

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bb;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "video_filter"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->e:[Lcom/instagram/creation/video/e/c;

    .line 123
    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->a:Lcom/instagram/creation/base/ui/FilterPicker;

    .line 124
    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    .line 125
    iput-object v0, p0, Lcom/instagram/creation/video/f/bb;->c:Lcom/instagram/creation/video/l/h;

    .line 127
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->m_()V

    .line 128
    return-void
.end method
