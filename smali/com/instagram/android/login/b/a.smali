.class public final Lcom/instagram/android/login/b/a;
.super Ljava/lang/Object;
.source "MainAppLogoutDelegate.java"

# interfaces
.implements Lcom/instagram/common/y/f/a;


# static fields
.field private static a:Lcom/instagram/android/login/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/android/login/b/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/instagram/android/login/b/a;

    invoke-direct {v0}, Lcom/instagram/android/login/b/a;-><init>()V

    sput-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    .line 39
    :cond_0
    sget-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-static {}, Lcom/instagram/p/b;->a()V

    .line 51
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->d()V

    .line 52
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->e()V

    .line 55
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/analytics/d;->c()V

    .line 58
    invoke-static {}, Lcom/instagram/feed/c/c;->a()V

    .line 61
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->h()V

    .line 62
    invoke-static {}, Lcom/instagram/h/a/a;->a()V

    .line 63
    invoke-static {}, Lcom/instagram/l/b/a;->b()V

    .line 66
    new-instance v0, Lcom/instagram/user/userservice/b/f;

    invoke-direct {v0}, Lcom/instagram/user/userservice/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/b/f;->a(Z)V

    .line 67
    new-instance v0, Lcom/instagram/user/userservice/a/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/a/d;->a(Z)V

    .line 70
    invoke-static {}, Lcom/instagram/share/b/a;->l()V

    .line 73
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 74
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 77
    invoke-static {p1}, Lcom/instagram/android/fragment/cr;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    :cond_0
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->g()V

    .line 86
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->l()V

    .line 89
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->b()V

    .line 90
    return-void
.end method
