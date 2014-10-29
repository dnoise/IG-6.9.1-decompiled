.class final Lcom/instagram/android/maps/m;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/l;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/instagram/android/maps/m;->a:Lcom/instagram/android/maps/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/instagram/android/maps/m;->a:Lcom/instagram/android/maps/l;

    iget-object v0, v0, Lcom/instagram/android/maps/l;->a:Lcom/instagram/android/maps/k;

    iget-object v0, v0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;

    iget-object v0, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->e(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    .line 743
    return-void
.end method
