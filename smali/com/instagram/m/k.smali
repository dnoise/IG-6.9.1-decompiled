.class public Lcom/instagram/m/k;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"

# interfaces
.implements Lcom/instagram/m/i;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/m/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/m/e;

.field private final d:Lcom/instagram/m/e;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/instagram/common/y/b/a;

.field private final h:Lcom/instagram/common/a/a/k;

.field private final i:Lcom/instagram/m/l;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/instagram/m/k;

    sput-object v0, Lcom/instagram/m/k;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/instagram/m/k;->e:Ljava/util/Set;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/instagram/m/k;->f:Ljava/util/Map;

    .line 98
    iput-boolean v0, p0, Lcom/instagram/m/k;->j:Z

    .line 101
    iput-object p1, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/instagram/m/c;->o:[Lcom/instagram/m/b;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 103
    iget-object v4, p0, Lcom/instagram/m/k;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    if-nez p1, :cond_2

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    .line 112
    :goto_1
    invoke-static {}, Lcom/instagram/m/p;->a()Lcom/instagram/m/f;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/m/k;->d:Lcom/instagram/m/e;

    .line 113
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/instagram/m/k;->d:Lcom/instagram/m/e;

    invoke-interface {v0}, Lcom/instagram/m/e;->a()V

    .line 116
    :cond_1
    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/m/k;->g:Lcom/instagram/common/y/b/a;

    .line 117
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/m/k;->h:Lcom/instagram/common/a/a/k;

    .line 118
    new-instance v0, Lcom/instagram/m/l;

    invoke-direct {v0, p0}, Lcom/instagram/m/l;-><init>(Lcom/instagram/m/k;)V

    iput-object v0, p0, Lcom/instagram/m/k;->i:Lcom/instagram/m/l;

    .line 119
    return-void

    .line 108
    :cond_2
    new-instance v0, Lcom/instagram/m/f;

    invoke-direct {p0}, Lcom/instagram/m/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/m/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    .line 109
    iget-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-interface {v0}, Lcom/instagram/m/e;->a()V

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/instagram/m/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/m/k;)Lcom/instagram/m/e;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/m/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/instagram/m/k;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/m/k;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/m/k;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/m/k;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/instagram/m/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/m/n;-><init>(B)V

    invoke-static {v0}, Lcom/instagram/m/j;->a(Lcom/instagram/common/l/a/h;)V

    .line 86
    return-void
.end method

.method static synthetic d(Lcom/instagram/m/k;)Lcom/instagram/common/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/m/k;->h:Lcom/instagram/common/a/a/k;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/instagram/m/k;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quick_experiment_cache_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/m/b;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/instagram/m/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/instagram/m/k;->d:Lcom/instagram/m/e;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/m/e;->a(Ljava/lang/String;)Lcom/instagram/m/d;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/m/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/m/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/instagram/m/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/m/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/m/e;->a(Ljava/lang/String;)Lcom/instagram/m/d;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/m/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/m/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/instagram/m/b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/m/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/instagram/m/k;->g:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->d()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-interface {v2}, Lcom/instagram/m/e;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x6ddd00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-interface {v2, v0, v1}, Lcom/instagram/m/e;->a(J)V

    .line 186
    iget-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-interface {v0}, Lcom/instagram/m/e;->c()V

    .line 188
    new-instance v0, Lcom/instagram/m/a/d;

    iget-object v1, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/m/k;->e:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/instagram/m/a/d;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 189
    new-instance v1, Lcom/instagram/m/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/m/o;-><init>(Lcom/instagram/m/k;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/m/a/d;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 190
    iget-object v1, p0, Lcom/instagram/m/k;->h:Lcom/instagram/common/a/a/k;

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method public final b(Lcom/instagram/m/b;)V
    .locals 7
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/m/k;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/instagram/m/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 161
    iget-object v1, p0, Lcom/instagram/m/k;->g:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v1

    .line 163
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x6ddd00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/instagram/m/k;->c:Lcom/instagram/m/e;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/instagram/m/e;->a(Ljava/lang/String;)Lcom/instagram/m/d;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/m/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/m/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/instagram/m/k;->i:Lcom/instagram/m/l;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/m/l;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/instagram/m/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/m/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/instagram/m/k;->j:Z

    return v0
.end method
