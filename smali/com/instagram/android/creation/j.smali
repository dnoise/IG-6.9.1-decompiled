.class final Lcom/instagram/android/creation/j;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "NearbyVenuesFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->i(Lcom/instagram/android/creation/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/d;->a(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0, p1}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->i(Lcom/instagram/android/creation/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/j;->a:Lcom/instagram/android/creation/d;

    invoke-static {v2}, Lcom/instagram/android/creation/d;->d(Lcom/instagram/android/creation/d;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/d;->a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V

    .line 312
    return-void
.end method
