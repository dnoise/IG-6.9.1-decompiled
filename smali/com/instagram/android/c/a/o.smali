.class public final Lcom/instagram/android/c/a/o;
.super Lcom/instagram/feed/a/i;
.source "PhotosOfYouFeedResponse.java"


# instance fields
.field a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/instagram/feed/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/instagram/android/c/a/o;
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/instagram/feed/a/i;->c()Lcom/instagram/feed/a/i;

    .line 18
    return-object p0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/c/a/o;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final synthetic c()Lcom/instagram/feed/a/i;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/instagram/android/c/a/o;->a()Lcom/instagram/android/c/a/o;

    move-result-object v0

    return-object v0
.end method
