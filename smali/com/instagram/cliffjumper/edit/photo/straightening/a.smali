.class public final Lcom/instagram/cliffjumper/edit/photo/straightening/a;
.super Ljava/lang/Object;
.source "StraighteningController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/a/b;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

.field private j:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private k:Lcom/instagram/cliffjumper/a/a;

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    .line 67
    sget v0, Lcom/facebook/az;->straighten:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->p:F

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    .line 254
    const/high16 v1, -0x3e10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41f0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V

    .line 259
    return-void
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->straightener_ruler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    sget v1, Lcom/facebook/av;->photo_straighten_slider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    .line 137
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    iget v2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F

    invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/straightening/c;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/straightening/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->setOnSlideListener(Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;)V

    .line 169
    return-object v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    iget v2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->p:F

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a()Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    .line 289
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->b:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void

    :cond_0
    move v0, v2

    .line 289
    goto :goto_0

    :cond_1
    move v1, v2

    .line 290
    goto :goto_1
.end method

.method public final a(FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 265
    neg-float v0, p4

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 266
    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(F)V

    .line 268
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 204
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 212
    :goto_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/a/a;->a()V

    .line 220
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;

    .line 222
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;

    .line 223
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;

    .line 224
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;

    .line 225
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 226
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 227
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    .line 228
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 229
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;

    .line 230
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;

    .line 231
    return-void

    :cond_2
    move v1, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;

    .line 86
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    .line 87
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 88
    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 89
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 91
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I

    .line 92
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I

    .line 93
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F

    .line 94
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 99
    :cond_0
    new-instance v0, Lcom/instagram/cliffjumper/a/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;

    .line 100
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/a/a;->a(Lcom/instagram/cliffjumper/a/b;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    sget v0, Lcom/facebook/av;->photo_edit_rotate_button:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/straightening/b;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/straightening/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    sget v0, Lcom/facebook/av;->straighten_grid_overlay_3:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    sget v0, Lcom/facebook/av;->straighten_grid_overlay_6:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    .line 124
    return v3
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {p2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 74
    return v1

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 174
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 175
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 176
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 182
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 184
    :cond_1
    return-void
.end method

.method public final b(FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    .line 272
    cmpl-float v0, p3, v1

    if-nez v0, :cond_0

    cmpl-float v0, p4, v1

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 276
    div-float v1, p3, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v2, v0, p2

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    div-float/2addr v0, v3

    .line 282
    :goto_0
    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(F)V

    .line 284
    :cond_1
    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 279
    neg-float v1, p4

    div-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v2, v0, p1

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 189
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 190
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 196
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 198
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    .line 236
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 238
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 239
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 241
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 247
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 248
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 250
    :cond_0
    return-void
.end method
