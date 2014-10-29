.class public final Lcom/instagram/creation/b/a/g;
.super Ljava/lang/Object;
.source "PendingRecipientCollection.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/creation/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/instagram/creation/b/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V

    .line 31
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    .line 80
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V

    .line 76
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/instagram/creation/b/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;

    invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V

    .line 38
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
