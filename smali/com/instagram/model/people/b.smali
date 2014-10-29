.class public final Lcom/instagram/model/people/b;
.super Ljava/util/ArrayList;
.source "PeopleTagCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/model/people/PeopleTag;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/model/people/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static b()Lcom/instagram/model/people/PeopleTag;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/instagram/model/people/c;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    .line 79
    return-void
.end method

.method public final a(Lcom/instagram/model/people/PeopleTag;)Z
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    invoke-interface {v1, p1}, Lcom/instagram/model/people/c;->b(Lcom/instagram/model/people/PeopleTag;)V

    .line 35
    :cond_0
    return v0
.end method

.method public final a(Lcom/instagram/user/c/a;)Z
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/model/people/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 83
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lcom/instagram/model/people/b;->a()V

    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/PeopleTag;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lcom/instagram/model/people/b;->b()Lcom/instagram/model/people/PeopleTag;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 40
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/instagram/model/people/b;->a:Lcom/instagram/model/people/c;

    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    .end local p1
    invoke-interface {v1, p1}, Lcom/instagram/model/people/c;->a(Lcom/instagram/model/people/PeopleTag;)V

    .line 44
    :cond_0
    return v0
.end method

.method protected final removeRange(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
