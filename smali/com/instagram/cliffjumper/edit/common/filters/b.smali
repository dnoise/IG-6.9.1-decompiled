.class public final Lcom/instagram/cliffjumper/edit/common/filters/b;
.super Ljava/lang/Object;
.source "BasicAdjustController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Lcom/instagram/cliffjumper/edit/common/ui/g;

.field private e:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private f:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private g:Lcom/instagram/cliffjumper/edit/common/filters/a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/filters/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    return p1
.end method

.method private static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-static {p0}, Lcom/instagram/cliffjumper/edit/common/filters/g;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a()I

    move-result v0

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b()I

    move-result v0

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C_()I

    move-result v0

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e()I

    move-result v0

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f()I

    move-result v0

    goto :goto_0

    .line 158
    :pswitch_5
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i()I

    move-result v0

    goto :goto_0

    .line 160
    :pswitch_6
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h()I

    move-result v0

    goto :goto_0

    .line 162
    :pswitch_7
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g()I

    move-result v0

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/content/Context;IF)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;

    invoke-direct {v0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setRootPosition(F)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setValueRangeSize(I)V

    .line 108
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    .line 109
    new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/c;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/common/filters/c;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/b;)V

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V

    .line 141
    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/g;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 171
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(I)V

    goto :goto_0

    .line 177
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(I)V

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d(I)V

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e(I)V

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h(I)V

    goto :goto_0

    .line 189
    :pswitch_6
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g(I)V

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/filters/b;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    return v0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/filters/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 73
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    sget-object v0, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const/16 v0, 0xc8

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Landroid/content/Context;IF)Landroid/view/View;

    move-result-object v0

    .line 93
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/at;->seek_bar_margins:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 97
    invoke-virtual {v2, v3, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 88
    :pswitch_1
    const/16 v0, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Landroid/content/Context;IF)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 225
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    .line 227
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 229
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;

    .line 232
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;

    .line 233
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;

    .line 234
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 235
    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 236
    return-void

    :cond_1
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 49
    check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/g;

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;

    .line 50
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/f;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/f;->a()Lcom/instagram/cliffjumper/edit/common/filters/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;

    .line 52
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 53
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 55
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 57
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    .line 58
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    .line 59
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z

    .line 63
    return v2
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/f;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/f;->a()Lcom/instagram/cliffjumper/edit/common/filters/a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    .line 39
    return v1

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    .line 200
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 204
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 206
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    .line 211
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 213
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 215
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 217
    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z

    .line 242
    invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    .line 243
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 245
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z

    .line 246
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V

    .line 247
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
