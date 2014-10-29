.class public final Lcom/instagram/feed/c/g;
.super Ljava/lang/Object;
.source "InsightsUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/e;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    new-instance v1, Lcom/instagram/feed/c/e;

    invoke-direct {v1, v0, p2}, Lcom/instagram/feed/c/e;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v1, p1}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/e;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/instagram/feed/c/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
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

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :cond_2
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_0
.end method

.method static a(Lcom/instagram/common/o/a;)V
    .locals 4
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/instagram/common/o/a;->b()Ljava/util/Set;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 159
    const/16 v0, 0x31

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 161
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/instagram/common/o/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_2
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/feed/c/e;

    const-string v2, "invalidation"

    invoke-static {v2}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/feed/c/e;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Lcom/instagram/feed/c/e;

    move-result-object v1

    const-string v2, "INSTAGRAM_MEDIA_WAS_HIDDEN"

    invoke-virtual {v1, v2}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;)Lcom/instagram/feed/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 105
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/feed/c/e;

    const-string v2, "hide_response"

    invoke-static {v2}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/instagram/feed/c/e;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Lcom/instagram/feed/c/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;)Lcom/instagram/feed/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    .line 113
    return-void
.end method

.method public static a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "brand_profile"

    .line 133
    :goto_0
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/feed/c/e;

    invoke-static {v0}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Lcom/instagram/feed/c/e;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Lcom/instagram/feed/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    .line 139
    :cond_0
    return-void

    .line 128
    :cond_1
    const-string v0, "user_profile"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p1, p3}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/e;->a(I)Lcom/instagram/feed/c/e;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instagram_ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1, p2}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/e;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 70
    invoke-static {v0, p1, p2}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/instagram/feed/g/a;->p_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instagram_organic_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/instagram/feed/g/a;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
