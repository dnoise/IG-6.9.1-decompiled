.class final Lcom/instagram/common/analytics/aj;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/instagram/common/analytics/aj;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/aj;-><init>(Lcom/instagram/common/analytics/ab;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/instagram/common/analytics/aj;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->m(Lcom/instagram/common/analytics/ab;)V

    .line 587
    return-void
.end method
