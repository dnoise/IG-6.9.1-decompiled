.class public final Lcom/instagram/android/directshare/a/a;
.super Ljava/lang/Object;
.source "DirectLogger.java"


# direct methods
.method public static a()V
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I

    move-result v0

    .line 67
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "ds_inbox_error"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v3, "badge"

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 70
    return-void
.end method

.method public static a(I)V
    .locals 4
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "ds_inbox_paging"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "posts"

    invoke-virtual {v1, v2, p0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 63
    return-void
.end method

.method public static a(Lcom/instagram/f/c/a;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/analytics/b;

    if-eqz p1, :cond_0

    const-string v0, "ds_pending_approve"

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v0, "num_requests"

    invoke-virtual {p0}, Lcom/instagram/f/c/a;->b()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "sender"

    invoke-virtual {p0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "post_age"

    invoke-virtual {p0}, Lcom/instagram/f/c/a;->c()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lcom/instagram/o/g/a;->a(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 132
    return-void

    .line 127
    :cond_0
    const-string v0, "ds_pending_ignore"

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/d/l;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v9, 0x0

    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/feed/d/l;)I

    move-result v2

    .line 82
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v5

    cmp-long v0, v5, v9

    if-lez v0, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Lcom/instagram/o/g/a;->a(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Lcom/instagram/o/g/a;->a(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 89
    :cond_2
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v5

    new-instance v6, Lcom/instagram/common/analytics/b;

    const-string v7, "ds_post_open"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v7, "share_id"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v6

    const-string v7, "sender"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->al()Lcom/instagram/model/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v6

    const-string v7, "is_sender"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->O()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v6

    const-string v7, "has_new_comments"

    sget v8, Lcom/instagram/android/directshare/f/d;->c:I

    if-ne v2, v8, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v6, v7, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v6, "num_recipients"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->am()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v6, "has_liked"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->r()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v6, "has_read"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    :goto_3
    invoke-virtual {v2, v6, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "post_taken_at"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "post_age"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/instagram/o/g/a;->a(D)D

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "media_type"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/model/a/a;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->s()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "since_last_comment"

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "since_last_read"

    invoke-virtual {v0, v2, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "via_push"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/util/List;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    const-wide/16 v7, 0x0

    .line 24
    const-wide/16 v5, 0x0

    .line 26
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 29
    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/feed/d/l;)I

    move-result v6

    .line 30
    sget v7, Lcom/instagram/android/directshare/f/d;->c:I

    if-ne v6, v7, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->O()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    add-int/lit8 v0, v3, 0x1

    .line 39
    :goto_1
    sget v3, Lcom/instagram/android/directshare/f/d;->a:I

    if-ne v6, v3, :cond_3

    .line 40
    add-int/lit8 v3, v4, 0x1

    :goto_2
    move v4, v3

    move v3, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 45
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 46
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Lcom/instagram/o/g/a;->a(D)D

    move-result-wide v5

    double-to-long v5, v5

    move-wide v13, v5

    move v5, v2

    move v6, v3

    move-wide v2, v7

    move v7, v4

    move v8, v9

    move v4, v1

    move-wide v0, v13

    .line 48
    :goto_3
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v9

    new-instance v10, Lcom/instagram/common/analytics/b;

    const-string v11, "ds_inbox"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v11, "posts"

    invoke-virtual {v10, v11, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v8

    const-string v10, "posts_u"

    invoke-virtual {v8, v10, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v5

    const-string v8, "sent"

    invoke-virtual {v5, v8, v6}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v5

    const-string v6, "sent_u"

    invoke-virtual {v5, v6, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "unread"

    invoke-virtual {v4, v5, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "top_taken_at"

    invoke-virtual {v4, v5, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "top_age"

    invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 57
    return-void

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move-wide v13, v5

    move v5, v2

    move v6, v3

    move-wide v2, v7

    move v7, v4

    move v8, v0

    move v4, v1

    move-wide v0, v13

    goto :goto_3
.end method

.method public static a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "camera_share_mode"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "is_direct"

    invoke-virtual {v1, v2, p0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 111
    return-void
.end method

.method public static b(I)V
    .locals 4
    .parameter

    .prologue
    .line 120
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "ds_pending_hint"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "num_requests"

    invoke-virtual {v1, v2, p0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 123
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v0, "ds_pending"

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v3, "num_requests"

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)V
    .locals 4
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "ds_pending_ignore_all"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "num_requests"

    invoke-virtual {v1, v2, p0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 138
    return-void
.end method
