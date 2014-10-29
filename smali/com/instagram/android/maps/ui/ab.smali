.class final Lcom/instagram/android/maps/ui/ab;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/instagram/android/maps/ui/ab;->a:Lcom/instagram/android/maps/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/instagram/android/maps/ui/ab;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->e(Lcom/instagram/android/maps/ui/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/ac;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/ac;-><init>(Lcom/instagram/android/maps/ui/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    iget-object v0, p0, Lcom/instagram/android/maps/ui/ab;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->f(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    .line 350
    return-void
.end method
