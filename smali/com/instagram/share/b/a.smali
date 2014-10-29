.class public final Lcom/instagram/share/b/a;
.super Ljava/lang/Object;
.source "FacebookAccount.java"


# static fields
.field private static a:Lcom/facebook/b/b;

.field private static b:Z

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/instagram/share/b/a;->c:J

    return-void
.end method

.method public static a()Lcom/facebook/b/b;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/facebook/b/b;

    invoke-static {}, Lcom/instagram/share/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    .line 50
    invoke-static {}, Lcom/instagram/share/b/a;->o()V

    .line 52
    :cond_0
    sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/instagram/share/b/a;->b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friends_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void
.end method

.method public static a(J)V
    .locals 0
    .parameter

    .prologue
    .line 235
    sput-wide p0, Lcom/instagram/share/b/a;->c:J

    .line 236
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/instagram/share/b/f;

    invoke-direct {v0, p0}, Lcom/instagram/share/b/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/share/b/f;->b([Ljava/lang/Object;)Lcom/instagram/common/c/a;

    .line 290
    return-void
.end method

.method public static a(Lcom/instagram/share/b/h;)V
    .locals 3
    .parameter

    .prologue
    .line 305
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string v1, "page_access_token"

    invoke-virtual {p0}, Lcom/instagram/share/b/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v1, "page_id"

    invoke-virtual {p0}, Lcom/instagram/share/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v1, "page_name"

    invoke-virtual {p0}, Lcom/instagram/share/b/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    new-instance v1, Lcom/instagram/share/b/b;

    invoke-direct {v1, p0, p1}, Lcom/instagram/share/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 147
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    invoke-static {}, Lcom/instagram/share/b/a;->r()V

    .line 61
    :cond_0
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-static {}, Lcom/instagram/share/b/a;->l()V

    .line 66
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/analytics/d;->d()V

    .line 67
    return-void
.end method

.method private static b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 151
    const-string v0, "fb_access_token"

    invoke-virtual {p0, v0, p1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "share_to_facebook"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "fb_has_publish_actions"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object p0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->b(Z)V

    .line 85
    return-void
.end method

.method public static b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/instagram/share/b/a;->p()Z

    move-result v1

    .line 91
    const-string v2, "access_token"

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "access_expires"

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/b/b;->d()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "last_access_update"

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/b/b;->e()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "token_has_manage_pages"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/instagram/share/b/a;->e()V

    .line 105
    :cond_0
    :goto_0
    invoke-static {}, Lcom/instagram/share/b/a;->h()V

    .line 106
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/instagram/share/b/a;->q()V

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    const-string v1, "last_permissions_check"

    invoke-static {}, Lcom/instagram/share/b/a;->u()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/instagram/share/b/a;->b:Z

    return v0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/share/b/a;->b:Z

    .line 133
    const-string v0, "fb/store_token/"

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/share/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/instagram/share/b/a;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Lcom/instagram/share/b/n;

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/share/b/n;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/instagram/share/b/c;

    invoke-direct {v0}, Lcom/instagram/share/b/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/instagram/share/b/n;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 205
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/share/b/a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/instagram/share/b/j;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/share/b/j;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/instagram/share/b/d;

    invoke-direct {v1}, Lcom/instagram/share/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/share/b/j;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 252
    new-instance v1, Lcom/instagram/common/a/a/o;

    invoke-direct {v1}, Lcom/instagram/common/a/a/o;-><init>()V

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 254
    :cond_0
    return-void
.end method

.method public static i()Lcom/instagram/share/b/h;
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    const-string v1, "page_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v2, "page_name"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    const-string v3, "page_access_token"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v3, Lcom/instagram/share/b/h;

    invoke-direct {v3, v1, v2, v0}, Lcom/instagram/share/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token_has_manage_pages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()I
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "friends_count"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    .line 326
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/instagram/share/b/a;->c:J

    .line 327
    return-void
.end method

.method public static m()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/instagram/share/b/e;

    invoke-direct {v0}, Lcom/instagram/share/b/e;-><init>()V

    return-object v0
.end method

.method static synthetic n()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 70
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "access_expires"

    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    const-string v4, "last_access_update"

    invoke-interface {v0, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 74
    const-string v6, "last_permissions_check"

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 76
    if-eqz v1, :cond_0

    .line 77
    sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/b/b;->a(Ljava/lang/String;JJ)V

    .line 80
    :cond_0
    invoke-static {v6, v7}, Lcom/instagram/share/b/a;->a(J)V

    .line 81
    return-void
.end method

.method private static p()Z
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/instagram/share/b/a;->s()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "access_token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 120
    :cond_1
    return v0
.end method

.method private static q()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/share/b/a;->b:Z

    .line 129
    return-void
.end method

.method private static r()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "fb/clear_token/"

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/share/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static s()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 158
    const-string v0, "facebookPreferences"

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static t()Z
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/instagram/share/b/a;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static u()J
    .locals 2

    .prologue
    .line 226
    sget-wide v0, Lcom/instagram/share/b/a;->c:J

    return-wide v0
.end method
