.class public Lcom/instagram/cliffjumper/edit/photo/a/a;
.super Lcom/instagram/base/a/b;
.source "PhotoFilterFragment.java"

# interfaces
.implements Lcom/instagram/common/t/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/text/DecimalFormat;


# instance fields
.field private aA:Lcom/instagram/cliffjumper/ui/b;

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Landroid/widget/FrameLayout;

.field private ae:Landroid/widget/ImageView;

.field private af:Landroid/widget/ImageView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/widget/ViewSwitcher;

.field private aj:Landroid/widget/ViewSwitcher;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/ViewSwitcher;

.field private am:Landroid/view/ViewGroup;

.field private an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

.field private ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

.field private ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private aq:I

.field private ar:I

.field private as:Lcom/instagram/cliffjumper/edit/common/ui/a;

.field private at:Z

.field private au:Lcom/instagram/creation/photo/gallery/c;

.field private av:Lcom/instagram/filterkit/c/c;

.field private aw:Z

.field private ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;

.field private ay:Landroid/app/Dialog;

.field private az:Z

.field private final c:Lcom/instagram/cliffjumper/edit/photo/a/z;

.field private final d:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private final e:Landroid/os/Handler;

.field private f:J

.field private final g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

.field private final h:Lcom/instagram/cliffjumper/edit/photo/a/ac;

.field private i:Lcom/instagram/ui/dialog/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/a/a;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->a:Ljava/lang/Class;

    .line 149
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0\u00b0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 154
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/z;

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/z;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->c:Lcom/instagram/cliffjumper/edit/photo/a/z;

    .line 155
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/b;

    .line 162
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/m;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/m;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 180
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/ac;

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/ac;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/ac;

    .line 202
    iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I

    .line 203
    sget v0, Lcom/instagram/cliffjumper/edit/photo/a/w;->a:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    .line 205
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z

    .line 211
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    .line 1315
    return-void
.end method

.method static synthetic V()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private W()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 345
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 346
    sget v1, Lcom/facebook/av;->filter_view:I

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setId(I)V

    .line 347
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/ae;

    invoke-direct {v1, p0, v3}, Lcom/instagram/cliffjumper/edit/photo/a/ae;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 360
    :goto_0
    return-object v0

    .line 353
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 354
    sget v1, Lcom/facebook/av;->filter_view:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 355
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/ad;

    invoke-direct {v2, p0, v3}, Lcom/instagram/cliffjumper/edit/photo/a/ad;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private X()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->dismiss()V

    .line 647
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 648
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    .line 650
    :cond_0
    return-void
.end method

.method private Y()Landroid/view/View;
    .locals 3

    .prologue
    .line 666
    sget v0, Lcom/facebook/au;->toolbar_straighten:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;

    .line 667
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/h;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 686
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;

    return-object v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z()Landroid/view/View;
    .locals 2

    .prologue
    .line 690
    sget v0, Lcom/facebook/au;->edit_glyph_dof:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;

    .line 691
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/i;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 708
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    return p1
.end method

.method private a(I)Landroid/widget/ImageView;
    .locals 5
    .parameter

    .prologue
    .line 653
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 654
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 658
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 659
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    return-object p1
.end method

.method private a(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Lcom/instagram/cliffjumper/ui/b;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    .line 618
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    sget v1, Lcom/facebook/ba;->NuxBubbleTransitionStyle:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/b;->setAnimationStyle(I)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    :goto_0
    return-void

    .line 623
    :cond_1
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/f;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/f;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    .line 630
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 631
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    const/16 v1, 0x53

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/instagram/cliffjumper/ui/b;->showAtLocation(Landroid/view/View;III)V

    .line 632
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/cliffjumper/ui/b;->a(Landroid/view/View;I)V

    .line 633
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->F()V

    .line 634
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/g;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Lcom/instagram/cliffjumper/edit/common/ui/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 852
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    .line 853
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 854
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 855
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ak:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    invoke-interface {v1}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 858
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->X()V

    .line 859
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()V

    .line 862
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 777
    sget-object v0, Lcom/instagram/p/a;->m:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "error"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rendering error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 783
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 791
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->photo_edit_error_message:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/l;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/a/l;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->photo_edit_error_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z

    return p1
.end method

.method private aa()Landroid/view/View;
    .locals 3

    .prologue
    .line 712
    sget v0, Lcom/facebook/au;->tool_border:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 713
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/j;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/j;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 726
    return-object v0
.end method

.method private ab()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    sget v4, Lcom/instagram/cliffjumper/edit/photo/a/w;->a:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 731
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    iget v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    sget v4, Lcom/instagram/cliffjumper/edit/photo/a/w;->b:I

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 732
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 733
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->X()V

    .line 734
    return-void

    :cond_0
    move v0, v2

    .line 730
    goto :goto_0

    :cond_1
    move v1, v2

    .line 731
    goto :goto_1
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 745
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/k;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/k;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    :cond_1
    return-void
.end method

.method private ad()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 837
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 848
    :goto_0
    return v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l()Z

    move-result v3

    .line 842
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j()Z

    move-result v4

    .line 844
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v5

    .line 846
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    sget-object v6, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v6, :cond_2

    move v0, v2

    .line 848
    :goto_1
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 846
    goto :goto_1

    :cond_3
    move v0, v1

    .line 848
    goto :goto_0
.end method

.method private ae()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z

    .line 941
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()V

    .line 942
    return-void
.end method

.method private af()V
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->a()V

    .line 948
    :cond_0
    return-void
.end method

.method private ag()Lcom/instagram/creation/photo/gallery/c;
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;

    if-nez v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mediaFilePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 957
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;

    move-result-object v1

    .line 959
    invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;

    return-object v0
.end method

.method private ah()I
    .locals 1

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private ai()Lcom/instagram/creation/b/a/i;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/high16 v6, 0x42c8

    .line 1242
    new-instance v1, Lcom/instagram/creation/b/a/i;

    invoke-direct {v1}, Lcom/instagram/creation/b/a/i;-><init>()V

    .line 1243
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->a:Ljava/lang/Integer;

    .line 1246
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/creation/b/a/i;->b:Ljava/lang/Float;

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/creation/b/a/i;->c:Ljava/lang/Integer;

    .line 1251
    :cond_1
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->e()I

    move-result v0

    .line 1254
    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/creation/b/a/i;->d:Ljava/lang/Float;

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    .line 1258
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v2

    .line 1259
    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v2, v3, :cond_3

    .line 1260
    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/a/o;->a:[I

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1268
    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/a/a;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected tiltshift mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :goto_0
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->i()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/creation/b/a/i;->o:Ljava/lang/Float;

    .line 1273
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->g()Landroid/graphics/PointF;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/creation/b/a/i;->n:Landroid/graphics/PointF;

    .line 1274
    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v2, v3, :cond_3

    .line 1275
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/creation/b/a/i;->p:Ljava/lang/Float;

    .line 1279
    :cond_3
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_b

    .line 1280
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    .line 1282
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1283
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->e:Ljava/lang/Float;

    .line 1285
    :cond_4
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1286
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->f:Ljava/lang/Float;

    .line 1288
    :cond_5
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1289
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->g:Ljava/lang/Float;

    .line 1291
    :cond_6
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C_()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1292
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C_()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->h:Ljava/lang/Float;

    .line 1294
    :cond_7
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1295
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->i:Ljava/lang/Float;

    .line 1297
    :cond_8
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1298
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->j:Ljava/lang/Float;

    .line 1300
    :cond_9
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1301
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/instagram/creation/b/a/i;->k:Ljava/lang/Float;

    .line 1303
    :cond_a
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i()I

    move-result v2

    if-eqz v2, :cond_b

    .line 1304
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/creation/b/a/i;->l:Ljava/lang/Float;

    .line 1312
    :cond_b
    return-object v1

    .line 1262
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/creation/b/a/i;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1265
    :pswitch_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/creation/b/a/i;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/a/a;)J
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/a/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 808
    new-instance v0, Lcom/instagram/ui/dialog/f;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    .line 809
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V

    .line 811
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    .line 812
    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac()V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    invoke-interface {v0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Z)V

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    .line 869
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 870
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 871
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 872
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/ac;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 873
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()V

    .line 875
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->az:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->X()V

    return-void
.end method

.method static synthetic h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/ac;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/ac;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z

    return v0
.end method

.method static synthetic m(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    return-object v0
.end method

.method static synthetic p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/z;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->c:Lcom/instagram/cliffjumper/edit/photo/a/z;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae()V

    return-void
.end method

.method static synthetic r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/lux/a;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    return-object v0
.end method

.method static synthetic t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/instagram/cliffjumper/edit/photo/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah()I

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/b/a/i;
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai()Lcom/instagram/creation/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 879
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;

    if-nez v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 883
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 886
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 887
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 891
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z

    if-nez v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/n;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/n;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 900
    :cond_1
    return-void
.end method

.method public final G()V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->X()V

    .line 905
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 906
    return-void
.end method

.method public final H()V
    .locals 0

    .prologue
    .line 910
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 911
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 912
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    .line 331
    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/aw;->fragment_filter:I

    :goto_0
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 335
    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 337
    sget v1, Lcom/facebook/av;->creation_image_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;

    .line 338
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->W()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 340
    return-object v0

    .line 331
    :cond_0
    sget v0, Lcom/facebook/aw;->fragment_filter_small:I

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 224
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->f:J

    .line 228
    if-eqz p1, :cond_1

    .line 229
    const-string v0, "selectedFilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/IgFilterGroup;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 230
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I

    .line 231
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/w;->a()[I

    move-result-object v0

    const-string v1, "editMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    if-nez v0, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "failed_to_load_gallery_image"

    const-string v1, "failed_to_load_gallery_image"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unable_to_load_image:I

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    new-instance v0, Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-direct {v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    .line 236
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x3

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 238
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 240
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xf

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 241
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 243
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    invoke-direct {v2, v6, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 244
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 246
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    invoke-direct {v2, v5, v6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 250
    :cond_2
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V

    invoke-virtual {v0, v7, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 252
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    .line 253
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v2

    iget-boolean v2, v2, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 259
    :cond_3
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 260
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cameraRotation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mirrorMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 262
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    goto/16 :goto_0

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mirrorMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 294
    :cond_6
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->discard_dialog_text:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dialog_option_discard:I

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/p;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/a/p;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dialog_option_keep:I

    invoke-virtual {v0, v1, v4}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->discard_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ay:Landroid/app/Dialog;

    goto/16 :goto_1
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 366
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v2

    .line 370
    sget v0, Lcom/facebook/av;->loading_cover_for_surface_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    .line 371
    sget v0, Lcom/facebook/av;->filter_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;

    .line 372
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/ac;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    sget v0, Lcom/facebook/av;->button_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;

    .line 376
    sget v0, Lcom/facebook/av;->button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/q;

    invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/q;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    if-eqz v2, :cond_0

    .line 385
    new-instance v3, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    invoke-direct {v3, v4, v5, v8}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    sget v0, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;

    .line 391
    sget v0, Lcom/facebook/av;->action_bar_adjust_switcher:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;

    .line 392
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;

    sget v3, Lcom/facebook/av;->adjust_title:I

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ak:Landroid/widget/TextView;

    .line 393
    sget v0, Lcom/facebook/av;->filter_tool_switcher:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;

    .line 394
    sget v0, Lcom/facebook/av;->adjust_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;

    .line 399
    sget v0, Lcom/facebook/av;->button_mode_filter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;

    .line 400
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;

    new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/r;

    invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/r;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    :goto_0
    sget-object v0, Lcom/instagram/p/a;->l:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 415
    sget v0, Lcom/facebook/av;->filter_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    .line 416
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/s;

    invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/s;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V

    .line 455
    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/e;->a()[Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    move v0, v1

    .line 456
    :goto_1
    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    .line 457
    invoke-virtual {v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V

    .line 460
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v8}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 462
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    if-nez p2, :cond_3

    .line 467
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a()V

    .line 470
    :cond_3
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_8

    .line 471
    sget v0, Lcom/facebook/av;->button_mode_lux:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 472
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/t;

    invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/t;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-nez v1, :cond_4

    .line 496
    sget v1, Lcom/facebook/au;->edit_glyph_lux:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v1, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 498
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V

    .line 523
    :cond_4
    :goto_2
    sget v0, Lcom/facebook/av;->button_mode_tools:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    .line 524
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_9

    .line 525
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/v;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/v;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    sget v0, Lcom/facebook/av;->tool_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    .line 535
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/c;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V

    .line 567
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "straighteningAngle"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v1, v3}, Lcom/instagram/cliffjumper/edit/photo/a/af;->a(Landroid/content/res/Resources;F)[Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V

    .line 575
    :goto_3
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-nez v0, :cond_5

    .line 576
    sget v0, Lcom/facebook/av;->creation_secondary_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 577
    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 578
    :goto_4
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->Y()Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 579
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa()Landroid/view/View;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 580
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v1, :cond_5

    .line 581
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->Z()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 585
    :cond_5
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab()V

    .line 587
    sget v0, Lcom/facebook/av;->button_accept_adjust:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/d;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    sget v0, Lcom/facebook/av;->button_cancel_adjust:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/e;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_6

    .line 605
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v6, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 606
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 607
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    invoke-virtual {v0, v6}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b_(Z)V

    .line 609
    :cond_6
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_7

    .line 610
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    .line 611
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V

    .line 613
    :cond_7
    return-void

    .line 501
    :cond_8
    sget v0, Lcom/facebook/av;->button_mode_enh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/u;

    invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/u;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    sget v1, Lcom/facebook/au;->edit_glyph_lux:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_2

    .line 572
    :cond_9
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 577
    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_4
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 822
    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->az:Z

    if-eqz v2, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    if-eqz v2, :cond_2

    .line 826
    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Z)V

    move v0, v1

    .line 827
    goto :goto_0

    .line 828
    :cond_2
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ay:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v1

    .line 830
    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 818
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;

    .line 819
    return-void
.end method

.method public final d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/a;->b()V

    .line 316
    :cond_0
    const-string v0, "selectedFilter"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/a;->c()V

    .line 321
    :cond_1
    const-string v0, "rotation"

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string v0, "editMode"

    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    const-string v0, "sample_app_render"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 918
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 920
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    .line 921
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V

    .line 922
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    .line 923
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;

    .line 924
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;

    .line 925
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;

    .line 926
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;

    .line 927
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;

    .line 928
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;

    .line 929
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;

    .line 930
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;

    .line 931
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;

    .line 932
    return-void
.end method
