.class final Lcom/instagram/android/fragment/av;
.super Ljava/lang/Object;
.source "ExplorePhotosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ar;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/fragment/au;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ar;Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/fragment/au;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/instagram/android/fragment/av;->a:Lcom/instagram/android/fragment/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/instagram/android/fragment/av;->b:Ljava/util/Map;

    .line 226
    iput p3, p0, Lcom/instagram/android/fragment/av;->c:I

    .line 227
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/android/fragment/av;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/au;

    .line 232
    iget-object v2, p0, Lcom/instagram/android/fragment/av;->a:Lcom/instagram/android/fragment/ar;

    const-string v3, "explore_item_impression"

    iget-object v4, v0, Lcom/instagram/android/fragment/au;->a:Lcom/instagram/feed/d/ai;

    iget v0, v0, Lcom/instagram/android/fragment/au;->b:I

    iget v5, p0, Lcom/instagram/android/fragment/av;->c:I

    invoke-static {v2, v3, v4, v0, v5}, Lcom/instagram/android/feed/e/f;->a(Lcom/instagram/common/analytics/g;Ljava/lang/String;Lcom/instagram/feed/d/ai;II)V

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method
