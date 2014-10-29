.class final Lcom/instagram/common/analytics/ah;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/instagram/common/analytics/ah;->b:Ljava/lang/String;

    .line 553
    iput-object p3, p0, Lcom/instagram/common/analytics/ah;->c:Ljava/lang/String;

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/analytics/ah;-><init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/common/analytics/ah;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/ab;

    iget-object v1, p0, Lcom/instagram/common/analytics/ah;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->b(Lcom/instagram/common/analytics/ab;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->m(Lcom/instagram/common/analytics/ab;)V

    .line 561
    return-void
.end method
