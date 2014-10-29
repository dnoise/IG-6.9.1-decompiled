.class public Lcom/instagram/android/c2dm/c;
.super Ljava/lang/Object;
.source "PushNotificationManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/android/c2dm/c;


# instance fields
.field private final c:Lcom/instagram/common/analytics/d;

.field private d:Lcom/instagram/common/u/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/instagram/android/c2dm/c;

    sput-object v0, Lcom/instagram/android/c2dm/c;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/instagram/common/u/b;->a()Lcom/instagram/common/u/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    .line 61
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;

    .line 63
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "directshare"

    new-instance v2, Lcom/instagram/android/c2dm/a/a;

    invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "directshare_request"

    new-instance v2, Lcom/instagram/android/c2dm/a/d;

    invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/d;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "newstab"

    new-instance v2, Lcom/instagram/android/c2dm/a/b;

    invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V

    .line 80
    return-void
.end method

.method public static a()Lcom/instagram/android/c2dm/c;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/instagram/android/c2dm/c;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/c2dm/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;

    .line 56
    :cond_0
    sget-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/common/u/b/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "PushRegistrationService.DEVICE_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "PushRegistrationService.PUSH_DEVICE_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    return-void
.end method

.method private a(Lcom/instagram/notifications/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/notifications/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "directshare"

    invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/notifications/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "direct_request"

    invoke-virtual {p1, v0}, Lcom/instagram/notifications/a/b;->b(Ljava/lang/String;)V

    .line 148
    const-string v0, "directshare_request"

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "newstab"

    invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Lcom/instagram/android/c2dm/a;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/c2dm/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/j/b;->a(Lcom/instagram/common/j/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/instagram/android/c2dm/c;->a:Ljava/lang/Class;

    .line 195
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/u/a/a;

    const-string v2, "notification_suppressed"

    invoke-direct {v1, p3, v2}, Lcom/instagram/common/u/a/a;-><init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->c()V

    .line 202
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/u/c/a;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 166
    const-string v0, "direct?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    invoke-static {p1}, Lcom/instagram/notifications/a/b;->a(Landroid/content/Intent;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/instagram/common/u/a/a;

    const-string v2, "push_notification_received"

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/u/a/a;-><init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 90
    const-string v2, "bad_payload"

    const-string v3, "missing message"

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 93
    :cond_0
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    :cond_1
    const-string v0, "mismatch"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 100
    const/4 v0, 0x0

    .line 103
    :cond_2
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 105
    if-eqz v0, :cond_3

    .line 106
    invoke-direct {p0, v0}, Lcom/instagram/android/c2dm/c;->a(Lcom/instagram/notifications/a/b;)V

    .line 108
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "directshare"

    invoke-static {p1}, Lcom/instagram/android/c2dm/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/u/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    invoke-virtual {v0}, Lcom/instagram/common/u/b;->b()V

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;

    .line 159
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 116
    const-string v3, "ig"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 117
    const-string v3, "notif"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 123
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 125
    iget-object v2, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    invoke-virtual {v1, v0}, Lcom/instagram/common/u/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "directshare"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/b;->b(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "directshare_request"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/b;->b(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/u/b;

    const-string v1, "newstab"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/b;->b(Ljava/lang/String;)V

    .line 179
    return-void
.end method
