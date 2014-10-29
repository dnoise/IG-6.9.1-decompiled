.class public final Lcom/instagram/common/d/j;
.super Lcom/instagram/common/d/b;
.source "LocalIgBroadcastManager.java"


# instance fields
.field private final a:Landroid/support/v4/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/instagram/common/d/b;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/d/j;->a:Landroid/support/v4/a/e;

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/common/d/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 35
    return-void
.end method

.method protected final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/common/d/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/common/d/j;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 24
    return-void
.end method
