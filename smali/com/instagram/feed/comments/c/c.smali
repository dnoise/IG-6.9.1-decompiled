.class public final Lcom/instagram/feed/comments/c/c;
.super Lcom/instagram/api/j/g;
.source "FetchNextPageCommentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/feed/d/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 6
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->o()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->o()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->t()Lcom/instagram/feed/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/e;->a()I

    move-result v2

    if-lez v2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->t()Lcom/instagram/feed/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 46
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 47
    const-string v2, "max_id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    const-string v0, "page"

    iget-object v1, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    .line 33
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->J()V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/feed/comments/c/c;->g()V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/p",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-static {p1}, Lcom/instagram/feed/d/l;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, p2}, Lcom/instagram/feed/d/l;->c(Lcom/fasterxml/jackson/a/l;)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "media/%s/comments/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->K()V

    .line 77
    return-void
.end method

.method public final n()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->L()V

    .line 82
    return-void
.end method
