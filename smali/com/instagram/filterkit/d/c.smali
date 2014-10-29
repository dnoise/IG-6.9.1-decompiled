.class public final Lcom/instagram/filterkit/d/c;
.super Ljava/lang/Object;
.source "GlResources.java"


# instance fields
.field private final a:Lcom/instagram/filterkit/d/b;

.field private final b:Lcom/instagram/filterkit/d/f;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/filterkit/e/g;",
            "Lcom/instagram/filterkit/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/instagram/filterkit/d/b;

    invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;

    .line 33
    new-instance v0, Lcom/instagram/filterkit/d/f;

    invoke-direct {v0, p1}, Lcom/instagram/filterkit/d/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    .line 34
    return-void
.end method

.method public static a(Lcom/instagram/filterkit/e/g;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    if-eqz p0, :cond_0

    .line 200
    invoke-interface {p0}, Lcom/instagram/filterkit/e/g;->e()V

    .line 202
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 222
    iget-object v3, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Lcom/instagram/filterkit/d/f;->a(II)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 225
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 226
    return-void
.end method

.method private d(Lcom/instagram/filterkit/d/e;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    invoke-virtual {v0, p1}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;)V

    .line 65
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/filterkit/d/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;

    return-object v0
.end method

.method public final a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/instagram/filterkit/e/b;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    invoke-virtual {v0, p1}, Lcom/instagram/filterkit/d/f;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    return-object v1
.end method

.method public final a(II)Lcom/instagram/filterkit/e/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v0, Lcom/instagram/filterkit/d/a;

    iget-object v1, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;

    invoke-direct {v0, p1, p2}, Lcom/instagram/filterkit/d/a;-><init>(II)V

    return-object v0
.end method

.method public final a(ILcom/instagram/filterkit/d/e;)Lcom/instagram/filterkit/e/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v0

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-object v0
.end method

.method public final a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    .line 180
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    move-object v0, p1

    check-cast v0, Lcom/instagram/filterkit/e/b;

    invoke-virtual {v2, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/e/b;)V

    .line 189
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I

    move-result v3

    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;

    invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    return-void

    .line 182
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/instagram/filterkit/d/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    if-nez p2, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/e;

    .line 143
    if-eqz v0, :cond_2

    .line 144
    if-ne p2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 149
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;

    invoke-static {p1}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/e;

    .line 79
    iget-object v2, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;

    invoke-virtual {v2, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 83
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;

    .line 84
    invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->e()V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/g;

    .line 89
    invoke-interface {v0}, Lcom/instagram/filterkit/e/g;->e()V

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/e;

    .line 94
    invoke-interface {v0, p0}, Lcom/instagram/filterkit/d/e;->a(Lcom/instagram/filterkit/d/c;)V

    goto :goto_3

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 98
    invoke-direct {p0}, Lcom/instagram/filterkit/d/c;->c()V

    .line 99
    return-void
.end method

.method public final b(Lcom/instagram/filterkit/d/e;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public final b(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Lcom/instagram/filterkit/d/e;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/d/c;->d(Lcom/instagram/filterkit/d/e;)V

    .line 71
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1, p0}, Lcom/instagram/filterkit/d/e;->a(Lcom/instagram/filterkit/d/c;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public final c(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->e()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->e()V

    goto :goto_0
.end method
