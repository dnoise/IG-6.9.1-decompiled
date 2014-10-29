.class public final Lcom/instagram/android/maps/b/f;
.super Ljava/lang/Object;
.source "QuadtreeCluster.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/android/maps/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/android/maps/b/h;

.field private c:Lcom/instagram/android/maps/b/h;

.field private d:Lcom/instagram/android/maps/b/h;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private a(Lcom/instagram/android/maps/b/f;)I
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 117
    const/4 v0, -0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/instagram/android/maps/b/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/b/g;-><init>(Lcom/instagram/android/maps/b/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z

    .line 78
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/android/maps/b/h;)V
    .locals 5
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    .line 64
    :cond_0
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z

    .line 66
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->b(D)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->c(D)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->b(D)V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->c(D)V

    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/b/h;->b(Lcom/instagram/android/maps/b/h;)I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    .line 37
    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/instagram/android/maps/b/f;->e:Z

    .line 129
    return-void
.end method

.method public final b()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    check-cast p1, Lcom/instagram/android/maps/b/f;

    .end local p1
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/f;)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final e()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final f()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    .line 107
    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/instagram/android/maps/b/f;->e:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/g/b;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;

    goto :goto_0
.end method
