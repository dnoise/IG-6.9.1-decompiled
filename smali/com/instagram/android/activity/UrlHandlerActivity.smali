.class public Lcom/instagram/android/activity/UrlHandlerActivity;
.super Lcom/instagram/base/activity/a;
.source "UrlHandlerActivity.java"


# static fields
.field private static final p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/instagram/android/activity/UrlHandlerActivity;

    sput-object v0, Lcom/instagram/android/activity/UrlHandlerActivity;->p:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 55
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    invoke-super {p0}, Lcom/instagram/base/activity/a;->a_()V

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    const-string v1, "up"

    invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    goto :goto_0
.end method

.method protected final h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    sget v0, Lcom/facebook/az;->must_be_logged_in:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    invoke-direct {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->g()V

    .line 108
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "/_u/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/_uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    :cond_1
    invoke-static {v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    sget-object v0, Lcom/instagram/android/activity/UrlHandlerActivity;->p:Ljava/lang/Class;

    const-string v1, "Improper user url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Lcom/instagram/android/fragment/fo;

    invoke-direct {v1}, Lcom/instagram/android/fragment/fo;-><init>()V

    .line 83
    const-string v5, "/_u/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UserDetailFragment.EXTRA_USER_NAME"

    .line 85
    :goto_1
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 92
    :goto_2
    new-instance v1, Lcom/instagram/android/activity/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/aa;-><init>(Lcom/instagram/android/activity/UrlHandlerActivity;)V

    .line 99
    new-instance v4, Lcom/instagram/common/analytics/b;

    const-string v5, "ig_url_loaded"

    invoke-direct {v4, v5, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "url"

    invoke-virtual {v4, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v3, "attribution_id"

    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/l/a/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    .line 104
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 106
    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 107
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    goto/16 :goto_0

    .line 83
    :cond_3
    const-string v0, "UserDetailFragment.EXTRA_USER_ID"

    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Lcom/instagram/android/fragment/eo;

    invoke-direct {v0}, Lcom/instagram/android/fragment/eo;-><init>()V

    .line 88
    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
