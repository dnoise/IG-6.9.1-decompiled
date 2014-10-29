.class public final Lcom/instagram/share/f/a;
.super Lcom/instagram/share/e/a;
.source "TwitterAccount.java"


# static fields
.field private static a:Z


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/instagram/share/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p3, p0, Lcom/instagram/share/f/a;->b:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/f/a;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v1, "username"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/instagram/share/f/a;->d()V

    .line 71
    :goto_0
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/instagram/share/f/a;->k()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/instagram/share/f/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    new-instance v1, Lcom/instagram/share/f/b;

    invoke-direct {v1, p0, p1}, Lcom/instagram/share/f/b;-><init>(Ljava/lang/String;Lcom/instagram/share/f/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 103
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/instagram/share/f/a;->l()V

    .line 48
    :cond_0
    invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v1, "oauth_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/instagram/share/f/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "oauth_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v4, "username"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/instagram/share/f/a;

    invoke-direct {v0, v2, v3, v1}, Lcom/instagram/share/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/instagram/share/f/a;->a:Z

    return v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/share/f/a;->a:Z

    .line 84
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    .line 85
    const-string v1, "twitter/store_token/"

    invoke-static {v1, v0}, Lcom/instagram/share/f/a;->a(Ljava/lang/String;Lcom/instagram/share/f/a;)V

    .line 86
    return-void
.end method

.method public static i()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/instagram/share/f/c;

    invoke-direct {v0}, Lcom/instagram/share/f/c;-><init>()V

    return-object v0
.end method

.method private static j()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 40
    const-string v0, "twitterPreferences"

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/share/f/a;->a:Z

    .line 80
    return-void
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    .line 90
    const-string v1, "twitter/clear_token/"

    invoke-static {v1, v0}, Lcom/instagram/share/f/a;->a(Ljava/lang/String;Lcom/instagram/share/f/a;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/share/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string v1, "share_to_twitter"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "twitter_access_token_key"

    invoke-virtual {p0}, Lcom/instagram/share/f/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "twitter_access_token_secret"

    invoke-virtual {p0}, Lcom/instagram/share/f/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "twitter_username"

    invoke-virtual {p0}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v0
.end method
