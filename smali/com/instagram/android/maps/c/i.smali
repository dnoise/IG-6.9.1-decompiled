.class final Lcom/instagram/android/maps/c/i;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/h;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/instagram/android/maps/c/i;->a:Lcom/instagram/android/maps/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Z)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/maps/c/i;->a:Lcom/instagram/android/maps/c/h;

    iget-object v0, v0, Lcom/instagram/android/maps/c/h;->a:Lcom/instagram/android/maps/c/g;

    iget-object v0, v0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    .line 114
    return-void
.end method
