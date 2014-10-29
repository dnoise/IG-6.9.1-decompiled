.class public final Lcom/instagram/feed/d/v;
.super Ljava/lang/Object;
.source "MediaRecipientsMutator.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media.UPDATED_RECIPIENTS|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/instagram/feed/d/l;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 58
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ap()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    sget v2, Lcom/instagram/model/b/c;->a:I

    invoke-static {p0, v1, v2, v0}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    .line 64
    sget v0, Lcom/instagram/model/b/c;->b:I

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->r()Z

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    .line 65
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->al()Lcom/instagram/model/b/a;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 41
    :goto_0
    if-nez v0, :cond_2

    .line 55
    :cond_0
    :goto_1
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, p2}, Lcom/instagram/model/b/a;->a(I)Z

    move-result v2

    .line 47
    if-eq v2, p3, :cond_0

    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/instagram/model/b/a;->a(IZ)V

    .line 49
    if-nez v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->am()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 53
    :cond_3
    invoke-static {p0}, Lcom/instagram/feed/d/v;->b(Lcom/instagram/feed/d/l;)V

    goto :goto_1
.end method

.method private static b(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/feed/d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 71
    return-void
.end method
