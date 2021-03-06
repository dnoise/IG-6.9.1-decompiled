.class public abstract Lcom/fasterxml/jackson/a/a/d;
.super Lcom/fasterxml/jackson/a/l;
.source "ParserMinimalBase.java"


# static fields
.field protected static final INT_APOSTROPHE:I = 0x27

.field protected static final INT_ASTERISK:I = 0x2a

.field protected static final INT_BACKSLASH:I = 0x5c

.field protected static final INT_COLON:I = 0x3a

.field protected static final INT_COMMA:I = 0x2c

.field protected static final INT_CR:I = 0xd

.field protected static final INT_LBRACKET:I = 0x5b

.field protected static final INT_LCURLY:I = 0x7b

.field protected static final INT_LF:I = 0xa

.field protected static final INT_QUOTE:I = 0x22

.field protected static final INT_RBRACKET:I = 0x5d

.field protected static final INT_RCURLY:I = 0x7d

.field protected static final INT_SLASH:I = 0x2f

.field protected static final INT_SPACE:I = 0x20

.field protected static final INT_TAB:I = 0x9

.field protected static final INT_b:I = 0x62

.field protected static final INT_f:I = 0x66

.field protected static final INT_n:I = 0x6e

.field protected static final INT_r:I = 0x72

.field protected static final INT_t:I = 0x74

.field protected static final INT_u:I = 0x75


# instance fields
.field protected _currToken:Lcom/fasterxml/jackson/a/r;

.field protected _lastClearedToken:Lcom/fasterxml/jackson/a/r;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/l;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/l;-><init>(I)V

    .line 81
    return-void
.end method

.method protected static final _getCharDesc(I)Ljava/lang/String;
    .locals 3
    .parameter "ch"

    .prologue
    .line 519
    int-to-char v0, p0

    .line 520
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(CTRL-CHAR, code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/a/k;
    .locals 2
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 547
    new-instance v0, Lcom/fasterxml/jackson/a/k;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected _decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;Lcom/fasterxml/jackson/a/a;)V
    .locals 1
    .parameter "str"
    .parameter "builder"
    .parameter "b64variant"

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/a/a;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract _handleEOF()V
.end method

.method protected _handleUnrecognizedCharacterEscape(C)C
    .locals 2
    .parameter "ch"

    .prologue
    .line 500
    sget-object v0, Lcom/fasterxml/jackson/a/n;->f:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return p1

    .line 504
    :cond_1
    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized character escape "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _reportBase64EOF()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0
.end method

.method protected final _reportError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0
.end method

.method protected _reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CILjava/lang/String;)V
    .locals 2
    .parameter "b64variant"
    .parameter "ch"
    .parameter "bindex"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    if-eqz p4, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    .line 417
    :cond_1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/a/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected _reportInvalidEOF()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected _reportInvalidEOF(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method protected _reportInvalidEOFInValue()V
    .locals 1

    .prologue
    .line 470
    const-string v0, " in a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method protected _reportUnexpectedChar(ILjava/lang/String;)V
    .locals 2
    .parameter "ch"
    .parameter "comment"

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    if-eqz p2, :cond_0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method protected final _throwInternal()V
    .locals 0

    .prologue
    .line 542
    invoke-static {}, Lcom/fasterxml/jackson/a/g/p;->a()V

    .line 543
    return-void
.end method

.method protected _throwInvalidSpace(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 476
    int-to-char v0, p1

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method protected _throwUnquotedSpace(ILjava/lang/String;)V
    .locals 3
    .parameter "i"
    .parameter "ctxtDesc"

    .prologue
    .line 490
    sget-object v0, Lcom/fasterxml/jackson/a/n;->e:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    .line 491
    :cond_0
    int-to-char v0, p1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal unquoted character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V

    .line 495
    :cond_1
    return-void
.end method

.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_lastClearedToken:Lcom/fasterxml/jackson/a/r;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    .line 210
    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method public abstract getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public getCurrentToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public getLastClearedToken()Lcom/fasterxml/jackson/a/r;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_lastClearedToken:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public abstract getParsingContext()Lcom/fasterxml/jackson/a/q;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextCharacters()[C
.end method

.method public abstract getTextLength()I
.end method

.method public abstract getTextOffset()I
.end method

.method public getValueAsBoolean(Z)Z
    .locals 4
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 261
    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v2, :cond_0

    .line 262
    sget-object v2, Lcom/fasterxml/jackson/a/a/e;->a:[I

    iget-object v3, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 285
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 264
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getIntValue()I

    move-result v2

    if-eqz v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0

    :pswitch_1
    move p1, v1

    .line 266
    goto :goto_0

    :pswitch_2
    move p1, v0

    .line 269
    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 273
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 274
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 278
    :cond_2
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 280
    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getValueAsDouble(D)D
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 369
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 352
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getDoubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 354
    :pswitch_1
    const-wide/high16 p1, 0x3ff0

    goto :goto_0

    .line 357
    :pswitch_2
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 359
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;D)D

    move-result-wide p1

    goto :goto_0

    .line 362
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 363
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getValueAsInt(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 296
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getIntValue()I

    move-result p1

    goto :goto_0

    .line 298
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 301
    :pswitch_2
    const/4 p1, 0x0

    goto :goto_0

    .line 303
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 306
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 307
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 308
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getValueAsLong(J)J
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 323
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getLongValue()J

    move-result-wide p1

    goto :goto_0

    .line 325
    :pswitch_1
    const-wide/16 p1, 0x1

    goto :goto_0

    .line 328
    :pswitch_2
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 330
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 333
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 334
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 335
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hasTextCharacters()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract nextToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public nextValue()Lcom/fasterxml/jackson/a/r;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method

.method public skipChildren()Lcom/fasterxml/jackson/a/l;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_0

    .line 166
    :goto_0
    return-object p0

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 149
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    .line 150
    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->_handleEOF()V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/a/a/e;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 161
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 162
    goto :goto_1

    .line 165
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
