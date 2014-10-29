.class final Lcom/instagram/b/a/c;
.super Ljava/lang/Object;
.source "InstagramDeviceInfoReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/b/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/b/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/instagram/common/analytics/b;

    const-string v0, "device_info"

    invoke-direct {v4, v0, v6}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v5, "sound"

    invoke-virtual {v3}, Lcom/instagram/l/b/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "save_originals"

    invoke-virtual {v3}, Lcom/instagram/l/b/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "low_bandwidth"

    invoke-static {}, Lcom/instagram/creation/c/a;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v0, v4, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "image_cache_size"

    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/g/b/h;->b()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "video_cache_size"

    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/g/c/a;->b()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "badge_count"

    invoke-virtual {v3}, Lcom/instagram/l/b/a;->z()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/instagram/b/a/a;

    iget-object v2, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-static {v2}, Lcom/instagram/b/a/b;->a(Lcom/instagram/b/a/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/b/a/a;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/instagram/b/a/a;->a(Lcom/instagram/common/analytics/b;)V

    .line 47
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 49
    invoke-static {}, Lcom/instagram/api/g/n;->a()Lcom/instagram/api/g/n;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/instagram/api/g/n;->b()V

    .line 52
    iget-object v0, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-static {v0}, Lcom/instagram/b/a/b;->a(Lcom/instagram/b/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/k/a;->a(Landroid/content/Context;)Lcom/instagram/k/a;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "app_performance"

    invoke-direct {v2, v3, v6}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v3, "data_usage"

    invoke-virtual {v0}, Lcom/instagram/k/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method
