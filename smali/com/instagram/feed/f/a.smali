.class public final Lcom/instagram/feed/f/a;
.super Ljava/lang/Object;
.source "FeedContinuationState.java"


# instance fields
.field private a:Lcom/instagram/feed/f/b;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    iput-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    .line 43
    return-void
.end method

.method public static a()Lcom/instagram/feed/f/a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/instagram/feed/f/a;

    invoke-direct {v0}, Lcom/instagram/feed/f/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    .line 70
    iput-object p2, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/ai;

    invoke-interface {v0}, Lcom/instagram/feed/d/ai;->f()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    iput-object v1, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    .line 61
    iput-object v0, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    iput-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    goto :goto_0
.end method

.method public final b()Lcom/instagram/feed/f/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/instagram/feed/f/a;->c:Z

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/feed/f/a;->c:Z

    .line 75
    return-void
.end method
