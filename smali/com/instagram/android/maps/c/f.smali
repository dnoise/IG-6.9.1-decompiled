.class final Lcom/instagram/android/maps/c/f;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/e;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/maps/c/f;->a:Lcom/instagram/android/maps/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/maps/c/f;->a:Lcom/instagram/android/maps/c/e;

    iget-object v0, v0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/c/f;->a:Lcom/instagram/android/maps/c/e;

    iget-object v0, v0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0, v1}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;Z)V

    .line 73
    return-void
.end method
