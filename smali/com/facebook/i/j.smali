.class public final Lcom/facebook/i/j;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/i/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;

    .line 984
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/i/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "objectInput"

    .prologue
    .line 1025
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 1026
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1027
    new-instance v2, Lcom/facebook/i/i;

    invoke-direct {v2}, Lcom/facebook/i/i;-><init>()V

    .line 1028
    invoke-virtual {v2, p1}, Lcom/facebook/i/i;->readExternal(Ljava/io/ObjectInput;)V

    .line 1029
    iget-object v3, p0, Lcom/facebook/i/j;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_0
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "objectOutput"

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/facebook/i/j;->b()I

    move-result v2

    .line 1018
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1019
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/i/i;

    invoke-virtual {v0, p1}, Lcom/facebook/i/i;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1019
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1022
    :cond_0
    return-void
.end method
