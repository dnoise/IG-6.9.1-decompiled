.class public final Lcom/instagram/n/a;
.super Ljava/lang/Object;
.source "UnauthenticatedCache.java"


# static fields
.field private static final a:Lcom/instagram/common/v/a;

.field private static final b:Lcom/instagram/common/v/c;

.field private static final c:Lcom/instagram/common/v/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "unauthenticated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/instagram/common/v/a;

    const-string v2, "did_facebook_sso"

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/v/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v1, Lcom/instagram/n/a;->a:Lcom/instagram/common/v/a;

    .line 29
    new-instance v1, Lcom/instagram/common/v/c;

    const-string v2, "last_log_in_token"

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/v/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v1, Lcom/instagram/n/a;->b:Lcom/instagram/common/v/c;

    .line 30
    new-instance v1, Lcom/instagram/common/v/a;

    const-string v2, "registration_push_sent"

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/v/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v1, Lcom/instagram/n/a;->c:Lcom/instagram/common/v/a;

    .line 31
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->b:Lcom/instagram/common/v/c;

    invoke-virtual {v0, p0}, Lcom/instagram/common/v/c;->a(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/instagram/n/a;->a:Lcom/instagram/common/v/a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->a:Lcom/instagram/common/v/a;

    invoke-virtual {v0}, Lcom/instagram/common/v/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->b:Lcom/instagram/common/v/c;

    invoke-virtual {v0}, Lcom/instagram/common/v/c;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->b:Lcom/instagram/common/v/c;

    invoke-virtual {v0, p0}, Lcom/instagram/common/v/c;->a(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/instagram/n/a;->a:Lcom/instagram/common/v/a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/instagram/n/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/n/a;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Z
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->c:Lcom/instagram/common/v/a;

    invoke-virtual {v0}, Lcom/instagram/common/v/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()V
    .locals 3

    .prologue
    .line 63
    const-class v1, Lcom/instagram/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/n/a;->c:Lcom/instagram/common/v/a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
