.class final Lcom/instagram/android/maps/f;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/GeoPoint;

.field final synthetic c:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput p2, p0, Lcom/instagram/android/maps/f;->a:I

    iput-object p3, p0, Lcom/instagram/android/maps/f;->b:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/g;-><init>(Lcom/instagram/android/maps/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method
