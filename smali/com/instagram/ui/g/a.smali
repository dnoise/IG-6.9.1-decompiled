.class public final Lcom/instagram/ui/g/a;
.super Ljava/lang/Object;
.source "TooltipDelegate.java"

# interfaces
.implements Lcom/instagram/ui/f/f;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/util/DisplayMetrics;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:I

.field private g:Landroid/view/View;

.field private h:I

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    .line 46
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 118
    :goto_0
    iget v0, p0, Lcom/instagram/ui/g/a;->h:I

    if-eq p1, v0, :cond_2

    .line 119
    sget v0, Lcom/instagram/ui/f/g;->a:I

    if-ne p1, v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/aw;->tooltip_down:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->bottom_carrot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    .line 123
    iget-object v2, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    sget v0, Lcom/facebook/au;->carrot_down_bg:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->bubble_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 134
    if-eqz v1, :cond_7

    sget v0, Lcom/facebook/au;->tag_bubble_bg:I

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 138
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v3, Lcom/facebook/av;->dismiss_spacer:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    iget-object v3, p0, Lcom/instagram/ui/g/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget v3, p0, Lcom/instagram/ui/g/a;->f:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget v0, p0, Lcom/instagram/ui/g/a;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget v0, p0, Lcom/instagram/ui/g/a;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/common/y/f;->c(Landroid/view/View;I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/instagram/ui/g/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iput p1, p0, Lcom/instagram/ui/g/a;->h:I

    .line 156
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 123
    :cond_4
    sget v0, Lcom/facebook/au;->tag_carrot_bottom:I

    goto :goto_1

    .line 125
    :cond_5
    sget v0, Lcom/instagram/ui/f/g;->b:I

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/aw;->tooltip_up:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->top_carrot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    .line 129
    iget-object v2, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    sget v0, Lcom/facebook/au;->carrot_up_bg:I

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_6
    sget v0, Lcom/facebook/au;->tag_carrot_top:I

    goto :goto_4

    .line 134
    :cond_7
    sget v0, Lcom/facebook/au;->tag_bubble:I

    goto :goto_3
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 162
    if-gez p1, :cond_0

    .line 164
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 165
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void

    .line 168
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 169
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "view already created"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/instagram/ui/g/a;->h:I

    if-eq p1, v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/instagram/ui/g/a;->a(I)V

    .line 97
    :cond_0
    invoke-direct {p0, p2}, Lcom/instagram/ui/g/a;->b(I)V

    .line 99
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    .line 55
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    .line 50
    iput-object p1, p0, Lcom/instagram/ui/g/a;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final a()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 80
    sget v0, Lcom/instagram/ui/f/g;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/ui/g/a;->a(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 104
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 105
    iget-object v1, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    div-float/2addr v1, v3

    .line 107
    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    .line 64
    iput-object p1, p0, Lcom/instagram/ui/g/a;->e:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    .line 59
    const/16 v0, 0x8

    iput v0, p0, Lcom/instagram/ui/g/a;->f:I

    .line 60
    return-void
.end method
