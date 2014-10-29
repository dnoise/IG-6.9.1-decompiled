.class final Lcom/instagram/android/maps/d/k;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/j;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/instagram/android/maps/d/k;->a:Lcom/instagram/android/maps/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/instagram/android/maps/PhotoMapsActivity;->e()Lcom/instagram/android/maps/PhotoMapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V

    .line 290
    :cond_0
    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V

    .line 291
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
