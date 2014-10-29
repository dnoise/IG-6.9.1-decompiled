.class public abstract Lcom/fasterxml/jackson/a/a/a;
.super Lcom/fasterxml/jackson/a/h;
.source "GeneratorBase.java"


# instance fields
.field protected a:Lcom/fasterxml/jackson/a/s;

.field protected b:I

.field protected c:Z

.field protected d:Lcom/fasterxml/jackson/a/d/e;

.field protected e:Z


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/a/s;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/h;-><init>()V

    .line 73
    iput p1, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    .line 74
    invoke-static {}, Lcom/fasterxml/jackson/a/d/e;->a()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->d:Lcom/fasterxml/jackson/a/d/e;

    .line 75
    iput-object p2, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    .line 76
    sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z

    .line 77
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V

    .line 513
    :goto_0
    return-void

    .line 465
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 466
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 470
    check-cast v0, Ljava/lang/Number;

    .line 471
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V

    goto :goto_0

    .line 474
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V

    goto :goto_0

    .line 477
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 478
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(D)V

    goto :goto_0

    .line 480
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 481
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(F)V

    goto :goto_0

    .line 483
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 484
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(S)V

    goto :goto_0

    .line 486
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 487
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(S)V

    goto :goto_0

    .line 489
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 490
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 492
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 493
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 498
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 499
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V

    goto :goto_0

    .line 501
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 502
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V

    goto/16 :goto_0

    .line 505
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 506
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeBinary([B)V

    goto/16 :goto_0

    .line 508
    :cond_c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 509
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 511
    :cond_d
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_e

    .line 512
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 515
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    new-instance v0, Lcom/fasterxml/jackson/a/g;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static c()V
    .locals 0

    .prologue
    .line 520
    invoke-static {}, Lcom/fasterxml/jackson/a/g/p;->a()V

    .line 521
    return-void
.end method


# virtual methods
.method public final a()Lcom/fasterxml/jackson/a/d/e;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->d:Lcom/fasterxml/jackson/a/d/e;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()V
.end method

.method public close()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->e:Z

    .line 294
    return-void
.end method

.method public final copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
    .locals 3
    .parameter "jp"

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 312
    const-string v1, "No current event to copy"

    invoke-static {v1}, Lcom/fasterxml/jackson/a/a/a;->b(Ljava/lang/String;)V

    .line 314
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/a/a/b;->b:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 374
    invoke-static {}, Lcom/fasterxml/jackson/a/a/a;->c()V

    .line 376
    :goto_0
    return-void

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartObject()V

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndObject()V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartArray()V

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndArray()V

    goto :goto_0

    .line 328
    :pswitch_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->hasTextCharacters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/a/a;->writeString([CII)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_6
    sget-object v0, Lcom/fasterxml/jackson/a/a/b;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 346
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V

    goto :goto_0

    .line 340
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V

    goto :goto_0

    .line 343
    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 350
    :pswitch_9
    sget-object v0, Lcom/fasterxml/jackson/a/a/b;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 358
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(D)V

    goto :goto_0

    .line 352
    :pswitch_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 355
    :pswitch_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(F)V

    goto :goto_0

    .line 362
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 365
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 368
    :pswitch_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V

    goto/16 :goto_0

    .line 371
    :pswitch_f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 350
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
    .locals 2
    .parameter "jp"

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 391
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/a/a/b;->b:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 407
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V

    .line 409
    :goto_0
    return-void

    .line 393
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartArray()V

    .line 394
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_1

    .line 395
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndArray()V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartObject()V

    .line 401
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_2

    .line 402
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V

    goto :goto_2

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndObject()V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 524
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Operation not supported by generator of type "

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

.method public disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
    .locals 3
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    .line 108
    sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;

    if-ne p1, v0, :cond_1

    .line 109
    iput-boolean v2, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z

    .line 113
    :cond_0
    :goto_0
    return-object p0

    .line 110
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;

    if-ne p1, v0, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/a/a;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;

    goto :goto_0
.end method

.method public enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
    .locals 2
    .parameter "f"

    .prologue
    .line 96
    iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    .line 97
    sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;

    if-ne p1, v0, :cond_1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z

    .line 102
    :cond_0
    :goto_0
    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;

    if-ne p1, v0, :cond_0

    .line 100
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;

    goto :goto_0
.end method

.method public final getCodec()Lcom/fasterxml/jackson/a/s;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public synthetic getOutputContext()Lcom/fasterxml/jackson/a/q;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->a()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->e:Z

    return v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/i;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 120
    iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

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

.method public setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/h;
    .locals 0
    .parameter "oc"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    .line 137
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->getPrettyPrinter()Lcom/fasterxml/jackson/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/a/g/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->setPrettyPrinter(Lcom/fasterxml/jackson/a/t;)Lcom/fasterxml/jackson/a/h;

    move-result-object p0

    goto :goto_0
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->d()V

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 193
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeRaw(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 201
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/a/a;->writeRaw(Ljava/lang/String;II)V

    .line 203
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 209
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/a/a;->writeRaw([CII)V

    .line 211
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 187
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public writeTree(Lcom/fasterxml/jackson/a/v;)V
    .locals 2
    .parameter "rootNode"

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    goto :goto_0
.end method
