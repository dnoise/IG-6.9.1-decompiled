.class public final Lcom/instagram/user/d/a;
.super Ljava/lang/Object;
.source "RecommendedUser.java"


# static fields
.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "frequency_algorithm"

    sget v2, Lcom/facebook/au;->people_context_likes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "mutual_friends_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "chaining_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "curated_algorithm"

    sget v2, Lcom/facebook/au;->people_context_suggested:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "facebook_friends_algorithm"

    sget v2, Lcom/facebook/au;->people_context_fb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "pages_algorithm"

    sget v2, Lcom/facebook/au;->people_context_fb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "popular_content_accounts_algorithm"

    sget v2, Lcom/facebook/au;->people_context_likes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "follow_graph_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "followers_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "super_users_algorithm"

    sget v2, Lcom/facebook/au;->people_context_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    const-string v1, "contact_importer_algorithm"

    sget v2, Lcom/facebook/au;->people_context_ci:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {p0}, Lcom/instagram/user/d/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;

    move-result-object v0

    .line 89
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/user/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/user/d/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/user/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 108
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 102
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 104
    :cond_3
    check-cast p1, Lcom/instagram/user/d/a;

    .line 106
    .end local p1
    iget-object v2, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    iget-object v3, p1, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/user/d/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()I
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/instagram/user/d/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/au;->people_context_suggested:I

    goto :goto_0
.end method

.method final h()Lcom/instagram/user/d/a;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    .line 95
    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    sget-object v1, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    .line 96
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
