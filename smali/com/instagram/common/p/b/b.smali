.class public final Lcom/instagram/common/p/b/b;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"

# interfaces
.implements Lcom/instagram/common/p/a/a;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/instagram/common/x/a;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/common/p/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instagram/common/x/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/common/p/b/b;->a:Landroid/os/Handler;

    .line 40
    iput-boolean v2, p0, Lcom/instagram/common/p/b/b;->c:Z

    .line 41
    iput-boolean v2, p0, Lcom/instagram/common/p/b/b;->d:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/p/b/b;->f:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/instagram/common/p/b/b;->b:Lcom/instagram/common/x/a;

    .line 51
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/p/a/b;->a(Lcom/instagram/common/p/a/a;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/x/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/common/p/b/b;-><init>(Lcom/instagram/common/x/a;)V

    return-void
.end method

.method public static a()Lcom/instagram/common/p/b/b;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/instagram/common/p/b/d;->a:Lcom/instagram/common/p/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/p/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/instagram/common/p/b/b;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/common/p/b/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/instagram/common/p/b/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/common/p/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/instagram/common/p/b/b;->d:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/p/b/a;

    .line 87
    invoke-interface {v0}, Lcom/instagram/common/p/b/a;->a()V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/instagram/common/p/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/common/p/b/b;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/p/b/a;

    .line 93
    invoke-interface {v0}, Lcom/instagram/common/p/b/a;->b()V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instagram/common/p/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/p/b/b;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->b:Lcom/instagram/common/x/a;

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 114
    iput-boolean v1, p0, Lcom/instagram/common/p/b/b;->c:Z

    .line 117
    iget-boolean v0, p0, Lcom/instagram/common/p/b/b;->e:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/instagram/common/p/b/b;->e:Z

    .line 123
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/common/p/b/c;

    invoke-direct {v1, p0}, Lcom/instagram/common/p/b/c;-><init>(Lcom/instagram/common/p/b/b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Lcom/instagram/common/p/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/instagram/common/p/b/b;->b:Lcom/instagram/common/x/a;

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 102
    iput-boolean v1, p0, Lcom/instagram/common/p/b/b;->c:Z

    .line 103
    iget-boolean v0, p0, Lcom/instagram/common/p/b/b;->d:Z

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/instagram/common/p/b/b;->d:Z

    .line 105
    invoke-direct {p0}, Lcom/instagram/common/p/b/b;->d()V

    .line 107
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/instagram/common/p/b/b;->d:Z

    return v0
.end method
