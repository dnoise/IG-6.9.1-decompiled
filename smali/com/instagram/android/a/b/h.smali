.class public final Lcom/instagram/android/a/b/h;
.super Ljava/lang/Object;
.source "FollowDestinationBannerRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->follow_destination_banner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/instagram/android/a/b/j;

    invoke-direct {v1}, Lcom/instagram/android/a/b/j;-><init>()V

    .line 19
    invoke-static {v1, v0}, Lcom/instagram/android/a/b/j;->a(Lcom/instagram/android/a/b/j;Landroid/view/View;)Landroid/view/View;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    return-object v0
.end method

.method public static a(Lcom/instagram/android/a/b/j;Lcom/instagram/feed/e/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/instagram/android/a/b/j;->a(Lcom/instagram/android/a/b/j;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/a/b/i;

    invoke-direct {v1, p1}, Lcom/instagram/android/a/b/i;-><init>(Lcom/instagram/feed/e/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
