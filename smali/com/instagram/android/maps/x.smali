.class final Lcom/instagram/android/maps/x;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/a/b;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/instagram/android/maps/ui/ah;->h()V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V

    .line 204
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/y;-><init>(Lcom/instagram/android/maps/x;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    return-void
.end method
