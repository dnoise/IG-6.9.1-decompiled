.class public Lcom/instagram/android/foursquare/NearbyVenuesService;
.super Landroid/app/IntentService;
.source "NearbyVenuesService.java"


# static fields
.field private static a:Landroid/location/Location;

.field private static b:Lcom/instagram/android/foursquare/b;


# instance fields
.field private c:Lcom/instagram/common/a/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "NearbyVenuesService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private static a()Lcom/instagram/android/foursquare/b;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/instagram/android/foursquare/NearbyVenuesService;->b:Lcom/instagram/android/foursquare/b;

    return-object v0
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/foursquare/NearbyVenuesService;->c:Lcom/instagram/common/a/a/f;

    new-instance v0, Lcom/instagram/android/foursquare/a;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/foursquare/a;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/a/a/f;->b(Lcom/instagram/common/a/a/a;)Lcom/instagram/common/l/a/e;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/foursquare/b;

    .line 82
    invoke-virtual {v0}, Lcom/instagram/android/foursquare/b;->f_()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/instagram/android/foursquare/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    if-nez p2, :cond_0

    .line 85
    invoke-static {v0, p1}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;Landroid/location/Location;)V

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    goto :goto_0
.end method

.method private static a(Lcom/instagram/android/foursquare/b;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    if-eqz p0, :cond_0

    .line 100
    const-string v1, "requestId"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "venues"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string v1, "isFoursquareLocation"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 106
    return-void
.end method

.method private static a(Lcom/instagram/android/foursquare/b;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    sput-object p0, Lcom/instagram/android/foursquare/NearbyVenuesService;->b:Lcom/instagram/android/foursquare/b;

    .line 114
    sput-object p1, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 48
    new-instance v0, Lcom/instagram/common/a/a/f;

    invoke-direct {v0}, Lcom/instagram/common/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/foursquare/NearbyVenuesService;->c:Lcom/instagram/common/a/a/f;

    .line 49
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 53
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 54
    const-string v1, "searchString"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    if-nez v0, :cond_0

    .line 57
    const-string v0, "NearbyVenuesService"

    const-string v1, "Cannot query venues for null location"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    invoke-virtual {v0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x41a0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 65
    invoke-static {}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a()Lcom/instagram/android/foursquare/b;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0
.end method
