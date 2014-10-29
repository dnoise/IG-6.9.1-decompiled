.class public final Lcom/instagram/cliffjumper/edit/photo/lux/d;
.super Ljava/lang/Object;
.source "LuxAdjustmentController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private g:Lcom/instagram/cliffjumper/edit/common/ui/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/d;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    return v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    return p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 158
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V

    .line 159
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 86
    new-instance v1, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;

    invoke-direct {v1, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setRootPosition(F)V

    .line 88
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setValueRangeSize(I)V

    .line 89
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x32

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    .line 90
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/e;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/lux/d;)V

    invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V

    .line 122
    return-object v1

    .line 89
    :cond_0
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 70
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/at;->seek_bar_margins:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 78
    invoke-virtual {v2, v3, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Lux"

    return-object v0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    .line 150
    :cond_0
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    .line 152
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;

    .line 153
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 154
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 155
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;

    .line 52
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 53
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->e()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    .line 55
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    .line 56
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 127
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    .line 129
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 131
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 133
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    .line 139
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 141
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 143
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

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z

    .line 166
    invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 169
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z

    .line 170
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V

    .line 171
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
