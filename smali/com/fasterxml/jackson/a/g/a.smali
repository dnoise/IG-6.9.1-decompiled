.class public final Lcom/fasterxml/jackson/a/g/a;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/fasterxml/jackson/a/g/b;->values()[Lcom/fasterxml/jackson/a/g/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B

    .line 56
    invoke-static {}, Lcom/fasterxml/jackson/a/g/c;->values()[Lcom/fasterxml/jackson/a/g/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C

    .line 58
    return-void
.end method

.method private static a(I)[B
    .locals 1
    .parameter

    .prologue
    .line 110
    new-array v0, p0, [B

    return-object v0
.end method

.method private static b(I)[C
    .locals 1
    .parameter

    .prologue
    .line 115
    new-array v0, p0, [C

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/g/b;[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/b;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 75
    return-void
.end method

.method public final a(Lcom/fasterxml/jackson/a/g/c;[C)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/c;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 100
    return-void
.end method

.method public final a(Lcom/fasterxml/jackson/a/g/b;)[B
    .locals 4
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/b;->ordinal()I

    move-result v1

    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B

    aget-object v0, v0, v1

    .line 64
    if-nez v0, :cond_0

    .line 65
    iget v0, p1, Lcom/fasterxml/jackson/a/g/b;->e:I

    invoke-static {v0}, Lcom/fasterxml/jackson/a/g/a;->a(I)[B

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public final a(Lcom/fasterxml/jackson/a/g/c;)[C
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/fasterxml/jackson/a/g/c;I)[C
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    iget v0, p1, Lcom/fasterxml/jackson/a/g/c;->e:I

    if-le v0, p2, :cond_0

    .line 85
    iget p2, p1, Lcom/fasterxml/jackson/a/g/c;->e:I

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/c;->ordinal()I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C

    aget-object v0, v0, v1

    .line 89
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 90
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/a/g/a;->b(I)[C

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method
