.class final Lcom/instagram/common/analytics/al;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/common/analytics/al;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/instagram/common/analytics/al;->a:Lcom/instagram/common/analytics/ab;

    sget v1, Lcom/instagram/common/analytics/ar;->d:I

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;I)V

    .line 209
    return-void
.end method
