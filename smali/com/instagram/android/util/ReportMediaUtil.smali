.class public final Lcom/instagram/android/util/ReportMediaUtil;
.super Ljava/lang/Object;
.source "ReportMediaUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "/direct_share/%s/flag/"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    sget v1, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/instagram/simplewebview/SimpleWebViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v3, "SimpleWebViewFragment.ARGUMENT_URL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    const-string v0, "SimpleWebViewFragment.ARGUMENT_TITLE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v0, "SimpleWebViewFragment.ARGUMENT_DELEGATE"

    new-instance v1, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    .line 38
    const-string v1, "media_id"

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lcom/instagram/api/i/b;->a(Lcom/instagram/common/a/c/b;)V

    .line 40
    const-string v1, "/media/%s/flag/?%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/instagram/common/a/c/b;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
