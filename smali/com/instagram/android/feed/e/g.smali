.class public final Lcom/instagram/android/feed/e/g;
.super Ljava/lang/Object;
.source "FeedLocationUtil.java"

# interfaces
.implements Lcom/instagram/o/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const-string v0, "location"

    invoke-static {v0, p0, p1}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    sget v1, Lcom/facebook/aw;->dialog_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 31
    sget v0, Lcom/facebook/av;->dialog_map_imageview:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 32
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->B()Lcom/instagram/venue/model/Venue;

    move-result-object v9

    .line 33
    new-instance v0, Lcom/instagram/android/widget/k;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->R()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v9}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "10"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/widget/k;-><init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v7}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v2, "10"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/at;->map_width_dialog:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/facebook/at;->map_height_dialog:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->R()Ljava/lang/Double;

    move-result-object v6

    move-object v1, v9

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/widget/j;->a(FLcom/instagram/venue/model/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-direct {v0, p1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/instagram/ui/dialog/b;->a(Landroid/view/View;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 54
    invoke-static {p2, p3}, Lcom/instagram/android/feed/e/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 55
    return-void
.end method

.method public final a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->B()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/feed/e/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 71
    invoke-static {p2, p3}, Lcom/instagram/android/feed/e/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 72
    return-void
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v1, "LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/cp;

    invoke-direct {v2}, Lcom/instagram/android/fragment/cp;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "media_location"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 66
    return-void
.end method
