.class public final Lcom/instagram/android/feed/a;
.super Ljava/lang/Object;
.source "SearchAnalyticsTracker.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/instagram/android/j/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/instagram/common/analytics/g;)Lcom/instagram/common/analytics/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/instagram/common/analytics/b;

    invoke-direct {v0, p1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "rank_token"

    iget-object v2, p0, Lcom/instagram/android/feed/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/instagram/android/j/e;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/instagram/android/feed/a;->d:Lcom/instagram/android/j/e;

    .line 45
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput p2, p0, Lcom/instagram/android/feed/a;->c:I

    .line 66
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    const-string v1, "search_typeahead"

    invoke-direct {p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/g;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "query_text"

    invoke-virtual {v1, v2, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    .line 71
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/g;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    if-nez v0, :cond_0

    .line 81
    iput p2, p0, Lcom/instagram/android/feed/a;->c:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/instagram/android/feed/a;->c:I

    .line 85
    iget-object v2, p0, Lcom/instagram/android/feed/a;->d:Lcom/instagram/android/j/e;

    if-eqz v2, :cond_4

    invoke-static {p5}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    iget-object v0, p0, Lcom/instagram/android/feed/a;->d:Lcom/instagram/android/j/e;

    invoke-virtual {v0, p5}, Lcom/instagram/android/j/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/instagram/android/feed/a;->d:Lcom/instagram/android/j/e;

    invoke-virtual {v0, p5}, Lcom/instagram/android/j/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 96
    :cond_1
    :goto_0
    sub-int v2, p4, p2

    .line 97
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v3

    const-string v0, "search_results_page"

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/g;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "selected_id"

    invoke-virtual {v0, v4, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "selected_position"

    invoke-virtual {v0, v4, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "is_local"

    if-ge p4, p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "local_offset"

    if-gez v2, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "query_text"

    invoke-virtual {v0, v2, p5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "results_list"

    invoke-virtual {v0, v2, p6}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 106
    iput-boolean v1, p0, Lcom/instagram/android/feed/a;->a:Z

    .line 107
    return-void

    :cond_2
    move v0, v1

    .line 97
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/common/analytics/g;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    const-string v1, "search_back_pressed"

    invoke-direct {p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/g;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "query_text"

    invoke-virtual {v1, v2, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 122
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/g;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    const-string v1, "search_round_trip"

    invoke-direct {p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/g;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "round_trip_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "query_text"

    invoke-virtual {v1, v2, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 115
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a;->b:Ljava/lang/String;

    .line 54
    return-void
.end method
