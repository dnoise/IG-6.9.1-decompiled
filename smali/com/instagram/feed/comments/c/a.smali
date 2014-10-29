.class public final Lcom/instagram/feed/comments/c/a;
.super Lcom/instagram/api/j/b;
.source "DeleteCommentRequest.java"


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

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V
    .locals 1
    .parameter
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
            "I",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 34
    iput-object p3, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    .line 35
    iput p4, p0, Lcom/instagram/feed/comments/c/a;->d:I

    .line 36
    return-void
.end method

.method private m()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->m()V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 1
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
    .line 71
    iget-object v0, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->n()V

    .line 72
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    const-string v0, "comment_id"

    iget-object v1, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "media_id"

    iget-object v1, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/instagram/feed/comments/c/a;->d:I

    sget v1, Lcom/instagram/feed/comments/c/b;->b:I

    if-ne v0, v1, :cond_0

    .line 59
    const-string v0, "report_abuse"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/instagram/feed/comments/c/a;->m()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "media/%s/comment/%s/delete/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
