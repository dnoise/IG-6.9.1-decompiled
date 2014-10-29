.class public final Lcom/instagram/common/u/b/b/a;
.super Ljava/lang/Object;
.source "DefaultRegistrar.java"

# interfaces
.implements Lcom/instagram/common/u/b/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    invoke-static {p1}, Lcom/instagram/common/u/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/u/b/e;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/instagram/common/u/b/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/common/u/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/instagram/common/i/c;->a()Lcom/facebook/d/b/b;

    move-result-object v0

    const-string v1, "Push"

    const-string v2, "Push not initialized for device type"

    invoke-interface {v0, v1, v2}, Lcom/facebook/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
