.class public final Lcom/instagram/l/a/a;
.super Ljava/lang/Object;
.source "DevPreferences.java"


# static fields
.field private static b:Lcom/instagram/l/a/a;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "devprefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

.method public static a()Lcom/instagram/l/a/a;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/instagram/l/a/a;->b:Lcom/instagram/l/a/a;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/instagram/l/a/a;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/l/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/l/a/a;->b:Lcom/instagram/l/a/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/instagram/l/a/a;->b:Lcom/instagram/l/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_server_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "using_dev_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "using_dev_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "dev_server_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "force_legacy_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "force_legacy_render"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_navigation_events"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "slow_network"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_realtime_connection_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/l/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "disable_realtime_connection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
