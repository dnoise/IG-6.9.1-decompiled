.class final Lcom/instagram/common/u/a;
.super Ljava/lang/Object;
.source "NotificationCategoryController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType::",
        "Lcom/instagram/common/u/c/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/bx;

.field private final b:Lcom/instagram/common/u/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/u/i",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/instagram/common/analytics/d;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TDataType;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/bx;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    .line 40
    iput-object p2, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    .line 41
    iput-object p3, p0, Lcom/instagram/common/u/a;->c:Lcom/instagram/common/analytics/d;

    .line 42
    iget-object v0, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v0}, Lcom/instagram/common/u/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v0}, Lcom/instagram/common/u/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    .line 47
    iget-object v0, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot contain delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/u/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/instagram/common/u/a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 254
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 256
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 257
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    const-string v1, "showing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 265
    if-nez v1, :cond_4

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v5, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 273
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_5
    iget-object v4, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/instagram/common/u/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/u/a;->f:Z

    .line 280
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/u/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/instagram/common/u/a;->f:Z

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "notification category not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/instagram/common/u/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Lcom/instagram/common/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/u/a",
            "<TDataType;>;"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/common/u/a;->f:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/instagram/common/u/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-object p0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/instagram/common/u/a;->f()V

    .line 137
    iget-object v0, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xfb16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/u/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/instagram/common/u/c/a;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TDataType;)V"
        }
    .end annotation

    .prologue
    const v4, 0xfb16

    .line 64
    invoke-direct {p0}, Lcom/instagram/common/u/a;->f()V

    .line 66
    iget-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Lcom/instagram/common/u/m;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v3, p2}, Lcom/instagram/common/u/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-direct {p0}, Lcom/instagram/common/u/a;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v2, v1}, Lcom/instagram/common/u/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v0}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/instagram/common/u/a;->e()V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    iget-object v1, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Lcom/instagram/common/u/i;->a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    iget-object v2, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 124
    new-instance v0, Lcom/instagram/common/u/a/a;

    const-string v1, "notification_displayed"

    invoke-direct {v0, p2, v1}, Lcom/instagram/common/u/a/a;-><init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V

    .line 126
    const-string v1, "was_aggregated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/u/a/a;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 127
    iget-object v1, p0, Lcom/instagram/common/u/a;->c:Lcom/instagram/common/analytics/d;

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 128
    :goto_1
    return-void

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    invoke-interface {v2, p1, v0}, Lcom/instagram/common/u/i;->a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 101
    invoke-direct {p0, p1}, Lcom/instagram/common/u/a;->c(Ljava/lang/String;)V

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    invoke-virtual {v2, v1, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 109
    iget-object v0, p0, Lcom/instagram/common/u/a;->c:Lcom/instagram/common/analytics/d;

    new-instance v1, Lcom/instagram/common/u/a/a;

    const-string v2, "notification_displayed"

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/u/a/a;-><init>(Lcom/instagram/common/u/c/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_1
.end method

.method final b()V
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/instagram/common/u/a;->f()V

    .line 200
    iget-object v0, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xfb16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/u/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0xfb16

    .line 150
    invoke-direct {p0}, Lcom/instagram/common/u/a;->f()V

    .line 153
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 154
    iget-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 157
    invoke-static {p1, v1}, Lcom/instagram/common/u/m;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/instagram/common/u/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/instagram/common/u/a;->b:Lcom/instagram/common/u/i;

    iget-object v1, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/instagram/common/u/i;->a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    iget-object v3, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 189
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/common/u/a;->b()V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/instagram/common/u/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/u/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    .line 185
    iget-object v0, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-static {p1}, Lcom/instagram/common/u/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method final c()V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/instagram/common/u/a;->f()V

    .line 215
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-virtual {p0, v0}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/instagram/common/u/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/instagram/common/u/a;->b()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-object v0, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v1, "\n"

    invoke-static {v1}, Lcom/instagram/common/l/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/l/a/b;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Lcom/instagram/common/l/a/b;->b(Ljava/lang/String;)Lcom/instagram/common/l/a/c;

    move-result-object v1

    .line 310
    const-string v2, "\nmCategoryName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v2, p0, Lcom/instagram/common/u/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "\nmAggregateMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {p0}, Lcom/instagram/common/u/a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "\nmData: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p0, Lcom/instagram/common/u/a;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/instagram/common/l/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "\nmShowing: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v2, p0, Lcom/instagram/common/u/a;->h:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v2, "\nmPreferences: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v2, p0, Lcom/instagram/common/u/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/l/a/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
