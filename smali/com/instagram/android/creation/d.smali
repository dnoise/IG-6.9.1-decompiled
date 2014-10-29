.class public final Lcom/instagram/android/creation/d;
.super Lcom/instagram/base/a/b;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Lcom/instagram/common/t/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private aa:Lcom/instagram/i/a;

.field private ab:Ljava/util/Observer;

.field private ac:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/instagram/android/a/d;

.field private e:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

.field private h:Ljava/lang/String;

.field private i:Lcom/instagram/common/d/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 48
    const-string v0, "NearbyVenuesFragment"

    iput-object v0, p0, Lcom/instagram/android/creation/d;->a:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/instagram/android/creation/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/e;-><init>(Lcom/instagram/android/creation/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/d;->ab:Ljava/util/Observer;

    .line 108
    new-instance v0, Lcom/instagram/android/creation/f;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/f;-><init>(Lcom/instagram/android/creation/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/d;->ac:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    iget-object v1, p0, Lcom/instagram/android/creation/d;->ab:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/i/a;->b(Ljava/util/Observer;)V

    .line 381
    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    .line 385
    iget-object v0, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    iget-object v1, p0, Lcom/instagram/android/creation/d;->ab:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/i/a;->a(Ljava/util/Observer;)V

    .line 386
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 401
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->V()V

    .line 390
    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/d;->a(Landroid/location/Location;)V

    .line 391
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/foursquare/NearbyVenuesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-string v1, "searchString"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    return-void
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "searchString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p2, :cond_0

    .line 149
    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    :cond_0
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/creation/d;

    invoke-direct {v2}, Lcom/instagram/android/creation/d;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v0, "NearbyVenuesFragment"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->c(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 159
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter

    .prologue
    .line 301
    sget v0, Lcom/facebook/aw;->row_search_venue_edit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 303
    sget v0, Lcom/facebook/av;->row_search_edit_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 304
    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v2, Lcom/instagram/android/creation/j;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/j;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    .line 321
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 323
    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setClearButtonColorFilter(Landroid/graphics/ColorFilter;)V

    .line 324
    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 325
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 326
    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Lcom/instagram/venue/model/Venue;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/venue/model/Venue;I)V

    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "foursquare"

    if-eq v0, v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "foursquare_venue_select"

    invoke-direct {v0, v1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 93
    iget-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v1}, Lcom/instagram/android/a/d;->a()Landroid/location/Location;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "lat"

    const-string v3, "%.8f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 98
    const-string v2, "lng"

    const-string v3, "%.8f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 99
    iget-object v1, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "query"

    iget-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 102
    :cond_2
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    .line 103
    const-string v1, "place_name"

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 104
    const-string v1, "place_id"

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 105
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    .line 361
    :cond_0
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->h:Ljava/lang/String;

    .line 365
    :cond_1
    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    const-string v2, "isFoursquareLocation"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/a/d;->a(Ljava/util/List;Z)V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/a/d;->b()V

    goto :goto_0
.end method

.method private c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    invoke-virtual {v0}, Lcom/instagram/i/a;->a()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/creation/d;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-object v0
.end method

.method private d()Landroid/location/Location;
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/android/creation/d;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/creation/d;)Lcom/instagram/i/a;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/creation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->W()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 267
    iget-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 268
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->V()V

    .line 269
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 165
    sget v0, Lcom/facebook/aw;->fragment_nearby_venues:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    .line 168
    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->ac:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    iget-object v2, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 171
    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->a(Landroid/view/LayoutInflater;)V

    .line 181
    :goto_0
    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v2, Lcom/instagram/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/d;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/e;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    new-instance v2, Lcom/instagram/android/creation/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/g;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v0, Lcom/facebook/av;->action_bar_button_refresh:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 192
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    new-instance v2, Lcom/instagram/android/creation/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/h;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->action_bar_dark_button_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    return-object v1

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u201c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u201d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "searchString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/instagram/i/a;->b()Lcom/instagram/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    .line 244
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v1, Lcom/instagram/android/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/a/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    .line 248
    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    new-instance v2, Lcom/instagram/android/creation/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/i;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/d/h;

    .line 257
    iget-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 259
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 260
    const-string v0, "currentSearch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    .line 262
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "NearbyVenuesFragment.VENUE_CLEARED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "currentSearch"

    iget-object v1, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const-string v0, "nearby_venues"

    return-object v0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    .line 281
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->c()Landroid/location/Location;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/creation/d;->aa:Lcom/instagram/i/a;

    invoke-virtual {v1, v0}, Lcom/instagram/i/a;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v1, v0}, Lcom/instagram/android/a/d;->a(Landroid/location/Location;)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    .line 291
    return-void

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->W()V

    goto :goto_0
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 296
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->V()V

    .line 297
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->X()V

    .line 298
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 229
    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 232
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    .line 233
    iput-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    .line 235
    iput-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    .line 236
    return-void
.end method
