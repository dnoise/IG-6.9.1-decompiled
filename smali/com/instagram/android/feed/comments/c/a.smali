.class public final Lcom/instagram/android/feed/comments/c/a;
.super Lcom/instagram/api/j/b;
.source "PostCommentRequest.java"


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
.field private a:Lcom/instagram/feed/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 33
    return-void
.end method

.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->j()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    sget v3, Lcom/instagram/feed/comments/c/b;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V

    .line 78
    :goto_0
    return-object v4

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-static {v1, v0}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->E()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 4
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
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    .line 86
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "spam"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/feed/d/b;->a(ZLjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->F()V

    .line 95
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const-string v0, "comment_text"

    iget-object v1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->g()V

    .line 43
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/c/a;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string v0, "media/%s/comment/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
