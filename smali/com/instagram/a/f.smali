.class public final Lcom/instagram/a/f;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/ViewGroup;

.field private g:Lcom/instagram/a/c;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    .line 47
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 48
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    .line 49
    iput-object p2, p0, Lcom/instagram/a/f;->d:Landroid/view/View$OnClickListener;

    .line 50
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_textview_custom_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/instagram/a/f;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/a/f;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/instagram/a/f;
    .locals 1
    .parameter

    .prologue
    .line 42
    check-cast p0, Lcom/instagram/a/a;

    invoke-interface {p0}, Lcom/instagram/a/a;->a()Lcom/instagram/a/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 193
    sget v0, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    iget-object v1, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_0

    const/4 v0, -0x2

    :goto_0
    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/a/d;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/e;->b:Lcom/instagram/a/e;

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/at;->action_bar_button_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/au;->dark_action_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/instagram/a/f;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->nav_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/a/d;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 56
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/facebook/au;->action_bar_background:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 57
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/a/d;

    iget-object v3, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/e;->b:Lcom/instagram/a/e;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/instagram/a/f;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->nav_arrow_back:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v8}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->nav_refresh:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 71
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v7}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    .line 73
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v7}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_item_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 81
    iget-object v0, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 82
    iget-object v0, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 86
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/a/f;->g:Lcom/instagram/a/c;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/a/f;->g:Lcom/instagram/a/c;

    invoke-interface {v0, p0}, Lcom/instagram/a/c;->a(Lcom/instagram/a/b;)V

    .line 94
    :cond_1
    return-void
.end method

.method private e(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/a/f;->a(Landroid/view/View;Z)V

    .line 108
    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0, v0, v2}, Lcom/instagram/a/f;->a(Landroid/view/View;Z)V

    .line 117
    return-object v0
.end method

.method public final a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/instagram/a/i;->a()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/instagram/a/f;->e(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/instagram/a/f;->b(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->check:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 165
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/instagram/a/f;->b(Z)V

    .line 169
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method public final a()Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .locals 5

    .prologue
    const/16 v2, 0x80

    const/4 v4, 0x0

    .line 241
    sget v0, Lcom/facebook/aw;->action_bar_title_search:I

    invoke-virtual {p0, v0}, Lcom/instagram/a/f;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 243
    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 244
    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setClearButtonAlpha(I)V

    .line 245
    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4d

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 247
    new-instance v1, Lcom/instagram/a/g;

    invoke-direct {v1, p0}, Lcom/instagram/a/g;-><init>(Lcom/instagram/a/f;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object v1, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    iget-object v1, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-static {v1, v4}, Lcom/instagram/common/y/f;->d(Landroid/view/View;I)V

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_search_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->c(Landroid/view/View;I)V

    .line 273
    :goto_2
    return-object v0

    .line 245
    :cond_0
    const/16 v1, 0x33

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_search_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->d(Landroid/view/View;I)V

    goto :goto_1

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-static {v1, v4}, Lcom/instagram/common/y/f;->c(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/a/f;->a(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final a(IIILcom/instagram/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 285
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 290
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 291
    invoke-static {p1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v0, v1

    .line 292
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/a/d;

    if-eqz v0, :cond_3

    .line 301
    new-instance v4, Lcom/instagram/a/d;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/instagram/a/d;

    invoke-virtual {v0}, Lcom/instagram/a/d;->a()I

    move-result v0

    invoke-direct {v4, v5, p4, v0}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 293
    :cond_1
    instance-of v0, v1, Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 294
    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-static {p1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 295
    :cond_2
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 296
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 307
    :cond_3
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 308
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method public final a(Lcom/instagram/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/instagram/a/f;->g:Lcom/instagram/a/c;

    .line 358
    iget-object v0, p0, Lcom/instagram/a/f;->g:Lcom/instagram/a/c;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 360
    invoke-direct {p0}, Lcom/instagram/a/f;->d()V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v1, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v1, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void

    .line 225
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lcom/instagram/a/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/instagram/a/f;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-object v0
.end method

.method public final b(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->action_bar_button_text:I

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/a/f;->a(Landroid/view/View;Z)V

    .line 127
    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/instagram/a/f;->d()V

    .line 353
    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/a/h;

    invoke-direct {v1, p0, p1}, Lcom/instagram/a/h;-><init>(Lcom/instagram/a/f;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    .line 349
    :cond_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/instagram/a/f;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    return-object v0
.end method

.method public final d(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/au;->dark_action_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/a/f;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->nav_arrow_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v0, p0, Lcom/instagram/a/f;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/a/d;

    iget-object v2, p0, Lcom/instagram/a/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v5}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_arrow_next:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    .line 185
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    .line 187
    invoke-virtual {p0, v5}, Lcom/instagram/a/f;->b(Z)V

    .line 189
    iget-object v0, p0, Lcom/instagram/a/f;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method
