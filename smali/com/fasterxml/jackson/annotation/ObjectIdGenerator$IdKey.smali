.class public final Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.super Ljava/lang/Object;
.source "ObjectIdGenerator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final hashCode:I

.field private final key:Ljava/lang/Object;

.field private final scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, scope:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;

    .line 121
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;

    .line 122
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    .line 124
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 128
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->hashCode:I

    .line 129
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p1, p0, :cond_1

    .line 141
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 138
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 140
    :cond_3
    check-cast p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    .line 141
    .end local p1
    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->hashCode:I

    return v0
.end method
