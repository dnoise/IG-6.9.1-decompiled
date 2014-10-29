.class final Lcom/instagram/android/creation/a/aa;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    iput-object p2, p0, Lcom/instagram/android/creation/a/aa;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/instagram/android/creation/a/aa;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    iget-object v1, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    invoke-static {v1}, Lcom/instagram/android/creation/a/t;->d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->j()Lcom/instagram/venue/model/Venue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Lcom/instagram/venue/model/Venue;)Lcom/instagram/venue/model/Venue;

    .line 235
    iget-object v1, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/t;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/instagram/android/creation/a/t;->b(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;

    .line 237
    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->a:Landroid/os/Bundle;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/instagram/android/creation/a/t;->c(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/t;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/instagram/android/creation/a/aa;->c:Lcom/instagram/android/creation/a/t;

    iget-object v1, p0, Lcom/instagram/android/creation/a/aa;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Landroid/view/View;)V

    .line 244
    :cond_1
    return-void
.end method
