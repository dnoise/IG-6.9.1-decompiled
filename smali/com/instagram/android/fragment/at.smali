.class final Lcom/instagram/android/fragment/at;
.super Ljava/lang/Object;
.source "ExplorePhotosFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/a/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ar;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/instagram/android/fragment/at;->a:Lcom/instagram/android/fragment/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/ar;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/at;-><init>(Lcom/instagram/android/fragment/ar;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/android/fragment/at;->a:Lcom/instagram/android/fragment/ar;

    invoke-static {v0}, Lcom/instagram/android/fragment/ar;->a(Lcom/instagram/android/fragment/ar;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/instagram/android/fragment/at;->a:Lcom/instagram/android/fragment/ar;

    invoke-static {v0}, Lcom/instagram/android/fragment/ar;->a(Lcom/instagram/android/fragment/ar;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/au;

    iget-object v3, p0, Lcom/instagram/android/fragment/at;->a:Lcom/instagram/android/fragment/ar;

    invoke-direct {v2, v3, p1, p2}, Lcom/instagram/android/fragment/au;-><init>(Lcom/instagram/android/fragment/ar;Lcom/instagram/feed/d/ai;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    return-void
.end method
