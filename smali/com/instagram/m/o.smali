.class final Lcom/instagram/m/o;
.super Lcom/instagram/common/a/a/j;
.source "QuickExperimentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/m/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/m/k;


# direct methods
.method private constructor <init>(Lcom/instagram/m/k;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/instagram/m/o;->a:Lcom/instagram/m/k;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/m/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/instagram/m/o;-><init>(Lcom/instagram/m/k;)V

    return-void
.end method

.method private a(Lcom/instagram/m/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/instagram/m/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/m/d;

    .line 211
    iget-object v2, p0, Lcom/instagram/m/o;->a:Lcom/instagram/m/k;

    invoke-static {v2}, Lcom/instagram/m/k;->a(Lcom/instagram/m/k;)Lcom/instagram/m/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/instagram/m/e;->a(Lcom/instagram/m/d;)V

    .line 212
    invoke-static {}, Lcom/instagram/m/k;->d()Ljava/lang/Class;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/instagram/m/o;->a:Lcom/instagram/m/k;

    invoke-static {v0}, Lcom/instagram/m/k;->a(Lcom/instagram/m/k;)Lcom/instagram/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/m/e;->c()V

    .line 215
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 199
    iget-object v0, p0, Lcom/instagram/m/o;->a:Lcom/instagram/m/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/m/k;->a(Lcom/instagram/m/k;Z)Z

    .line 200
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/m/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/m/o;->a:Lcom/instagram/m/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/m/k;->a(Lcom/instagram/m/k;Z)Z

    .line 206
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    check-cast p1, Lcom/instagram/m/a/b;

    invoke-direct {p0, p1}, Lcom/instagram/m/o;->a(Lcom/instagram/m/a/b;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/m/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/instagram/m/k;->d()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/m/a/b;

    invoke-virtual {v0}, Lcom/instagram/m/a/b;->k()Ljava/lang/String;

    .line 225
    :cond_0
    return-void
.end method
