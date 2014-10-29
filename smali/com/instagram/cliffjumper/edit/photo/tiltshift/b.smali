.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
.super Ljava/lang/Object;
.source "TiltShiftController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/a/b;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private g:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

.field private i:Lcom/instagram/cliffjumper/a/a;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 32
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 43
    sget v0, Lcom/facebook/az;->tiltshift:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/facebook/au;->edit_glyph_dof:I

    .line 186
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne p1, v0, :cond_1

    sget v0, Lcom/facebook/au;->edit_glyph_dof_linear:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/facebook/au;->edit_glyph_dof_radial:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method private b(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 238
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 239
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(FF)V

    .line 240
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(FF)V

    .line 241
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->b(FF)V

    .line 242
    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 80
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 82
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 99
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 101
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-array v3, v10, [Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v5, Lcom/facebook/az;->tilt_mode_off:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v0, v3, v1

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v5, Lcom/facebook/az;->tilt_mode_radial:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v0, v3, v9

    const/4 v0, 0x2

    new-instance v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v6, Lcom/facebook/az;->tilt_mode_linear:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 118
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f80

    invoke-direct {v4, v1, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/facebook/at;->effect_tile_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    move v0, v1

    .line 123
    :goto_0
    if-ge v0, v10, :cond_1

    .line 124
    new-instance v6, Lcom/instagram/cliffjumper/edit/common/ui/g;

    aget-object v7, v3, v0

    sget v8, Lcom/instagram/cliffjumper/edit/common/ui/k;->a:I

    invoke-direct {v6, p1, v7, v8}, Lcom/instagram/cliffjumper/edit/common/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/common/ui/c;I)V

    .line 126
    invoke-virtual {v6}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a()V

    .line 127
    invoke-virtual {v6, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a(Z)V

    .line 128
    invoke-virtual {v6}, Lcom/instagram/cliffjumper/edit/common/ui/g;->b()V

    .line 129
    invoke-virtual {v6, v5, v1, v5, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPadding(IIII)V

    .line 130
    invoke-virtual {v2, v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    aget-object v8, v3, v0

    invoke-virtual {v8}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;->a()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 132
    invoke-virtual {v6, v9}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-object v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 289
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 290
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(FF)V

    .line 291
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(FF)V

    .line 292
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(FF)V

    .line 294
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_0
.end method

.method public final a(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_2

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_3

    .line 251
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(FF)V

    .line 253
    :cond_3
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(F)V

    .line 255
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(F)V

    .line 256
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->b(F)V

    .line 258
    :cond_4
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_5

    .line 259
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(F)V

    .line 260
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(F)V

    .line 261
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(F)V

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 158
    if-eqz p1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    instance-of v0, v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v3, v4, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 172
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/a/a;->a()V

    .line 173
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    .line 175
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    .line 176
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 177
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 178
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    .line 179
    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    .line 180
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v3, :cond_0

    .line 161
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 162
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 163
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    goto :goto_2
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    .line 62
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 63
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 65
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-direct {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    .line 66
    new-instance v0, Lcom/instagram/cliffjumper/a/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    .line 67
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/a/a;->a(Lcom/instagram/cliffjumper/a/b;)V

    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 72
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-virtual {v0, p5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 50
    return v1

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 147
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    cmpl-float v0, p3, v2

    if-nez v0, :cond_2

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    .line 275
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(FF)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 153
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 215
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 216
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 217
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 229
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 230
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 231
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_0
.end method
