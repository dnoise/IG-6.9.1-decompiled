.class public final Lcom/instagram/android/creation/a/t;
.super Lcom/instagram/base/a/b;
.source "FollowersShareFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/v;


# instance fields
.field a:Ljava/util/Observer;

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/View;

.field private ac:Lcom/instagram/android/widget/IgAutoCompleteTextView;

.field private ad:Lcom/instagram/android/creation/a/a;

.field private ae:Lcom/instagram/creation/b/a/b;

.field private af:Landroid/location/Location;

.field private ag:Lcom/instagram/venue/model/Venue;

.field private ah:Landroid/location/Location;

.field private ai:Z

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/widget/x;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Z

.field private al:Lcom/instagram/common/d/h;

.field private am:Lcom/instagram/android/creation/a/af;

.field private an:Lcom/instagram/android/creation/a/ag;

.field private ao:Lcom/facebook/b/e;

.field private final ap:Landroid/os/Handler;

.field private aq:Lcom/instagram/android/creation/a;

.field b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/instagram/i/a;

.field private d:Landroid/widget/CompoundButton;

.field private e:Lcom/instagram/android/widget/s;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CompoundButton;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 100
    new-instance v0, Lcom/instagram/android/creation/a/af;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/af;-><init>(Lcom/instagram/android/creation/a/t;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->am:Lcom/instagram/android/creation/a/af;

    .line 101
    new-instance v0, Lcom/instagram/android/creation/a/ag;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/ag;-><init>(Lcom/instagram/android/creation/a/t;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->an:Lcom/instagram/android/creation/a/ag;

    .line 104
    new-instance v0, Lcom/instagram/android/creation/a/u;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/u;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    .line 124
    new-instance v0, Lcom/instagram/android/creation/a/w;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/w;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ap:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/instagram/android/creation/a/x;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/x;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->b:Landroid/content/BroadcastReceiver;

    .line 169
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iput-boolean v2, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    .line 404
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Lcom/instagram/i/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/i/a;->b(Ljava/util/Observer;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ap:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    return-void
.end method

.method private W()V
    .locals 4

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ap:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Lcom/instagram/i/a;

    invoke-virtual {v0}, Lcom/instagram/i/a;->a()Landroid/location/Location;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->c:Lcom/instagram/i/a;

    invoke-virtual {v1, v0}, Lcom/instagram/i/a;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->locating:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Lcom/instagram/i/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/i/a;->a(Ljava/util/Observer;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    goto :goto_0
.end method

.method private X()Z
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Z()Landroid/location/Location;

    move-result-object v0

    .line 427
    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z()Landroid/location/Location;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/facebook/b/e;)Lcom/facebook/b/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ao:Lcom/facebook/b/e;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/instagram/venue/model/Venue;)Lcom/instagram/venue/model/Venue;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->aj:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    .line 447
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->V()V

    .line 449
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->g()V

    .line 463
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/view/View;

    new-instance v1, Lcom/instagram/android/creation/a/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/v;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/b;->a(D)V

    .line 461
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/b;->b(D)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->autocomplete_list_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 250
    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setDropDownMaxNumberItemsDisplayed$2549578(I)V

    .line 252
    new-instance v0, Lcom/instagram/android/creation/a;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, v2, p1, p0}, Lcom/instagram/android/creation/a;-><init>(Lcom/instagram/creation/b/a/b;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->aq:Lcom/instagram/android/creation/a;

    .line 253
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aq:Lcom/instagram/android/creation/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a;->a()V

    .line 255
    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    new-instance v2, Lcom/instagram/android/creation/a/ab;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ab;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 265
    new-instance v0, Lcom/instagram/android/widget/s;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->aj:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/instagram/android/widget/s;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    .line 266
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, p0}, Lcom/instagram/android/widget/s;->setOnSharingToggleListener(Lcom/instagram/android/widget/v;)V

    .line 267
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/instagram/android/widget/s;->setPadding(IIII)V

    .line 269
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 270
    sget v0, Lcom/facebook/av;->followers_share_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/instagram/android/creation/a/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ac;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 312
    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->d()V

    .line 317
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/creation/a/ad;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ad;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_2

    .line 325
    sget v0, Lcom/facebook/av;->metadata_row_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/a/ae;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ae;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    sget v0, Lcom/facebook/av;->metadata_textview_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    .line 332
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ac()V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    .line 340
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    new-instance v0, Lcom/instagram/android/creation/a/a;

    invoke-direct {v0, p1}, Lcom/instagram/android/creation/a/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ad:Lcom/instagram/android/creation/a/a;

    .line 342
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ad:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/a;->a(I)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ad:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/a;->a()V

    .line 344
    sget v0, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 307
    goto :goto_0

    .line 334
    :cond_2
    sget v0, Lcom/facebook/av;->metadata_row_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ab:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;)V
    .locals 3
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    if-nez v0, :cond_1

    .line 493
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 495
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 500
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    return v0
.end method

.method private aa()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab()V
    .locals 4

    .prologue
    .line 542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 543
    const-string v1, "media_url"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "people_tags"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 548
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v2

    const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    const/16 v0, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/content/Intent;I)V

    .line 551
    return-void
.end method

.method private ac()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 554
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 557
    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/model/people/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->people_tagging_x_people:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->E()Lcom/instagram/model/people/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/model/people/b;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/creation/a/t;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->c()V

    .line 609
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/t;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 613
    const-string v0, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ak:Z

    .line 615
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    .line 369
    sget-object v0, Lcom/instagram/p/a;->c:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    .line 373
    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_button_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    .line 380
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ad()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/t;)Lcom/instagram/android/widget/s;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/creation/a/t;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ak:Z

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/a/t;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->aa()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->W()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->d()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ab()V

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 2

    .prologue
    .line 507
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 510
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ak:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->aq:Lcom/instagram/android/creation/a;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 513
    :cond_0
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 514
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 597
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 598
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 599
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 214
    sget v0, Lcom/facebook/aw;->fragment_followers_share_metadata:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 216
    sget v0, Lcom/facebook/av;->geotagTextView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/facebook/av;->geotagCheckBox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    .line 218
    sget v0, Lcom/facebook/av;->metadata_row_location:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/view/View;

    .line 219
    sget v0, Lcom/facebook/av;->nameLocationCheckBox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/CompoundButton;

    .line 220
    sget v0, Lcom/facebook/av;->metadata_row_add_to_your_your_photomap:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    .line 221
    sget v0, Lcom/facebook/av;->view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ab:Landroid/view/View;

    .line 222
    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    .line 224
    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 519
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 520
    const-string v0, "people_tags"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/ArrayList;)V

    .line 523
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ac()V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ao:Lcom/facebook/b/e;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/instagram/android/widget/r;->a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V

    .line 530
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 353
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "FollowersShareFragment.INTENT_ACTION_SHARE_EVENT"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->am:Lcom/instagram/android/creation/a/af;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->an:Lcom/instagram/android/creation/a/ag;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->al:Lcom/instagram/common/d/h;

    .line 359
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 360
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 181
    invoke-static {}, Lcom/instagram/i/a;->b()Lcom/instagram/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Lcom/instagram/i/a;

    .line 182
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/y;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/instagram/android/creation/a/aa;-><init>(Lcom/instagram/android/creation/a/t;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public final a(Lcom/instagram/android/widget/x;)V
    .locals 2
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ao:Lcom/facebook/b/e;

    invoke-virtual {p1, v0, p0, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V

    .line 604
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 605
    return-void
.end method

.method public final a(Lcom/instagram/venue/model/Venue;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    .line 467
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/venue/model/Venue;)V

    .line 468
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, p2}, Lcom/instagram/creation/b/a/b;->j(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->c(Z)V

    .line 474
    :cond_0
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 476
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    .line 478
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 480
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Z()Landroid/location/Location;

    move-result-object v0

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->r()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/instagram/android/creation/d;->a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V

    .line 539
    return-void

    :cond_0
    move-object v0, v1

    .line 537
    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 398
    const-string v0, "location"

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ah:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 400
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->h(Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ag:Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    .line 390
    :cond_0
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const-string v0, "metadata_followers_share"

    return-object v0
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->V()V

    .line 571
    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    .line 572
    return-void
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 576
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 577
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->V()V

    .line 579
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->e:Lcom/instagram/android/widget/s;

    .line 580
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 582
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->d:Landroid/widget/CompoundButton;

    .line 584
    :cond_0
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/view/View;

    .line 585
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/CompoundButton;

    .line 586
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    .line 587
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    .line 588
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/widget/TextView;

    .line 589
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->aq:Lcom/instagram/android/creation/a;

    .line 590
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    .line 592
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->ad:Lcom/instagram/android/creation/a/a;

    .line 593
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 365
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->al:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 366
    return-void
.end method
