.class public final Lcom/instagram/j/d/c;
.super Ljava/lang/Object;
.source "NewsfeedStory.java"


# instance fields
.field a:I

.field b:Lcom/instagram/j/d/d;

.field private c:Lcom/instagram/j/d/g;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method private m()Lcom/instagram/j/d/f;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v1, v1, Lcom/instagram/j/d/d;->e:Ljava/util/List;

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v1, v1, Lcom/instagram/j/d/d;->e:Ljava/util/List;

    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/d/f;

    goto :goto_0
.end method

.method private n()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-wide v0, v0, Lcom/instagram/j/d/d;->f:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/instagram/j/d/g;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/j/d/c;->c:Lcom/instagram/j/d/g;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/j/d/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/instagram/j/d/c;->n()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/instagram/o/g/a;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/d/c;->d:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/d/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/instagram/j/d/c;->m()Lcom/instagram/j/d/f;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/instagram/j/d/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/instagram/j/d/c;->m()Lcom/instagram/j/d/f;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/instagram/j/d/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->e:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    iget-object v0, v0, Lcom/instagram/j/d/e;->a:Lcom/instagram/user/c/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget v0, v0, Lcom/instagram/j/d/d;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->i:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Lcom/instagram/j/d/c;
    .locals 5

    .prologue
    .line 147
    invoke-static {}, Lcom/instagram/j/d/g;->a()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/instagram/j/d/c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/d/g;

    iput-object v0, p0, Lcom/instagram/j/d/c;->c:Lcom/instagram/j/d/g;

    .line 149
    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v0, v0, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    iget-object v0, v0, Lcom/instagram/j/d/e;->a:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/instagram/user/follow/n;->a()Lcom/instagram/user/follow/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v1, v1, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    iget-object v1, v1, Lcom/instagram/j/d/e;->a:Lcom/instagram/user/c/a;

    iget-object v2, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v2, v2, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    iget-boolean v2, v2, Lcom/instagram/j/d/e;->b:Z

    iget-object v3, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    iget-object v3, v3, Lcom/instagram/j/d/d;->g:Lcom/instagram/j/d/e;

    iget-boolean v3, v3, Lcom/instagram/j/d/e;->c:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V

    .line 160
    :cond_0
    return-object p0
.end method
