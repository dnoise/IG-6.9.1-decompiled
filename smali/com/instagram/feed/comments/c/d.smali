.class public final Lcom/instagram/feed/comments/c/d;
.super Lcom/instagram/api/j/b;
.source "FlagCommentRequest.java"


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


# direct methods
.method public constructor <init>(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/b;",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 35
    iput-object p1, p0, Lcom/instagram/feed/comments/c/d;->a:Lcom/instagram/feed/d/b;

    .line 36
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    const-string v0, "media_id"

    iget-object v1, p0, Lcom/instagram/feed/comments/c/d;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "comment_id"

    iget-object v1, p0, Lcom/instagram/feed/comments/c/d;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "reason"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

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

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "media/%s/comment/%s/flag/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/comments/c/d;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/feed/comments/c/d;->a:Lcom/instagram/feed/d/b;

    invoke-virtual {v3}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
