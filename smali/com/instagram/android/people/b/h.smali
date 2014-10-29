.class public final Lcom/instagram/android/people/b/h;
.super Lcom/instagram/base/a/b;
.source "PeopleTagSearchFragment.java"


# instance fields
.field protected a:Z

.field private b:Lcom/instagram/common/a/a/k;

.field private c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/instagram/android/people/widget/d;

.field private f:Landroid/view/View;

.field private g:Lcom/instagram/android/people/b/l;

.field private h:Z

.field private final i:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/android/k/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/instagram/android/people/b/h;->a:Z

    .line 52
    iput-boolean v0, p0, Lcom/instagram/android/people/b/h;->h:Z

    .line 218
    new-instance v0, Lcom/instagram/android/people/b/j;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/b/j;-><init>(Lcom/instagram/android/people/b/h;)V

    iput-object v0, p0, Lcom/instagram/android/people/b/h;->i:Lcom/instagram/common/a/a/j;

    .line 297
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 270
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private W()Lcom/instagram/model/people/b;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-virtual {v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->h()Lcom/instagram/model/people/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/s;)V
    .locals 3
    .parameter

    .prologue
    .line 285
    new-instance v0, Lcom/instagram/android/people/b/h;

    invoke-direct {v0}, Lcom/instagram/android/people/b/h;-><init>()V

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 290
    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 291
    const-string v0, "PeopleTagSearch"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 292
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->b()I

    .line 294
    invoke-virtual {p0}, Landroid/support/v4/app/s;->b()Z

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/h;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/h;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->search_for_x:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/people/b/h;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/instagram/android/people/b/h;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/people/b/h;)Lcom/instagram/android/people/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->searching:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 263
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 267
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->d()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->V()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/people/b/h;)Lcom/instagram/model/people/b;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->W()Lcom/instagram/model/people/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/people/b/h;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->b()V

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 149
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    invoke-interface {v0}, Lcom/instagram/android/people/b/l;->g()V

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 143
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    sget v0, Lcom/facebook/aw;->fragment_people_tag_search:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    sget v1, Lcom/facebook/av;->row_search_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iput-object v1, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 96
    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    iget-object v2, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    iget-boolean v1, p0, Lcom/instagram/android/people/b/h;->h:Z

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v2, Lcom/instagram/android/people/b/k;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/b/k;-><init>(Lcom/instagram/android/people/b/h;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 105
    :cond_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    .line 106
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/instagram/android/people/b/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/i;-><init>(Lcom/instagram/android/people/b/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    sget v1, Lcom/facebook/aw;->row_search_for_x_dark:I

    iget-object v2, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    const-string v2, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 124
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 58
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instagram/android/people/b/l;

    move-object v1, v0

    iput-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 60
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement PeopleTagSearchFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->x()V

    .line 76
    new-instance v0, Lcom/instagram/android/people/widget/e;

    invoke-direct {v0}, Lcom/instagram/android/people/widget/e;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Landroid/content/Context;)Lcom/instagram/android/people/widget/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->z()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/people/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->a()Lcom/instagram/android/people/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->b()Lcom/instagram/android/people/widget/e;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/people/widget/e;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->W()Lcom/instagram/model/people/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Lcom/instagram/model/people/b;)Lcom/instagram/android/people/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->c()Lcom/instagram/android/people/widget/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;

    .line 85
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/common/a/a/k;

    .line 86
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    .line 166
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    .line 167
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 153
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    invoke-interface {v1, v0}, Lcom/instagram/android/people/b/l;->a(Lcom/instagram/user/c/a;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    invoke-interface {v0}, Lcom/instagram/android/people/b/l;->g()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/common/a/a/k;

    new-instance v2, Lcom/instagram/android/c/a/ac;

    invoke-direct {v2, v0}, Lcom/instagram/android/c/a/ac;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/people/b/h;->i:Lcom/instagram/common/a/a/j;

    invoke-virtual {v2, v0}, Lcom/instagram/android/c/a/ac;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "people_tagging_search"

    return-object v0
.end method

.method public final k_()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 173
    iget-boolean v0, p0, Lcom/instagram/android/people/b/h;->h:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->c()V

    .line 175
    invoke-direct {p0}, Lcom/instagram/android/people/b/h;->V()V

    .line 176
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v1, Lcom/instagram/android/people/b/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/people/b/k;-><init>(Lcom/instagram/android/people/b/h;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 131
    iget-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 132
    iput-object v1, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 133
    iput-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;

    .line 134
    iput-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;

    .line 135
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;

    .line 69
    return-void
.end method
