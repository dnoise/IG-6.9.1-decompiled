.class final Lcom/instagram/android/maps/ui/j;
.super Ljava/util/TimerTask;
.source "IgMapsView.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/i;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/i;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/instagram/android/maps/ui/j;->a:Lcom/instagram/android/maps/ui/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/maps/ui/j;->a:Lcom/instagram/android/maps/ui/i;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/i;->a(Lcom/instagram/android/maps/ui/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/k;-><init>(Lcom/instagram/android/maps/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
