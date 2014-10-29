.class public final Lcom/instagram/android/maps/ui/m;
.super Landroid/widget/PopupWindow;
.source "MapMediaPopup.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/android/maps/ui/af;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/instagram/android/maps/ui/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/instagram/android/maps/ui/m;

.field private g:Landroid/view/View;

.field private h:Lcom/instagram/android/maps/ui/m;

.field private i:Ljava/lang/Runnable;

.field private j:Landroid/view/View;

.field private k:Lcom/instagram/android/maps/ui/ah;

.field private l:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/android/maps/ui/af;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 52
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    .line 55
    iput-object p4, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    .line 56
    iput-object p5, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 59
    invoke-direct {p0, p3}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/ah;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/android/maps/ui/af;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;",
            "Landroid/view/View;",
            "Lcom/instagram/android/maps/ui/ah;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 64
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    .line 67
    iput-object p4, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    .line 68
    iput-object p5, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    .line 69
    iput-object p3, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 71
    invoke-direct {p0, p3}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method private a(Z)Landroid/widget/LinearLayout;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 284
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 286
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 287
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 288
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    return-object p1
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(II)V

    .line 246
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/b;->addView(Landroid/view/View;)V

    .line 508
    return-void
.end method

.method private a(Lcom/instagram/android/g/b;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/p;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/q;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/t;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/t;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/instagram/android/maps/ui/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/ad;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void
.end method

.method private a(Lcom/instagram/android/g/b;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->animated_info_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 232
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 233
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    sget v1, Lcom/facebook/av;->animated_info_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 235
    new-instance v2, Lcom/instagram/android/maps/ui/w;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/w;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/g/b;Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/as;->dialog_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/n;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->e()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 94
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 96
    invoke-direct {p0, v4}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 97
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/g/b;Landroid/widget/LinearLayout;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 187
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 188
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/m;->b(Ljava/util/List;)V

    .line 191
    :cond_2
    return-void

    .line 99
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 100
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 101
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 104
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 105
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 108
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 111
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 112
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 114
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 115
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 116
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 118
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 119
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 120
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 121
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 122
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 123
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 124
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 125
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 126
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 127
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 128
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 130
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 131
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 132
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 133
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 134
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 135
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 137
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 138
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 139
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 140
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 142
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 143
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 144
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 145
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 146
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 147
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 148
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 149
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 150
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    .line 151
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 152
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 155
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 156
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 157
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 159
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 160
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 161
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 162
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 163
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 164
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 165
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 167
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 168
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 169
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 170
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 171
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 172
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 173
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 175
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 176
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 177
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V

    .line 178
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 180
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 215
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->animated_map_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 216
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    sget v1, Lcom/facebook/av;->animated_map_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 219
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/az;->show_all_x_photos:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v2, Lcom/instagram/android/maps/ui/v;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/v;-><init>(Lcom/instagram/android/maps/ui/m;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method private b(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/u;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/u;-><init>(Lcom/instagram/android/maps/ui/m;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method

.method private b(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/instagram/android/maps/ui/ae;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/ae;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->c()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 195
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 197
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->maps_full_frame_total_width_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v2, v0, v1

    .line 198
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 199
    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-virtual {v0, v2}, Lcom/instagram/android/g/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/common/g/b/h;->c(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private c(Lcom/instagram/android/g/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->constrained_image_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 385
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 386
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 388
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    :cond_0
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    sget v1, Lcom/facebook/av;->constrained_image_view:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    .line 393
    new-instance v2, Lcom/instagram/android/maps/ui/o;

    invoke-direct {v2, p0, v1, p1}, Lcom/instagram/android/maps/ui/o;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;Lcom/instagram/android/g/b;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V

    .line 399
    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->invalidate()V

    .line 400
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->i()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(II)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b()V

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/maps/ui/m;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 275
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 276
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 277
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_centering_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 278
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-object v0
.end method

.method private f()Lcom/instagram/android/maps/ui/b;
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 297
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/instagram/android/maps/ui/b;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    .line 299
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOrientation(I)V

    .line 300
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/b;->setGravity(I)V

    .line 301
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 302
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->g()I

    move-result v1

    .line 303
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 304
    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOriginalSize(I)V

    .line 308
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setStartX(I)V

    .line 309
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setStartY(F)V

    .line 310
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/x;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/x;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V

    .line 316
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/y;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/b;->a()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    return-object v0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 330
    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOriginalSize(I)V

    .line 332
    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setStartX(I)V

    .line 333
    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setStartY(F)V

    .line 334
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/aa;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V

    .line 340
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/ab;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/ab;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    return-object v0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->map_media_outer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x4

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(II)V

    .line 460
    return-void
.end method

.method static synthetic h(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->i()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/maps/ui/m;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->d()V

    .line 474
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->b(II)V

    .line 487
    return-void
.end method

.method private j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->a()V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/android/maps/ui/d;)V
    .locals 1
    .parameter

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/b;->setReverAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V

    .line 541
    return-void
.end method

.method public final a(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    .line 512
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    .line 519
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 524
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->c()V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 533
    :cond_2
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 265
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    .line 267
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method
