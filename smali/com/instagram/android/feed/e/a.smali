.class public final Lcom/instagram/android/feed/e/a;
.super Ljava/lang/Object;
.source "DelayedMediaPlacer.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/android/feed/e/e;

.field private c:I

.field private d:Lcom/instagram/android/feed/e/d;

.field private e:Lcom/instagram/common/d/h;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/instagram/android/feed/e/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/e/b;-><init>(Lcom/instagram/android/feed/e/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    .line 58
    iput p2, p0, Lcom/instagram/android/feed/e/a;->c:I

    .line 59
    iput-object p3, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    .line 60
    iput-object p4, p0, Lcom/instagram/android/feed/e/a;->d:Lcom/instagram/android/feed/e/d;

    .line 61
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-direct {v0, p1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    new-instance v2, Lcom/instagram/android/feed/e/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/feed/e/c;-><init>(Lcom/instagram/android/feed/e/a;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/d/h;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/e/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/e/a;Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method private a(Lcom/instagram/creation/b/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "pending_media_key"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/d/a;->b(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->d:Lcom/instagram/android/feed/e/d;

    return-object v0
.end method

.method private b(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/instagram/android/feed/e/e;->a(Lcom/instagram/feed/d/l;Z)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    .line 93
    iget v0, p0, Lcom/instagram/android/feed/e/a;->c:I

    sget v1, Lcom/instagram/creation/b/d/b;->b:I

    if-ne v0, v1, :cond_1

    .line 95
    invoke-static {}, Lcom/instagram/creation/b/c/a;->a()Z

    .line 97
    :cond_1
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 124
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/instagram/android/feed/e/a;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/d/a;->a(I)Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 131
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v3, v4, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/creation/b/a/b;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    invoke-interface {v0, v1}, Lcom/instagram/android/feed/e/e;->a(Ljava/util/List;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 104
    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/creation/b/a/b;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 116
    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    .line 117
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    .line 121
    return-void
.end method
