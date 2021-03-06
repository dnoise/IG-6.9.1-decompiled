.class public abstract Lcom/fasterxml/jackson/a/l;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_BYTE_I:I = 0xff

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _features:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p1, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    .line 210
    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
    .locals 2
    .parameter "msg"

    .prologue
    .line 1369
    new-instance v0, Lcom/fasterxml/jackson/a/k;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    return-object v0
.end method

.method protected _reportUnsupportedOperation()V
    .locals 3

    .prologue
    .line 1379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Operation not supported by parser of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public abstract clearCurrentToken()V
.end method

.method public abstract close()V
.end method

.method public configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/a/l;
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 424
    if-eqz p2, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/l;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;

    .line 429
    :goto_0
    return-object p0

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/l;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
    .locals 2
    .parameter "f"

    .prologue
    .line 414
    iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    .line 415
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
    .locals 2
    .parameter "f"

    .prologue
    .line 404
    iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    .line 405
    return-object p0
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method

.method public getBinaryValue()[B
    .locals 1

    .prologue
    .line 1048
    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.end method

.method public getBooleanValue()Z
    .locals 4

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 995
    sget-object v1, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 996
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 997
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/a/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current token ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") not of boolean type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    throw v1
.end method

.method public getByteValue()B
    .locals 2

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v0

    .line 861
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 862
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    .line 864
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method public abstract getCodec()Lcom/fasterxml/jackson/a/s;
.end method

.method public abstract getCurrentLocation()Lcom/fasterxml/jackson/a/j;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public abstract getCurrentToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getEmbeddedObject()Ljava/lang/Object;
.end method

.method public abstract getFloatValue()F
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getLastClearedToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getNumberType$72641f5()I
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
.end method

.method public abstract getParsingContext()Lcom/fasterxml/jackson/a/q;
.end method

.method public getSchema()Lcom/fasterxml/jackson/a/c;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortValue()S
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v0

    .line 884
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    .line 887
    :cond_1
    int-to-short v0, v0

    return v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextCharacters()[C
.end method

.method public abstract getTextLength()I
.end method

.method public abstract getTextOffset()I
.end method

.method public abstract getTokenLocation()Lcom/fasterxml/jackson/a/j;
.end method

.method public getValueAsBoolean()Z
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1210
    return p1
.end method

.method public getValueAsDouble()D
    .locals 2

    .prologue
    .line 1165
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1180
    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1120
    return p1
.end method

.method public getValueAsLong()J
    .locals 2

    .prologue
    .line 1135
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/l;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1150
    return-wide p1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasCurrentToken()Z
.end method

.method public abstract hasTextCharacters()Z
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 436
    iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 564
    sget-object v0, Lcom/fasterxml/jackson/a/m;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 566
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 568
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/fasterxml/jackson/a/u;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIntValue(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result p1

    .end local p1
    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getLongValue()J

    move-result-wide p1

    .end local p1
    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract nextToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public abstract nextValue()Lcom/fasterxml/jackson/a/r;
.end method

.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->_reportUnsupportedOperation()V

    .line 1084
    const/4 v0, 0x0

    return v0
.end method

.method public readBinaryValue(Ljava/io/OutputStream;)I
    .locals 1
    .parameter "out"

    .prologue
    .line 1066
    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/a/l;->readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public readValueAs(Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, valueTypeRef:Lcom/fasterxml/jackson/a/f/b;,"Lcom/fasterxml/jackson/a/f/b<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    .line 1302
    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    .line 1273
    if-nez v0, :cond_0

    .line 1274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValue(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValueAsTree()Lcom/fasterxml/jackson/a/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/a/v;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    .line 1351
    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_0
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/s;->readTree(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/v;

    move-result-object v0

    return-object v0
.end method

.method public readValuesAs(Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, valueTypeRef:Lcom/fasterxml/jackson/a/f/b;,"Lcom/fasterxml/jackson/a/f/b<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    .line 1333
    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1318
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    .line 1319
    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 369
    const/4 v0, -0x1

    return v0
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 1
    .parameter

    .prologue
    .line 389
    const/4 v0, -0x1

    return v0
.end method

.method public requiresCustomCodec()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setCodec(Lcom/fasterxml/jackson/a/s;)V
.end method

.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
    .locals 3
    .parameter "schema"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parser of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract skipChildren()Lcom/fasterxml/jackson/a/l;
.end method

.method public abstract version()Lcom/fasterxml/jackson/a/w;
.end method
