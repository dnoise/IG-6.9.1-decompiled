.class public abstract Lcom/fasterxml/jackson/a/h;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected _cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public abstract close()V
.end method

.method public final configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/a/h;
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 299
    if-eqz p2, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;

    .line 304
    :goto_0
    return-object p0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;

    goto :goto_0
.end method

.method public abstract copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
.end method

.method public abstract copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
.end method

.method public abstract disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.end method

.method public abstract enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.end method

.method public abstract flush()V
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/a/c/c;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodec()Lcom/fasterxml/jackson/a/s;
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getOutputContext()Lcom/fasterxml/jackson/a/q;
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrettyPrinter()Lcom/fasterxml/jackson/a/t;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fasterxml/jackson/a/h;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    return-object v0
.end method

.method public getSchema()Lcom/fasterxml/jackson/a/c;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEnabled(Lcom/fasterxml/jackson/a/i;)Z
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;
    .locals 0
    .parameter

    .prologue
    .line 408
    return-object p0
.end method

.method public abstract setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/h;
.end method

.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
    .locals 0
    .parameter

    .prologue
    .line 376
    return-object p0
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/a/t;)Lcom/fasterxml/jackson/a/h;
    .locals 0
    .parameter "pp"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/fasterxml/jackson/a/h;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    .line 332
    return-object p0
.end method

.method public setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;
    .locals 1
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
    .locals 3
    .parameter "schema"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generator of type "

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

.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;
.end method

.method public abstract version()Lcom/fasterxml/jackson/a/w;
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 1077
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 1079
    return-void
.end method

.method public abstract writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
.end method

.method public writeBinary(Ljava/io/InputStream;I)I
    .locals 1
    .parameter "data"
    .parameter "dataLength"

    .prologue
    .line 738
    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public abstract writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
.end method

.method public writeBinary([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 720
    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V

    .line 721
    return-void
.end method

.method public writeBinary([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 708
    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V

    .line 709
    return-void
.end method

.method public final writeBinaryField(Ljava/lang/String;[B)V
    .locals 0
    .parameter "fieldName"
    .parameter "data"

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeBinary([B)V

    .line 1059
    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public final writeBooleanField(Ljava/lang/String;Z)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V

    .line 953
    return-void
.end method

.method public abstract writeEndArray()V
.end method

.method public abstract writeEndObject()V
.end method

.method public abstract writeFieldName(Lcom/fasterxml/jackson/a/u;)V
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
.end method

.method public abstract writeNull()V
.end method

.method public final writeNullField(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeNull()V

    .line 968
    return-void
.end method

.method public abstract writeNumber(D)V
.end method

.method public abstract writeNumber(F)V
.end method

.method public abstract writeNumber(I)V
.end method

.method public abstract writeNumber(J)V
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method

.method public writeNumber(S)V
    .locals 0
    .parameter "v"

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V

    .line 783
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;D)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V

    .line 1012
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;F)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    .line 1027
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;I)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 980
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V

    .line 982
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 995
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    .line 997
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigDecimal;)V

    .line 1043
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "fieldName"
    .parameter "pojo"

    .prologue
    .line 1113
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeObject(Ljava/lang/Object;)V

    .line 1115
    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 1099
    return-void
.end method

.method public abstract writeRaw(C)V
.end method

.method public writeRaw(Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter "raw"

    .prologue
    .line 655
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
.end method

.method public abstract writeRaw([CII)V
.end method

.method public abstract writeRawUTF8String([BII)V
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
.end method

.method public abstract writeRawValue(Ljava/lang/String;II)V
.end method

.method public abstract writeRawValue([CII)V
.end method

.method public abstract writeStartArray()V
.end method

.method public abstract writeStartObject()V
.end method

.method public abstract writeString(Lcom/fasterxml/jackson/a/u;)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public abstract writeString([CII)V
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public abstract writeTree(Lcom/fasterxml/jackson/a/v;)V
.end method

.method public abstract writeUTF8String([BII)V
.end method
