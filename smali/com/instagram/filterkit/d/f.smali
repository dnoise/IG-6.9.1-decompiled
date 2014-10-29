.class Lcom/instagram/filterkit/d/f;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/instagram/filterkit/d/b;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/filterkit/d/e;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/d/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/filterkit/e/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/instagram/filterkit/d/f;

    sput-object v0, Lcom/instagram/filterkit/d/f;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/instagram/filterkit/d/b;

    invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->b:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Lcom/instagram/filterkit/d/g;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    .line 93
    iget v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p1, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->e()V

    .line 95
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/instagram/filterkit/d/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 46
    :goto_0
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Lcom/instagram/filterkit/d/g;

    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    iget-object v3, p0, Lcom/instagram/filterkit/d/f;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/instagram/filterkit/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v2, v3}, Lcom/instagram/filterkit/d/g;-><init>(Ljava/lang/String;Lcom/instagram/filterkit/e/a;B)V

    .line 49
    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    const-string v2, "TextureManager.loadTexture"

    invoke-static {v2}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    .line 50
    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget v1, v0, Lcom/instagram/filterkit/d/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/instagram/filterkit/d/g;->c:I

    .line 58
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, v0, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    return-object v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Lcom/instagram/filterkit/e/b;
    .locals 2
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/instagram/filterkit/d/f;->a:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    new-instance v0, Lcom/instagram/filterkit/d/a;

    iget-object v1, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    invoke-direct {v0, v1, p1}, Lcom/instagram/filterkit/d/a;-><init>(Lcom/instagram/filterkit/d/b;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 116
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->e()V

    move p2, v2

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method final a(Lcom/instagram/filterkit/d/e;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/g;

    .line 85
    invoke-direct {p0, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/instagram/filterkit/e/b;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
