.class final Lcom/instagram/android/creation/h;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->f(Lcom/instagram/android/creation/d;)Lcom/instagram/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/a;->a()Landroid/location/Location;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->f(Lcom/instagram/android/creation/d;)Lcom/instagram/i/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/i/a;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    iget-object v2, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v2}, Lcom/instagram/android/creation/d;->g(Lcom/instagram/android/creation/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Landroid/location/Location;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->h(Lcom/instagram/android/creation/d;)V

    goto :goto_0
.end method
