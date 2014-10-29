.class final Lcom/instagram/android/maps/c/h;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/g;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/instagram/android/maps/c/h;->a:Lcom/instagram/android/maps/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/maps/c/h;->a:Lcom/instagram/android/maps/c/g;

    iget-object v0, v0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/c/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/c/i;-><init>(Lcom/instagram/android/maps/c/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
