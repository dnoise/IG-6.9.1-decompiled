.class public abstract Lcom/instagram/creation/video/f/ad;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/instagram/creation/video/gl/y;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected a:Lcom/instagram/creation/b/a/a;

.field private aa:Landroid/view/View;

.field private ab:Lcom/instagram/creation/video/widget/c;

.field private ac:Landroid/widget/SeekBar;

.field private ad:Z

.field private ae:Landroid/os/Handler;

.field protected b:Z

.field protected c:Z

.field protected volatile d:Z

.field protected final e:Ljava/lang/Object;

.field private final f:Landroid/content/IntentFilter;

.field private final g:Lcom/instagram/creation/video/f/ag;

.field private h:I

.field private i:Lcom/instagram/creation/video/widget/PreviewTextureView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->f:Landroid/content/IntentFilter;

    .line 60
    new-instance v0, Lcom/instagram/creation/video/f/ag;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/ag;-><init>(Lcom/instagram/creation/video/f/ad;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    .line 71
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->b:Z

    .line 72
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->c:Z

    .line 73
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->d:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/instagram/creation/video/f/ae;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ae;-><init>(Lcom/instagram/creation/video/f/ad;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method protected static varargs W()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->ad:Z

    .line 183
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 184
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ad;->b:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ah;->k()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    .line 426
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/ad;->h:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/ah;->a(I)V

    .line 427
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/ad;->h:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(I)V

    .line 429
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;->Z()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/ad;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    return v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/ad;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ad;->ad:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/creation/video/f/ad;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/PreviewTextureView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V

    .line 195
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->setDependent(Lcom/instagram/creation/video/gl/y;)V

    .line 196
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->c()V

    .line 197
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->f:Landroid/content/IntentFilter;

    invoke-static {v0, v1}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->G()V

    .line 205
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->b()V

    .line 206
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public H()V
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->H()V

    .line 410
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method protected abstract V()Lcom/instagram/creation/video/f/ah;
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    .line 120
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->Q()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    .line 124
    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/aw;->fragment_video_cover:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    goto :goto_0

    .line 129
    :cond_2
    sget v0, Lcom/facebook/aw;->fragment_video_cover_small:I

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 144
    sget v2, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    sget v0, Lcom/facebook/av;->scrubber_preview_texture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/widget/PreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    .line 147
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->setDependent(Lcom/instagram/creation/video/gl/y;)V

    .line 149
    sget v0, Lcom/facebook/av;->scrubber_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    .line 151
    sget v0, Lcom/facebook/av;->scrubber_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    .line 152
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v1

    div-int/2addr v0, v1

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 159
    new-instance v0, Lcom/instagram/creation/video/widget/c;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/widget/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    .line 160
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    invoke-virtual {v1, v0, v0}, Lcom/instagram/creation/video/widget/c;->a(II)V

    .line 163
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/af;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/af;-><init>(Lcom/instagram/creation/video/f/ad;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 175
    sget-object v0, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/av;)V

    .line 177
    invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 178
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const-string v0, "video_scrubber"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->m_()V

    .line 417
    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    .line 418
    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    .line 419
    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    .line 420
    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    .line 421
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 221
    if-eqz p3, :cond_0

    .line 222
    invoke-direct {p0, p2}, Lcom/instagram/creation/video/f/ad;->a(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    return-void
.end method
