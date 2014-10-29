.class public abstract Lcom/instagram/android/fragment/ea;
.super Lcom/instagram/base/a/b;
.source "SearchFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/view/View;

.field private ad:Lcom/instagram/common/d/h;

.field private ae:Lcom/instagram/android/feed/a;

.field private final af:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ea;->b:Z

    .line 60
    new-instance v0, Lcom/instagram/android/fragment/eb;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/eb;-><init>(Lcom/instagram/android/fragment/ea;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->af:Landroid/os/Handler;

    .line 324
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    iput-boolean v3, p0, Lcom/instagram/android/fragment/ea;->b:Z

    .line 246
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->search_for_x:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ea;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->e:Z

    return v0
.end method

.method private ag()Lcom/instagram/android/fragment/y;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/y;

    return-object v0
.end method

.method private ah()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    sget v3, Lcom/facebook/av;->view_switcher_button_second:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    sget v3, Lcom/facebook/az;->tags:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v3, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->b()I

    move-result v0

    sget v4, Lcom/instagram/android/fragment/ef;->a:I

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    new-instance v3, Lcom/instagram/android/fragment/ed;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ed;-><init>(Lcom/instagram/android/fragment/ea;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    sget v3, Lcom/facebook/av;->view_switcher_button_first:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    .line 205
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->d:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    sget v3, Lcom/facebook/az;->people:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->b()I

    move-result v3

    sget v4, Lcom/instagram/android/fragment/ef;->b:I

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/fragment/ee;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ee;-><init>(Lcom/instagram/android/fragment/ea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 228
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 192
    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    sget v3, Lcom/facebook/az;->users:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 210
    goto :goto_2
.end method

.method private ai()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ea;)Lcom/instagram/android/fragment/y;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/android/fragment/ea;->ag()Lcom/instagram/android/fragment/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ea;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/ea;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public H()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 320
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ad:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->ae:Lcom/instagram/android/feed/a;

    .line 322
    return-void
.end method

.method protected abstract V()I
.end method

.method public final W()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public final X()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method protected final Y()Lcom/instagram/android/feed/a;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ae:Lcom/instagram/android/feed/a;

    return-object v0
.end method

.method protected final Z()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 237
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a;->b()V

    .line 137
    sget v0, Lcom/facebook/aw;->fragment_search:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    .line 142
    sget v0, Lcom/facebook/aw;->view_switcher_buttons:I

    iget-object v1, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/instagram/android/fragment/ea;->ah()V

    .line 145
    sget v0, Lcom/facebook/aw;->row_search_for_x:I

    iget-object v1, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_glyph:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 153
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->b:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ea;->a(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "BROADCAST_UPDATED_SEARCHES"

    new-instance v2, Lcom/instagram/android/fragment/eg;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/fragment/eg;-><init>(Lcom/instagram/android/fragment/ea;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->ad:Lcom/instagram/common/d/h;

    .line 108
    sget-object v0, Lcom/instagram/m/c;->e:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ea;->c:Z

    .line 109
    sget-object v0, Lcom/instagram/m/c;->l:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ea;->d:Z

    .line 110
    new-instance v0, Lcom/instagram/android/feed/a;

    invoke-direct {v0}, Lcom/instagram/android/feed/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ea;->ae:Lcom/instagram/android/feed/a;

    .line 111
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ad:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 186
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ea;->c(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method protected abstract a(Landroid/widget/AdapterView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected final aa()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ea;->b:Z

    .line 241
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void
.end method

.method protected final ab()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->af:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->af:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    return-void
.end method

.method protected final ac()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->c:Z

    return v0
.end method

.method protected final ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final ae()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ea;->f:Z

    return v0
.end method

.method public final af()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method protected abstract b()I
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/instagram/android/fragment/ea;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ea;->a(Ljava/lang/String;)V

    .line 260
    :cond_1
    return-void
.end method

.method protected abstract c()Landroid/widget/BaseAdapter;
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iput-object p1, p0, Lcom/instagram/android/fragment/ea;->a:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->d()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {p1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ea;->a(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/ea;->d(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->aa()V

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    return-void

    .line 231
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected abstract d()Landroid/widget/Filter;
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/fragment/ec;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ec;-><init>(Lcom/instagram/android/fragment/ea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ea;->ab()V

    .line 281
    return-void
.end method

.method protected final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ea;->e:Z

    .line 302
    return-void
.end method

.method protected final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ea;->f:Z

    .line 310
    return-void
.end method

.method public m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->g:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->h:Landroid/widget/ListView;

    .line 170
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->i:Landroid/view/View;

    .line 171
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->ac:Landroid/view/View;

    .line 172
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->aa:Landroid/widget/TextView;

    .line 173
    iput-object v1, p0, Lcom/instagram/android/fragment/ea;->ab:Landroid/widget/TextView;

    .line 174
    return-void
.end method
