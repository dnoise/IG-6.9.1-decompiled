.class public final Lcom/instagram/android/c/a/q;
.super Lcom/instagram/api/j/g;
.source "RecommendedUserListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/user/d/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V
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
            "ZZ",
            "Lcom/instagram/api/j/f",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 37
    iput-boolean p3, p0, Lcom/instagram/android/c/a/q;->a:Z

    .line 38
    iput-boolean p4, p0, Lcom/instagram/android/c/a/q;->d:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/instagram/android/c/a/q;->a:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "in_signup"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 4
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 60
    const-string v1, "groups"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_2

    .line 64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "items"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_1

    .line 71
    invoke-static {p2}, Lcom/instagram/user/d/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p3, v1}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 85
    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/instagram/android/c/a/q;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "discover/ayml/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "friendships/suggested/"

    goto :goto_0
.end method
