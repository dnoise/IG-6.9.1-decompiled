.class public final Lcom/instagram/android/fragment/fc;
.super Lcom/instagram/base/a/i;
.source "TabbedExploreFragment.java"

# interfaces
.implements Lcom/instagram/base/b/a;


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;


# instance fields
.field private aa:Lcom/instagram/base/b/b;

.field private final ab:Lcom/instagram/base/b/d;

.field private d:Lcom/instagram/android/fragment/fl;

.field private e:Lcom/instagram/android/fragment/fk;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/fc;->b:Ljava/lang/Integer;

    .line 54
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/fc;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/base/a/i;-><init>()V

    .line 61
    new-instance v0, Lcom/instagram/base/b/b;

    invoke-direct {v0}, Lcom/instagram/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    .line 62
    new-instance v0, Lcom/instagram/android/fragment/fd;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fd;-><init>(Lcom/instagram/android/fragment/fc;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fc;->ab:Lcom/instagram/base/b/d;

    .line 309
    return-void
.end method

.method private W()Lcom/instagram/android/fragment/fj;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->e:Lcom/instagram/android/fragment/fk;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fk;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/fj;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/fc;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/instagram/android/fragment/fc;->h:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fl;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/fragment/fc;->W()Lcom/instagram/android/fragment/fj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/fc;)Lcom/instagram/base/b/b;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/fc;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/instagram/android/fragment/fc;->f:Z

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 6

    .prologue
    .line 158
    invoke-super {p0}, Lcom/instagram/base/a/i;->F()V

    .line 160
    iget-object v1, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    iget-boolean v0, p0, Lcom/instagram/android/fragment/fc;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->ab:Lcom/instagram/base/b/d;

    :goto_0
    iget v2, p0, Lcom/instagram/android/fragment/fc;->h:I

    int-to-float v2, v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->l()Landroid/support/v4/app/k;

    move-result-object v5

    invoke-static {v5}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/a/f;->c()Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/base/b/b;->a(Lcom/instagram/base/b/d;F[Landroid/view/View;)V

    .line 164
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/instagram/base/a/i;->G()V

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    invoke-virtual {v0}, Lcom/instagram/base/b/b;->a()V

    .line 170
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    sget v0, Lcom/facebook/aw;->fragment_tabbed_explore:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/instagram/base/a/i;->a(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Lcom/instagram/android/fragment/fk;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->q()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/fk;-><init>(Lcom/instagram/android/fragment/fc;Landroid/support/v4/app/s;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fc;->e:Lcom/instagram/android/fragment/fk;

    .line 136
    sget-object v0, Lcom/instagram/m/c;->l:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fc;->f:Z

    .line 137
    sget-object v0, Lcom/instagram/m/c;->m:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fc;->g:Z

    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/fc;->h:I

    .line 139
    return-void
.end method

.method public final a(Landroid/support/v4/app/ak;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v1, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    invoke-virtual {p1}, Landroid/support/v4/app/ak;->E()Landroid/view/View;

    move-result-object v0

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget v2, p0, Lcom/instagram/android/fragment/fc;->h:I

    invoke-virtual {v1, v0, v2}, Lcom/instagram/base/b/b;->a(Landroid/widget/ListView;I)V

    .line 102
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    sget v0, Lcom/facebook/av;->tabbed_explore_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    .line 200
    iget-object v1, p0, Lcom/instagram/android/fragment/fc;->e:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/fk;->a(Landroid/view/ViewGroup;)V

    .line 201
    iget-object v1, p0, Lcom/instagram/android/fragment/fc;->e:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    .line 202
    new-instance v1, Lcom/instagram/android/fragment/ff;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ff;-><init>(Lcom/instagram/android/fragment/fc;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bm;)V

    .line 222
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    if-eqz p2, :cond_0

    const-string v0, "TabbedExploreFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "TabbedExploreFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fc;->a(I)V

    .line 153
    :cond_0
    sget v0, Lcom/facebook/av;->view_switcher_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fc;->i:Landroid/view/View;

    .line 154
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 242
    new-instance v0, Lcom/instagram/android/fragment/fg;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fg;-><init>(Lcom/instagram/android/fragment/fc;)V

    .line 248
    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/fragment/fh;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/fh;-><init>(Lcom/instagram/android/fragment/fc;)V

    invoke-interface {p1, v1, v2}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 258
    iget-boolean v1, p0, Lcom/instagram/android/fragment/fc;->g:Z

    if-nez v1, :cond_0

    .line 259
    sget v1, Lcom/facebook/az;->explore:I

    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(I)V

    .line 260
    sget-object v1, Lcom/instagram/a/i;->a:Lcom/instagram/a/i;

    invoke-interface {p1, v1, v0}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 271
    :goto_0
    new-instance v0, Lcom/instagram/android/fragment/fi;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fi;-><init>(Lcom/instagram/android/fragment/fc;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void

    .line 262
    :cond_0
    invoke-interface {p1}, Lcom/instagram/a/b;->a()Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 264
    sget v2, Lcom/facebook/az;->search:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setHint(I)V

    .line 265
    invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    .line 266
    invoke-virtual {v1, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setFocusable(Z)V

    .line 267
    invoke-virtual {v1, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCursorVisible(Z)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final a(Lcom/instagram/android/fragment/fj;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/fc;->W()Lcom/instagram/android/fragment/fj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/instagram/android/fragment/fj;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public final at()Lcom/instagram/base/b/b;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->aa:Lcom/instagram/base/b/b;

    return-object v0
.end method

.method public final au()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/instagram/android/fragment/fc;->f:Z

    if-eqz v1, :cond_0

    .line 112
    sget v1, Lcom/facebook/av;->view_switcher_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/fc;->h:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/instagram/android/fragment/fl;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/fragment/fl;-><init>(Lcom/instagram/android/fragment/fc;Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    .line 227
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fl;->a()V

    .line 228
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()Lcom/instagram/base/a/j;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    const-string v0, "TabbedExploreFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fc;->V()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    invoke-super {p0, p1}, Lcom/instagram/base/a/i;->e(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "tabbed_explore"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->e:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fk;->a(Landroid/view/ViewGroup;)V

    .line 176
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fl;->b()V

    .line 178
    iput-object v1, p0, Lcom/instagram/android/fragment/fc;->d:Lcom/instagram/android/fragment/fl;

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/i;->m_()V

    .line 182
    return-void
.end method

.method public final s_()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/fragment/fc;->W()Lcom/instagram/android/fragment/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/fragment/fj;->s_()V

    .line 90
    return-void
.end method
