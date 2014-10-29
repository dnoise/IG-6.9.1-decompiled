.class public Lcom/fasterxml/jackson/a/g/l;
.super Lcom/fasterxml/jackson/a/l;
.source "JsonParserDelegate.java"


# instance fields
.field protected a:Lcom/fasterxml/jackson/a/l;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/l;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    .line 26
    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
    .locals 1
    .parameter "schema"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->canUseSchema(Lcom/fasterxml/jackson/a/c;)Z

    move-result v0

    return v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V

    .line 147
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V

    .line 100
    return-void
.end method

.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "f"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;

    .line 53
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
    .locals 1
    .parameter "f"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;

    .line 47
    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
    .locals 1
    .parameter "b64variant"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/a/s;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getInputSource()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getLastClearedToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType$72641f5()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I

    move-result v0

    return v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/fasterxml/jackson/a/q;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getParsingContext()Lcom/fasterxml/jackson/a/q;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lcom/fasterxml/jackson/a/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getSchema()Lcom/fasterxml/jackson/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/a/j;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTokenLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsDouble()D
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsInt()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsLong()J
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->hasCurrentToken()Z

    move-result v0

    return v0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->hasTextCharacters()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextValue()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->overrideCurrentName(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
    .locals 1
    .parameter "b64variant"
    .parameter "out"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public requiresCustomCodec()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->requiresCustomCodec()Z

    move-result v0

    return v0
.end method

.method public setCodec(Lcom/fasterxml/jackson/a/s;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->setCodec(Lcom/fasterxml/jackson/a/s;)V

    .line 37
    return-void
.end method

.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
    .locals 1
    .parameter "schema"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->setSchema(Lcom/fasterxml/jackson/a/c;)V

    .line 69
    return-void
.end method

.method public skipChildren()Lcom/fasterxml/jackson/a/l;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 348
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->version()Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    return-object v0
.end method
