.class public final Lcom/instagram/android/fragment/cp;
.super Lcom/instagram/android/fragment/h;
.source "LocationFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/feed/a/k;",
        "Lcom/instagram/feed/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private ae:Lcom/instagram/venue/model/Venue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cp;)Lcom/instagram/venue/model/Venue;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    return-object v0
.end method

.method private as()Lcom/instagram/android/feed/a/k;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/instagram/android/feed/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cp;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/k;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/fragment/cp;->as()Lcom/instagram/android/feed/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected final Y()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    iput-object v0, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cp;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/k;

    iget-object v1, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/k;->a(Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cp;->c(Z)V

    .line 44
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cp;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/venue/model/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    iput-object v0, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Lcom/instagram/a/b;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "src"

    const-string v1, "location"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/instagram/android/fragment/cq;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cp;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/cq;-><init>(Lcom/instagram/android/fragment/cp;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->e(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"

    iget-object v1, p0, Lcom/instagram/android/fragment/cp;->ae:Lcom/instagram/venue/model/Venue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "feed_location"

    return-object v0
.end method
