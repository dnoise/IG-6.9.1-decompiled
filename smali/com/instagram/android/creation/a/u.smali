.class final Lcom/instagram/android/creation/a/u;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter "data"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;)Z

    .line 109
    check-cast p2, Landroid/location/Location;

    .line 110
    .end local p2
    invoke-static {p2}, Lcom/instagram/i/a;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0, p2}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/foursquare/NearbyVenuesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 121
    :cond_0
    return-void
.end method
