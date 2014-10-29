.class public final Lcom/instagram/service/c/a;
.super Ljava/lang/Object;
.source "IgGateKeeper.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/instagram/service/c/a;->a:Ljava/lang/Boolean;

    .line 25
    sput-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    .line 26
    sput-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    .line 27
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    const-string v1, "quarantined"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    .line 40
    :cond_0
    sget-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    const-string v1, "is_starred_enabled"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    .line 48
    :cond_0
    sget-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
