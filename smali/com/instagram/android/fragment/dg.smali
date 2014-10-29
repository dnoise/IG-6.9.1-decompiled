.class final Lcom/instagram/android/fragment/dg;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Lcom/instagram/android/fragment/dg;->a:Ljava/lang/String;

    .line 732
    iput-object p2, p0, Lcom/instagram/android/fragment/dg;->b:Ljava/util/List;

    .line 733
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 736
    const/4 v0, 0x0

    .line 737
    iget-object v1, p0, Lcom/instagram/android/fragment/dg;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/instagram/android/fragment/dg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 748
    :cond_0
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "main_feed_load"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v3, "num_new_items"

    invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 750
    return-void

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/dg;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 741
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/instagram/android/fragment/dg;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 745
    goto :goto_0
.end method
