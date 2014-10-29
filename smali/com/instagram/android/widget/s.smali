.class public final Lcom/instagram/android/widget/s;
.super Landroid/widget/FrameLayout;
.source "ShareTable.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/instagram/android/creation/widget/ShareTableButton;

.field private final e:Landroid/view/View$OnClickListener;

.field private f:Lcom/instagram/android/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/widget/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/s;->c:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/instagram/android/widget/t;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/t;-><init>(Lcom/instagram/android/widget/s;)V

    iput-object v0, p0, Lcom/instagram/android/widget/s;->e:Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p0}, Lcom/instagram/android/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 45
    sget v0, Lcom/facebook/aw;->widget_share_table:I

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/facebook/av;->share_table_button_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/android/widget/s;->b:Landroid/view/ViewGroup;

    .line 47
    sget v0, Lcom/facebook/av;->share_table_divider:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/s;->a:Landroid/view/View;

    .line 49
    invoke-direct {p0, v1, p2}, Lcom/instagram/android/widget/s;->a(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 50
    invoke-direct {p0}, Lcom/instagram/android/widget/s;->a()V

    .line 53
    invoke-static {}, Lcom/instagram/service/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/widget/s;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->share_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->sharing_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/s;->setVisibility(I)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/widget/s;)Lcom/instagram/android/widget/v;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/widget/s;->f:Lcom/instagram/android/widget/v;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->a()V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    new-instance v1, Lcom/instagram/android/widget/u;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/u;-><init>(Lcom/instagram/android/widget/s;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ShareTableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/widget/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lcom/instagram/android/widget/s;->b()Landroid/view/ViewGroup;

    move-result-object v0

    move v2, v3

    .line 110
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 111
    if-lez v2, :cond_2

    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/instagram/android/widget/s;->b()Landroid/view/ViewGroup;

    move-result-object v0

    move-object v4, v0

    .line 115
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    .line 116
    sget v1, Lcom/facebook/aw;->widget_share_table_button:I

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/creation/widget/ShareTableButton;

    .line 118
    invoke-virtual {p0}, Lcom/instagram/android/widget/s;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/instagram/android/creation/widget/ShareTableButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->b()I

    move-result v5

    invoke-virtual {v1, v5, v3, v3, v3}, Lcom/instagram/android/creation/widget/ShareTableButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 121
    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v5, p0, Lcom/instagram/android/widget/s;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/instagram/android/creation/widget/ShareTableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v5, p0, Lcom/instagram/android/widget/s;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    sget-object v5, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;

    if-ne v0, v5, :cond_0

    .line 128
    iput-object v1, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    .line 110
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_0

    .line 131
    :cond_1
    return-void

    :cond_2
    move-object v4, v0

    goto :goto_1
.end method

.method private b()Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->widget_share_table_row:I

    iget-object v2, p0, Lcom/instagram/android/widget/s;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/instagram/android/widget/s;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    sget v1, Lcom/facebook/av;->share_table_row_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/model/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/instagram/android/widget/s;->d:Lcom/instagram/android/creation/widget/ShareTableButton;

    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/instagram/model/a/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/instagram/model/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setEnabled(Z)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/widget/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 84
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/widget/x;

    invoke-virtual {v1, p1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 69
    iget-object v0, p0, Lcom/instagram/android/widget/s;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/widget/s;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/widget/s;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 73
    return-void
.end method

.method public final setOnSharingToggleListener(Lcom/instagram/android/widget/v;)V
    .locals 0
    .parameter "onSharingToggleListener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/android/widget/s;->f:Lcom/instagram/android/widget/v;

    .line 62
    return-void
.end method
