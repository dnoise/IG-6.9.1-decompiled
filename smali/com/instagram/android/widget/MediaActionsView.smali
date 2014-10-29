.class public Lcom/instagram/android/widget/MediaActionsView;
.super Landroid/widget/FrameLayout;
.source "MediaActionsView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/view/animation/Animation;

.field private final d:Landroid/view/animation/Animation;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/ViewStub;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/widget/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v0, 0xfa

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->a:I

    .line 34
    iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->b:I

    .line 47
    sget v0, Lcom/instagram/android/widget/o;->a:I

    iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->view_media_actions:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget v0, Lcom/facebook/av;->video_states_view_stub:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->f:Landroid/view/ViewStub;

    .line 64
    sget v0, Lcom/facebook/av;->caminner:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;

    .line 65
    sget v0, Lcom/facebook/av;->video_icon:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/facebook/av;->retry:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;

    .line 68
    sget v0, Lcom/facebook/av;->doubletap_heart:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/widget/MediaActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->doubletap_heart:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;

    .line 71
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;

    new-instance v1, Lcom/instagram/android/widget/m;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/m;-><init>(Lcom/instagram/android/widget/MediaActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/widget/MediaActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->video_loading_indicator:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/widget/MediaActionsView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 191
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 192
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 193
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 200
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 201
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 202
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 203
    new-instance v1, Lcom/instagram/android/widget/n;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/widget/n;-><init>(Lcom/instagram/android/widget/MediaActionsView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->caminner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->video_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;

    .line 131
    :cond_0
    return-void
.end method

.method private setVideoIndicatorVisibility$736bb5a1(I)V
    .locals 7
    .parameter "videoIconState"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    sget v0, Lcom/instagram/android/widget/o;->c:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/instagram/android/widget/o;->b:I

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 149
    :goto_0
    iget-object v5, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;

    sget v3, Lcom/instagram/android/widget/o;->g:I

    if-ne p1, v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v5, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    sget v3, Lcom/instagram/android/widget/o;->f:I

    if-ne p1, v3, :cond_4

    .line 153
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->feed_sound:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 181
    :goto_3
    sget v0, Lcom/instagram/android/widget/o;->c:I

    if-ne p1, v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 183
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    :goto_4
    return-void

    :cond_1
    move v0, v1

    .line 146
    goto :goto_0

    :cond_2
    move v3, v4

    .line 149
    goto :goto_1

    :cond_3
    move v3, v4

    .line 150
    goto :goto_2

    .line 158
    :cond_4
    sget v2, Lcom/instagram/android/widget/o;->d:I

    if-ne p1, v2, :cond_5

    .line 159
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->feed_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_3

    .line 164
    :cond_5
    sget v2, Lcom/instagram/android/widget/o;->e:I

    if-ne p1, v2, :cond_6

    .line 165
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->feed_pause:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 169
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_3

    .line 170
    :cond_6
    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->feed_camera:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_3

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 135
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 136
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    if-ne v0, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaActionsView;->c()V

    .line 112
    sget v0, Lcom/instagram/android/widget/o;->a:I

    if-ne p1, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->b(Landroid/view/View;)V

    .line 121
    :goto_1
    iput p1, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    goto :goto_0

    .line 114
    :cond_1
    iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    sget v1, Lcom/instagram/android/widget/o;->a:I

    if-ne v0, v1, :cond_2

    .line 115
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIndicatorVisibility$736bb5a1(I)V

    .line 116
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/widget/MediaActionsView;->a(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 142
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter

    .prologue
    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 92
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 93
    invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    return-void
.end method

.method public setAudioToggleOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;

    .line 84
    iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    sget v1, Lcom/instagram/android/widget/o;->f:I

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setVideoIconState$736bb5a1(I)V
    .locals 2
    .parameter "videoIconState"

    .prologue
    .line 97
    iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    if-ne v0, p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaActionsView;->c()V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 102
    iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;

    sget v0, Lcom/instagram/android/widget/o;->a:I

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIndicatorVisibility$736bb5a1(I)V

    .line 104
    iput p1, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
