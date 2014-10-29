.class public final Lcom/instagram/f/a/a/q;
.super Lcom/instagram/api/j/b;
.source "PostDirectShareCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/b;

.field private final d:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/feed/d/b;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 38
    iput-object p3, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/a/q;->d:Ljava/util/UUID;

    .line 40
    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->D()Lcom/instagram/feed/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 81
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-static {v1, v0}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 95
    iget-object v0, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->E()V

    .line 100
    iget-object v0, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/instagram/f/a/a/q;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/f/a/a/q;->j()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/f/a/a/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V

    .line 109
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/b;->a(ZLjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->F()V

    .line 116
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    const-string v0, "comment_text"

    iget-object v1, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "client_request_uid"

    iget-object v1, p0, Lcom/instagram/f/a/a/q;->d:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "last_comment_id"

    iget-object v1, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/f/a/a/q;->a(Lcom/instagram/feed/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/f/a/a/q;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "direct_share/%s/comment/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
