.class final Lcom/instagram/common/g/a/b;
.super Ljava/lang/Object;
.source "CacheAnalytics.java"

# interfaces
.implements Lcom/instagram/common/p/b/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/g/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/g/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/common/g/a/b;->a:Lcom/instagram/common/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/common/g/a/b;->a:Lcom/instagram/common/g/a/a;

    invoke-static {v0}, Lcom/instagram/common/g/a/a;->a(Lcom/instagram/common/g/a/a;)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instagram/common/g/a/b;->a:Lcom/instagram/common/g/a/a;

    invoke-static {v0}, Lcom/instagram/common/g/a/a;->b(Lcom/instagram/common/g/a/a;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
