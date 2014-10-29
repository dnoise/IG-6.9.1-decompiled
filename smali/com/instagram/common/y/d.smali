.class public final Lcom/instagram/common/y/d;
.super Ljava/lang/Object;
.source "LocalBroadcastUtil.java"


# direct methods
.method private static a()Landroid/support/v4/a/e;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 39
    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-static {}, Lcom/instagram/common/y/d;->a()Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
