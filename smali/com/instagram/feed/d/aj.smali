.class final Lcom/instagram/feed/d/aj;
.super Lcom/instagram/api/k/a/b;
.source "SeenDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/l;

.field private b:J


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/feed/d/aj;->a:Lcom/instagram/feed/d/l;

    .line 25
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/feed/d/aj;->b:J

    .line 26
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    const-string v0, "seen_up_to"

    iget-wide v1, p0, Lcom/instagram/feed/d/aj;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "direct_share/%s/seen/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/d/aj;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/instagram/feed/d/l;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/d/aj;->a:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method final j()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/instagram/feed/d/aj;->b:J

    return-wide v0
.end method
