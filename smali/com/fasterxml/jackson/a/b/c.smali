.class public Lcom/fasterxml/jackson/a/b/c;
.super Ljava/lang/Object;
.source "InputAccessor.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/b/b;


# instance fields
.field protected final _buffer:[B

.field protected _bufferedEnd:I

.field protected final _bufferedStart:I

.field protected final _in:Ljava/io/InputStream;

.field protected _ptr:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    .line 67
    iput-object p2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    .line 68
    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    .line 69
    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    .line 70
    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    .line 71
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    .line 80
    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    .line 83
    array-length v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    .line 84
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    .line 95
    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    .line 96
    iput p2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    .line 97
    iput p2, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    .line 98
    add-int v0, p2, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    .line 99
    return-void
.end method


# virtual methods
.method public createMatcher$6e3aa73a(Lcom/fasterxml/jackson/a/e;I)Lcom/fasterxml/jackson/a/b/a;
    .locals 7
    .parameter "match"
    .parameter "matchStrength"

    .prologue
    .line 147
    new-instance v0, Lcom/fasterxml/jackson/a/b/a;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    iget v4, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    sub-int/2addr v4, v5

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/b/a;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/a/e;I)V

    return-object v0
.end method

.method public hasMoreBytes()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    iget v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    if-ge v2, v3, :cond_0

    .line 119
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    sub-int/2addr v2, v3

    .line 111
    if-gtz v2, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 115
    if-gtz v2, :cond_3

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    goto :goto_0
.end method

.method public nextByte()B
    .locals 3

    .prologue
    .line 126
    iget v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    if-lt v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/b/c;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed auto-detect: could not read more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (max buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    .line 137
    return-void
.end method
