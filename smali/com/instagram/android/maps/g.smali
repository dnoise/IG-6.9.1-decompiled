.class final Lcom/instagram/android/maps/g;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/f;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 582
    iget-object v0, p0, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;

    iget-object v0, v0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;

    iget v1, v1, Lcom/instagram/android/maps/f;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 583
    iget-object v0, p0, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;

    iget-object v0, v0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/h;-><init>(Lcom/instagram/android/maps/g;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    return-void
.end method
