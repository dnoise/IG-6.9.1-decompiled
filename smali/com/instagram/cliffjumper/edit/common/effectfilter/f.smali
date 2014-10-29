.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/f;
.super Ljava/lang/Object;
.source "FilterStrengthController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/g;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private i:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    return p1
.end method

.method static synthetic a(Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    return v0
.end method

.method private static b(Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 218
    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->filter_strength_adjuster:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    sget v1, Lcom/facebook/av;->filter_strength_seek:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;

    .line 115
    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    .line 116
    new-instance v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;-><init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)V

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V

    .line 149
    sget v1, Lcom/facebook/av;->button_toggle_border:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 151
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Landroid/widget/ImageView;Z)V

    .line 154
    new-instance v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;

    invoke-direct {v2, p0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;-><init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    .line 203
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 206
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 207
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 209
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    .line 211
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 212
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 213
    iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    .line 214
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    .line 55
    const/4 v1, 0x5

    invoke-virtual {p4, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v1

    check-cast v1, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 56
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v2

    check-cast v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    .line 58
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-ne v5, p1, :cond_1

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_0

    .line 60
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    .line 61
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 62
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 63
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    .line 64
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    .line 65
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    .line 66
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 69
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    .line 71
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move v0, v3

    .line 106
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-eqz v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v5, v4}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    .line 80
    :cond_2
    invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    .line 81
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->refreshDrawableState()V

    .line 82
    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    .line 84
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    .line 85
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 86
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 87
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 88
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a_(Z)V

    .line 90
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v3

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 91
    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {p4, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v1

    .line 97
    invoke-static {p4, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;)V

    .line 99
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b()Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V

    .line 102
    invoke-virtual {p4, v6, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 104
    invoke-interface {p5}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    move v0, v4

    .line 106
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v1

    if-nez v1, :cond_3

    .line 93
    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    goto :goto_1
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v1

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 42
    :goto_0
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    .line 43
    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 178
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 179
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 181
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 183
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 185
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 190
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 191
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 195
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 197
    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter "event"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    .line 224
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 225
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 226
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 228
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    .line 229
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 230
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    invoke-virtual {v0, v3, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 231
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
