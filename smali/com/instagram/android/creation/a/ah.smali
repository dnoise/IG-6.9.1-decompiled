.class public final Lcom/instagram/android/creation/a/ah;
.super Lcom/instagram/base/a/b;
.source "MetadataFragment.java"


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Lcom/instagram/android/creation/a/ao;

.field private e:I

.field private f:Lcom/instagram/android/creation/a/an;

.field private g:Lcom/instagram/common/d/h;

.field private h:Lcom/instagram/android/creation/a/am;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 85
    new-instance v0, Lcom/instagram/android/creation/a/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/am;-><init>(Lcom/instagram/android/creation/a/ah;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->h:Lcom/instagram/android/creation/a/am;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/a/ah;->i:I

    .line 407
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->a:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ah;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/creation/a/ah;->a:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    new-instance v3, Landroid/content/Intent;

    const-string v0, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v4, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    invoke-static {v3}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 269
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    invoke-virtual {v0, p1}, Lcom/instagram/android/creation/a/ao;->b(I)V

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    :cond_1
    move v1, v2

    .line 266
    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    new-instance v0, Lcom/instagram/android/creation/a/ao;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/creation/a/ao;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    .line 274
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->a()V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->c()V

    .line 276
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ah;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ah;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/ah;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I

    return v0
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/ah;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/instagram/android/creation/a/ah;->e:I

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 317
    iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I

    if-nez v0, :cond_1

    .line 318
    sget v1, Lcom/facebook/av;->row_caption_followshare:I

    .line 319
    sget v0, Lcom/facebook/av;->row_caption_directshare:I

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 331
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {v1}, Lcom/instagram/android/creation/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcom/instagram/android/creation/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 337
    invoke-static {v0}, Lcom/instagram/android/creation/a;->b(Landroid/view/View;)V

    .line 339
    :cond_0
    return-void

    .line 321
    :cond_1
    sget v1, Lcom/facebook/av;->row_caption_directshare:I

    .line 322
    sget v0, Lcom/facebook/av;->row_caption_followshare:I

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 279
    sget v0, Lcom/facebook/av;->metadata_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    .line 281
    iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->f:Lcom/instagram/android/creation/a/an;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    .line 282
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/f;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v2}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setScrollingEnabled(Z)V

    .line 286
    :cond_0
    iput v2, p0, Lcom/instagram/android/creation/a/ah;->e:I

    .line 288
    new-instance v1, Lcom/instagram/android/creation/a/al;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/creation/a/al;-><init>(Lcom/instagram/android/creation/a/ah;Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bm;)V

    .line 313
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/ah;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/instagram/android/creation/a/ah;->i:I

    return p1
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v1

    .line 154
    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 158
    :cond_0
    sget v2, Lcom/facebook/av;->loading_spinner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    sget v2, Lcom/facebook/av;->super_metadata_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-direct {p0, v1}, Lcom/instagram/android/creation/a/ah;->a(Landroid/view/View;)V

    .line 163
    invoke-direct {p0, v1}, Lcom/instagram/android/creation/a/ah;->b(Landroid/view/View;)V

    .line 166
    sget v2, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    new-instance v2, Lcom/instagram/android/creation/a/aj;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/aj;-><init>(Lcom/instagram/android/creation/a/ah;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/creation/a/ak;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ak;-><init>(Lcom/instagram/android/creation/a/ah;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 199
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "shareMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string v1, "shareMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/creation/a/ah;->i:I

    .line 202
    :cond_2
    iget v1, p0, Lcom/instagram/android/creation/a/ah;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 203
    iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ao;->a(I)V

    .line 207
    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ah;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ah;->b()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/ah;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/instagram/android/creation/a/ah;->e:I

    return v0
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    return-void

    .line 343
    :cond_0
    const/16 v0, 0x4d

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/creation/a/ah;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/ah;->c:Z

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 221
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 224
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 230
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 232
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 234
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 113
    sget v0, Lcom/facebook/aw;->fragment_metadata:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    sget v0, Lcom/facebook/av;->upload_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    sget v0, Lcom/facebook/av;->view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/f;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    sget v0, Lcom/facebook/av;->metadata_tab_shadow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 250
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED"

    iget-object v2, p0, Lcom/instagram/android/creation/a/ah;->h:Lcom/instagram/android/creation/a/am;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/d/h;

    .line 254
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 255
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Lcom/instagram/android/creation/a/an;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->q()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/an;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/support/v4/app/s;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->f:Lcom/instagram/android/creation/a/an;

    .line 107
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 108
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/ai;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/creation/a/ai;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/instagram/android/creation/a/ah;->c:Z

    .line 349
    iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->d(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    const-string v0, "shareMode"

    iget v1, p0, Lcom/instagram/android/creation/a/ah;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string v0, "metadata"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 240
    iput-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->b()V

    .line 243
    iput-object v1, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;

    .line 245
    :cond_0
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 260
    iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 261
    return-void
.end method
