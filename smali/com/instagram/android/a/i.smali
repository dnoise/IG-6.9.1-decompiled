.class public final Lcom/instagram/android/a/i;
.super Ljava/lang/Object;
.source "NearbyVenuesAdapter.java"


# direct methods
.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 446
    sget v0, Lcom/facebook/aw;->row_no_results:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 448
    new-instance v2, Lcom/instagram/android/a/j;

    invoke-direct {v2}, Lcom/instagram/android/a/j;-><init>()V

    .line 449
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 451
    sget v0, Lcom/facebook/av;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/j;->a:Landroid/widget/TextView;

    .line 453
    return-object v1
.end method

.method public static a(Lcom/instagram/android/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/instagram/android/a/j;->a:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->no_locations_found:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    return-void
.end method
