.class public final Lcom/instagram/m/a/d;
.super Lcom/instagram/api/k/a/b;
.source "QuickExperimentSyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/m/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/instagram/m/a/d;->a:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/m/a/d;->b:Ljava/util/Set;

    .line 31
    iget-object v0, p0, Lcom/instagram/m/a/d;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    return-void
.end method

.method private b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/m/a/b;
    .locals 2
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/instagram/m/a/c;

    iget-object v1, p0, Lcom/instagram/m/a/d;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/instagram/m/a/c;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p1}, Lcom/instagram/m/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/m/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/instagram/m/a/d;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/m/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/m/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "id"

    iget-object v1, p0, Lcom/instagram/m/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v0, "experiments"

    invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/m/a/d;->b:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/instagram/common/l/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "qe/sync/"

    return-object v0
.end method
