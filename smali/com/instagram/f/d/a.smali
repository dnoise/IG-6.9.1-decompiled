.class public final Lcom/instagram/f/d/a;
.super Ljava/lang/Object;
.source "DirectShareRecipientsStore.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/f/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/f/d/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/instagram/f/d/c;->a:Lcom/instagram/f/d/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 51
    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 56
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 46
    return-void
.end method

.method public final c(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 87
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/user/c/a;

    .line 60
    new-instance v1, Lcom/instagram/f/d/b;

    invoke-direct {v1, p0}, Lcom/instagram/f/d/b;-><init>(Lcom/instagram/f/d/a;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 66
    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 82
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
