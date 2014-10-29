.class public Lcom/instagram/android/feed/a/a/t;
.super Lcom/instagram/base/a/d;
.source "LegacyVideoPlayerFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/b/ab;


# static fields
.field private static final aa:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private ab:Lcom/instagram/android/feed/a/a/m;

.field private ac:Lcom/instagram/android/feed/a/b/x;

.field private ad:Lcom/instagram/common/a/a/k;

.field private ae:Lcom/instagram/feed/d/l;

.field private af:I

.field private ag:Lcom/instagram/android/feed/a/b/ac;

.field private ah:Z

.field private ai:Landroid/view/animation/Animation;

.field private aj:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/instagram/android/feed/a/a/t;

    sput-object v0, Lcom/instagram/android/feed/a/a/t;->aa:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/base/a/d;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/t;->ah:Z

    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->h()V

    .line 160
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->E()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->aj:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_0
    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->legacy_video_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ai:Landroid/view/animation/Animation;

    .line 209
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ai:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->legacy_video_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/t;->aj:Landroid/view/animation/Animation;

    .line 212
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->aj:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->aj:Landroid/view/animation/Animation;

    new-instance v1, Lcom/instagram/android/feed/a/a/w;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/w;-><init>(Lcom/instagram/android/feed/a/a/t;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/t;)Lcom/instagram/android/feed/a/a/m;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/t;->V()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0}, Lcom/instagram/base/a/d;->F()V

    .line 141
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/t;->ah:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/t;->ag:Lcom/instagram/android/feed/a/b/ac;

    iget v3, p0, Lcom/instagram/android/feed/a/a/t;->af:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V

    .line 143
    iput-boolean v4, p0, Lcom/instagram/android/feed/a/a/t;->ah:Z

    .line 145
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/instagram/base/a/d;->G()V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->i()V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/facebook/aw;->dialog_video_legacy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/instagram/base/a/d;->a(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/facebook/ba;->IgDialogLegacyVideo:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/t;->a(I)V

    .line 64
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LegacyVideoPlayerFragment.MEDIA_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    .line 66
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->a()V

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/instagram/android/feed/a/a/m;

    check-cast v0, Lcom/instagram/feed/g/a;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/feed/a/a/m;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LegacyVideoPlayerFragement.POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/feed/a/a/t;->af:I

    .line 76
    new-instance v0, Lcom/instagram/android/feed/a/b/x;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ac:Lcom/instagram/android/feed/a/b/x;

    .line 77
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ad:Lcom/instagram/common/a/a/k;

    .line 79
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/t;->W()V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/d;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Lcom/instagram/android/feed/a/a/u;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/u;-><init>(Lcom/instagram/android/feed/a/a/t;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/facebook/av;->media_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ag:Lcom/instagram/android/feed/a/b/ac;

    .line 108
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ag:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ac:Lcom/instagram/android/feed/a/b/x;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ag:Lcom/instagram/android/feed/a/b/ac;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/t;->ae:Lcom/instagram/feed/d/l;

    iget v3, p0, Lcom/instagram/android/feed/a/a/t;->af:I

    const/4 v4, 0x0

    sget v5, Lcom/instagram/android/widget/o;->c:I

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V

    .line 120
    sget v0, Lcom/facebook/av;->animatable_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ai:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/m;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V

    .line 195
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/t;->ad:Lcom/instagram/common/a/a/k;

    sget v2, Lcom/instagram/feed/d/o;->a:I

    sget v3, Lcom/instagram/android/g/g;->b:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Lcom/instagram/common/a/a/k;Lcom/instagram/feed/d/l;II)V

    .line 189
    :goto_0
    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->a()V

    .line 190
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->z()Landroid/support/v4/app/an;

    move-result-object v1

    sget v4, Lcom/instagram/feed/d/o;->a:I

    sget v5, Lcom/instagram/android/g/g;->b:I

    move-object v6, v2

    check-cast v6, Lcom/instagram/android/fragment/ab;

    move-object v7, v2

    check-cast v7, Lcom/instagram/feed/g/a;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/ab;Lcom/instagram/feed/g/a;)V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 126
    new-instance v0, Lcom/instagram/android/feed/a/a/v;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/t;->d()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/feed/a/a/v;-><init>(Lcom/instagram/android/feed/a/a/t;Landroid/content/Context;I)V

    .line 132
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 134
    return-object v0
.end method

.method public final i_()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/t;->ab:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->d()V

    .line 200
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "legacy_video_player"

    return-object v0
.end method
