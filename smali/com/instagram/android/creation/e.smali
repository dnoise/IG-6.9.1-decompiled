.class final Lcom/instagram/android/creation/e;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/creation/e;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 76
    check-cast p2, Landroid/location/Location;

    .line 77
    .end local p2
    invoke-static {p2}, Lcom/instagram/i/a;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/instagram/android/creation/e;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0, p2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Landroid/location/Location;)V

    .line 82
    :cond_0
    return-void
.end method
