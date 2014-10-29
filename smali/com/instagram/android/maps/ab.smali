.class final Lcom/instagram/android/maps/ab;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/aa;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/instagram/android/maps/ab;->a:Lcom/instagram/android/maps/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/instagram/android/maps/ab;->a:Lcom/instagram/android/maps/aa;

    iget-object v0, v0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a()V

    .line 393
    return-void
.end method
