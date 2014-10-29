.class public abstract Lcom/instagram/common/d/b;
.super Ljava/lang/Object;
.source "BaseIgBroadcastManager.java"

# interfaces
.implements Lcom/instagram/common/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/d/g;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/instagram/common/d/c;

    invoke-direct {v0, p0}, Lcom/instagram/common/d/c;-><init>(Lcom/instagram/common/d/b;)V

    return-object v0
.end method

.method protected abstract a(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/instagram/common/d/b;->a(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
