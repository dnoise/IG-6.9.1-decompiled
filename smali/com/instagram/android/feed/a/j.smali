.class public final Lcom/instagram/android/feed/a/j;
.super Lcom/instagram/android/feed/a/m;
.source "HashtagFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/a/m",
        "<",
        "Lcom/instagram/android/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/m;-><init>(Lcom/instagram/android/fragment/a;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p1}, Lcom/instagram/android/feed/a/b/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/i;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/j;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/g/c;

    invoke-static {v0, v1, p1, p0}, Lcom/instagram/android/feed/a/b/h;->a(Lcom/instagram/android/feed/a/b/i;Lcom/instagram/android/g/c;Landroid/content/Context;Lcom/instagram/android/feed/a/a;)V

    .line 27
    return-void
.end method
