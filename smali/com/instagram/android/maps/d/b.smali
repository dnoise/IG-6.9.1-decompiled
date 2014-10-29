.class final Lcom/instagram/android/maps/d/b;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/e/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->E()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/d/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/c;-><init>(Lcom/instagram/android/maps/d/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    return-void
.end method
