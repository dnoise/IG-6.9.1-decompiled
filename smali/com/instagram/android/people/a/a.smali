.class public final Lcom/instagram/android/people/a/a;
.super Lcom/instagram/android/feed/a/a;
.source "PhotosOfYouFeedAdapter.java"


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/instagram/android/people/a/a;->e:Z

    .line 19
    return-void
.end method

.method protected final b(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/instagram/android/people/a/a;->e:Z

    if-eqz v0, :cond_1

    .line 26
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z

    move-result v0

    goto :goto_0
.end method
