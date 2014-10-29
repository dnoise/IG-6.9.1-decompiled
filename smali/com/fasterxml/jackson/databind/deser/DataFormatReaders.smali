.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _maxInputLookahead:I

.field protected final _minimalMatch$459d58cc:I

.field protected final _optimalMatch$459d58cc:I

.field protected final _readers:[Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, detectors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/fasterxml/jackson/databind/ObjectReader;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 3
    .parameter "detectors"

    .prologue
    .line 65
    sget v0, Lcom/fasterxml/jackson/a/b/d;->d:I

    sget v1, Lcom/fasterxml/jackson/a/b/d;->c:I

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    .line 67
    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
    .locals 0
    .parameter "detectors"
    .parameter "optMatch"
    .parameter "minMatch"
    .parameter "maxInputLookahead"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 78
    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    .line 79
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    .line 80
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    .line 81
    return-void
.end method

.method private _findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 9
    .parameter "acc"

    .prologue
    const/4 v0, 0x0

    .line 217
    const/4 v2, 0x0

    .line 219
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v6, v5

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 220
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->reset()V

    .line 221
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/e;->hasFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I

    move-result v1

    .line 223
    if-eqz v1, :cond_3

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_3

    .line 224
    if-eqz v2, :cond_0

    .line 228
    add-int/lit8 v7, v0, -0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_3

    .line 235
    :cond_0
    add-int/lit8 v0, v1, -0x1

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    move v0, v1

    move-object v1, v3

    .line 236
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v3, v2

    .line 239
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->createMatcher$edb45c1(Lcom/fasterxml/jackson/databind/ObjectReader;I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 2
    .parameter "in"

    .prologue
    .line 157
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([B)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 1
    .parameter "fullInputData"

    .prologue
    .line 169
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([BII)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 1
    .parameter "fullInputData"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 183
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v2, v0

    .line 198
    if-lez v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 201
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 5
    .parameter "config"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v0

    .line 124
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 125
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    return-object v0
.end method

.method public with([Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .parameter "readers"

    .prologue
    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    return-object v0
.end method

.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .parameter "lookaheadBytes"

    .prologue
    .line 109
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    .line 112
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMinimalMatch$79dd65ca(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .parameter "minMatch"

    .prologue
    .line 97
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    if-ne p1, v0, :cond_0

    .line 100
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withOptimalMatch$79dd65ca(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .parameter "optMatch"

    .prologue
    .line 90
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    if-ne p1, v0, :cond_0

    .line 93
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 5
    .parameter "type"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v0

    .line 134
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 135
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V

    return-object v0
.end method
