.class public Lcom/instagram/android/receiver/C2DMReceiver;
.super Lcom/instagram/common/u/b/a;
.source "C2DMReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/common/u/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    invoke-static {p1}, Lcom/instagram/common/u/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/u/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/u/b/e;->h()Lcom/instagram/common/u/b/g;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/common/u/b/g;)V

    .line 43
    return-void
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method
