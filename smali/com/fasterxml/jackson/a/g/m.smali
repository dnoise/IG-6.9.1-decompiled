.class public final Lcom/fasterxml/jackson/a/g/m;
.super Lcom/fasterxml/jackson/a/g/l;
.source "JsonParserSequence.java"


# instance fields
.field protected final b:[Lcom/fasterxml/jackson/a/l;

.field protected c:I


# direct methods
.method private constructor <init>([Lcom/fasterxml/jackson/a/l;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/l;-><init>(Lcom/fasterxml/jackson/a/l;)V

    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I

    .line 40
    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/g/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    instance-of v0, p0, Lcom/fasterxml/jackson/a/g/m;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/fasterxml/jackson/a/g/m;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/a/g/m;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fasterxml/jackson/a/l;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/g/m;-><init>([Lcom/fasterxml/jackson/a/l;)V

    .line 68
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    instance-of v1, p0, Lcom/fasterxml/jackson/a/g/m;

    if-eqz v1, :cond_1

    .line 59
    check-cast p0, Lcom/fasterxml/jackson/a/g/m;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V

    .line 63
    :goto_1
    instance-of v1, p1, Lcom/fasterxml/jackson/a/g/m;

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/fasterxml/jackson/a/g/m;

    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V

    .line 68
    :goto_2
    new-instance v1, Lcom/fasterxml/jackson/a/g/m;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/a/l;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/a/g/m;-><init>([Lcom/fasterxml/jackson/a/l;)V

    move-object v0, v1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/a/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;

    aget-object v0, v0, v1

    .line 75
    instance-of v3, v0, Lcom/fasterxml/jackson/a/g/m;

    if-eqz v3, :cond_0

    .line 76
    check-cast v0, Lcom/fasterxml/jackson/a/g/m;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V

    .line 73
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/m;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/m;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 94
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V

    .line 95
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void
.end method

.method public final nextToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
