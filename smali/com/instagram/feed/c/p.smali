.class public final Lcom/instagram/feed/c/p;
.super Ljava/lang/Object;
.source "VideoAnalyticsUtil.java"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 164
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 166
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 167
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 168
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 169
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {p1, p2}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    new-instance v1, Lcom/instagram/feed/c/r;

    const-string v2, "video_paused"

    invoke-direct {v1, v2, p6}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v1, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/c/r;->b(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/instagram/feed/c/r;->c(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    int-to-double v2, v0

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/feed/c/r;->a(D)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/r;->d(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/r;->a(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/instagram/feed/c/r;->a(Z)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/instagram/feed/c/r;->b(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/instagram/feed/c/r;->c(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 114
    invoke-static {v0, p0, p6}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 115
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_finished_playing"

    invoke-direct {v0, v1, p4}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/r;->b(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/r;->d(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 64
    invoke-static {v0, p0, p4}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 65
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IIIZLcom/instagram/feed/g/a;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    new-instance v1, Lcom/instagram/feed/c/r;

    const-string v2, "video_unpaused"

    invoke-direct {v1, v2, p5}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v1, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/c/r;->b(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/feed/c/r;->c(I)Lcom/instagram/feed/c/r;

    move-result-object v1

    int-to-double v2, v0

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/feed/c/r;->a(D)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/r;->a(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/feed/c/r;->a(Z)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/instagram/feed/c/r;->c(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 87
    invoke-static {v0, p0, p5}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 88
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_audio_enabled"

    invoke-direct {v0, v1, p2}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/r;->a(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 140
    invoke-static {v0, p0, p2}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 141
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_displayed"

    invoke-direct {v0, v1, p3}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/r;->b(Z)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 36
    invoke-static {v0, p0, p3}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 37
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_started_playing"

    invoke-direct {v0, v1, p3}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/r;->a(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/r;->a(Z)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/feed/c/r;->c(Ljava/lang/String;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 49
    invoke-static {v0, p0, p3}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 50
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_should_start"

    invoke-direct {v0, v1, p1}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 149
    invoke-static {v0, p0, p1}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 150
    return-void
.end method

.method public static b(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/instagram/feed/c/r;

    const-string v1, "video_failed_playing"

    invoke-direct {v0, v1, p4}, Lcom/instagram/feed/c/r;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/r;->a(I)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/r;->a(II)Lcom/instagram/feed/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/r;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 128
    invoke-static {v0, p0, p4}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 129
    return-void
.end method
