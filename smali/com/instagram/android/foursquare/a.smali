.class public final Lcom/instagram/android/foursquare/a;
.super Lcom/instagram/api/k/a/c;
.source "NearbyVenuesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/foursquare/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/foursquare/a;->b:Landroid/location/Location;

    .line 25
    iput-object p2, p0, Lcom/instagram/android/foursquare/a;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/foursquare/b;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lcom/instagram/android/foursquare/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/foursquare/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p1}, Lcom/instagram/android/foursquare/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/foursquare/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/foursquare/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "search_query"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "foursquare_access_token"

    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string v1, "fb_access_token"

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "location_search/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
