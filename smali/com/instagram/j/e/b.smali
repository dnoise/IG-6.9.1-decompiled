.class public final Lcom/instagram/j/e/b;
.super Ljava/lang/Object;
.source "NewsfeedYouStore.java"

# interfaces
.implements Lcom/instagram/common/p/b/a;


# instance fields
.field final synthetic a:Lcom/instagram/j/e/a;


# direct methods
.method public constructor <init>(Lcom/instagram/j/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/instagram/j/e/b;->a:Lcom/instagram/j/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/j/e/b;->a:Lcom/instagram/j/e/a;

    invoke-static {v2}, Lcom/instagram/j/e/a;->d(Lcom/instagram/j/e/a;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/instagram/j/e/b;->a:Lcom/instagram/j/e/a;

    invoke-static {v0}, Lcom/instagram/j/e/a;->c(Lcom/instagram/j/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/j/e/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 224
    :cond_1
    return-void
.end method
