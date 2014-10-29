.class public abstract Lcom/fasterxml/jackson/a/a/c;
.super Lcom/fasterxml/jackson/a/a/d;
.source "ParserBase.java"


# static fields
.field static final r:Ljava/math/BigInteger;

.field static final s:Ljava/math/BigInteger;

.field static final t:Ljava/math/BigInteger;

.field static final u:Ljava/math/BigInteger;

.field static final v:Ljava/math/BigDecimal;

.field static final w:Ljava/math/BigDecimal;

.field static final x:Ljava/math/BigDecimal;

.field static final y:Ljava/math/BigDecimal;


# instance fields
.field protected A:I

.field protected B:J

.field protected C:D

.field protected D:Ljava/math/BigInteger;

.field protected E:Ljava/math/BigDecimal;

.field protected F:Z

.field protected G:I

.field protected H:I

.field protected I:I

.field protected final a:Lcom/fasterxml/jackson/a/c/d;

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:I

.field protected g:I

.field protected h:J

.field protected i:I

.field protected j:I

.field protected k:Lcom/fasterxml/jackson/a/d/d;

.field protected l:Lcom/fasterxml/jackson/a/r;

.field protected final m:Lcom/fasterxml/jackson/a/g/o;

.field protected n:[C

.field protected o:Z

.field protected p:Lcom/fasterxml/jackson/a/g/d;

.field protected q:[B

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 196
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    .line 197
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    .line 199
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    .line 200
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    .line 202
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->v:Ljava/math/BigDecimal;

    .line 203
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->w:Ljava/math/BigDecimal;

    .line 205
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->x:Ljava/math/BigDecimal;

    .line 206
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->y:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/a/c/d;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/d;-><init>()V

    .line 55
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    .line 60
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->d:I

    .line 72
    iput-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->e:J

    .line 78
    iput v1, p0, Lcom/fasterxml/jackson/a/a/c;->f:I

    .line 86
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->g:I

    .line 102
    iput-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->h:J

    .line 107
    iput v1, p0, Lcom/fasterxml/jackson/a/a/c;->i:I

    .line 113
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->j:I

    .line 152
    iput-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    .line 159
    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->o:Z

    .line 165
    iput-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    .line 248
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 301
    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->_features:I

    .line 302
    iput-object p1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    .line 303
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->d()Lcom/fasterxml/jackson/a/g/o;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    .line 304
    invoke-static {}, Lcom/fasterxml/jackson/a/d/d;->b()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 305
    return-void
.end method

.method protected static a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1079
    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    :goto_0
    if-eqz p3, :cond_0

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1081
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1083
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1085
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1087
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 739
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_7

    .line 740
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->d()[C

    move-result-object v1

    .line 741
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->c()I

    move-result v0

    .line 742
    iget v2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    .line 743
    iget-boolean v3, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v3, :cond_0

    .line 744
    add-int/lit8 v0, v0, 0x1

    .line 746
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 747
    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/a/c/h;->a([CII)I

    move-result v0

    .line 748
    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    .line 749
    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 785
    :goto_0
    return-void

    .line 752
    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 753
    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/a/c/h;->b([CII)J

    move-result-wide v0

    .line 754
    iget-boolean v3, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v3, :cond_3

    .line 755
    neg-long v0, v0

    .line 758
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 759
    iget-boolean v2, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v2, :cond_4

    .line 760
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 761
    long-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    .line 762
    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_0

    .line 766
    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 767
    long-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    .line 768
    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_0

    .line 773
    :cond_5
    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    .line 774
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_0

    .line 777
    :cond_6
    invoke-direct {p0, v1, v0, v2}, Lcom/fasterxml/jackson/a/a/c;->a([CII)V

    goto :goto_0

    .line 780
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_8

    .line 781
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/a/c;->b(I)V

    goto :goto_0

    .line 784
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v1

    .line 818
    :try_start_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    invoke-static {p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/c/h;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    .line 821
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 831
    :goto_0
    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    .line 825
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed numeric value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/a/c;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1068
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/a/a/c;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x10

    .line 798
    if-ne p1, v0, :cond_0

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->g()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    .line 800
    const/16 v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 810
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->h()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    .line 804
    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/a/c;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h()Lcom/fasterxml/jackson/a/d/d;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    return-object v0
.end method

.method private i()J
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->h:J

    return-wide v0
.end method

.method private j()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->i:I

    return v0
.end method

.method private k()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->j:I

    .line 431
    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 843
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 845
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    long-to-int v0, v0

    .line 846
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 849
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    .line 871
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 872
    return-void

    .line 850
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 851
    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_0

    .line 856
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 858
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 859
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    .line 861
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_0

    .line 862
    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 863
    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->x:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->y:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    .line 865
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    .line 867
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_0

    .line 869
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 877
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 878
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    .line 900
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 901
    return-void

    .line 879
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 880
    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    .line 884
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_0

    .line 885
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 887
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 888
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    .line 890
    :cond_5
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_0

    .line 891
    :cond_6
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 892
    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->v:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 894
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    .line 896
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_0

    .line 898
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 906
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    .line 918
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 919
    return-void

    .line 909
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 910
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_0

    .line 911
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 912
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_0

    .line 913
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 914
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 930
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    .line 941
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 942
    return-void

    .line 932
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_0

    .line 934
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 935
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 937
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 953
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 958
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    .line 968
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 969
    return-void

    .line 959
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 960
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_0

    .line 961
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 962
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_0

    .line 963
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 964
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_0

    .line 966
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int (-2147483648 - 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long (-9223372036854775808 - 9223372036854775807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 1003
    return-void
.end method


# virtual methods
.method protected _handleEOF()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method protected final a(Lcom/fasterxml/jackson/a/a;CI)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1048
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->g()C

    move-result v1

    .line 1052
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1053
    if-nez p3, :cond_2

    .line 1054
    const/4 v0, -0x1

    .line 1062
    :cond_1
    return v0

    .line 1058
    :cond_2
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v0

    .line 1059
    if-gez v0, :cond_1

    .line 1060
    invoke-static {p1, v1, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Lcom/fasterxml/jackson/a/a;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1025
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1026
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->g()C

    move-result v1

    .line 1030
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1031
    if-nez p3, :cond_2

    .line 1032
    const/4 v0, -0x1

    .line 1040
    :cond_1
    return v0

    .line 1036
    :cond_2
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    .line 1037
    if-gez v0, :cond_1

    .line 1038
    invoke-static {p1, v1, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;)V

    .line 563
    iput-wide p2, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    .line 564
    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 565
    sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected final a(ZI)Lcom/fasterxml/jackson/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 542
    iput-boolean p1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    .line 543
    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    .line 544
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->H:I

    .line 545
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->I:I

    .line 546
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 547
    sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected final a(ZIII)Lcom/fasterxml/jackson/a/r;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    if-gtz p3, :cond_0

    if-gtz p4, :cond_0

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/c;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/a/a/c;->b(ZIII)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_reportInvalidEOF()V

    .line 446
    :cond_0
    return-void
.end method

.method protected final a(IC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/a/a/c;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
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

    .line 984
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method protected final b(ZIII)Lcom/fasterxml/jackson/a/r;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    .line 553
    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    .line 554
    iput p3, p0, Lcom/fasterxml/jackson/a/a/c;->H:I

    .line 555
    iput p4, p0, Lcom/fasterxml/jackson/a/a/c;->I:I

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    .line 557
    sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()V
.end method

.method public close()V
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    .line 358
    :cond_0
    return-void

    .line 355
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    throw v0
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->a()V

    .line 475
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    .line 476
    if-eqz v0, :cond_0

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    .line 478
    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->c([C)V

    .line 480
    :cond_0
    return-void
.end method

.method public final f()Lcom/fasterxml/jackson/a/g/d;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/fasterxml/jackson/a/g/d;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/d;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->a()V

    goto :goto_0
.end method

.method protected g()C
    .locals 1

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 667
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 668
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 670
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->n()V

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
    .locals 8

    .prologue
    .line 390
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/a/c;->g:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 391
    new-instance v0, Lcom/fasterxml/jackson/a/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/a/a/c;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lcom/fasterxml/jackson/a/a/c;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 710
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 711
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 713
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 714
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->p()V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 696
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 697
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 699
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->o()V

    .line 703
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getDoubleValue()D

    move-result-wide v0

    .line 689
    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 639
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 642
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->l()V

    .line 646
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 653
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 656
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->m()V

    .line 660
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    return-wide v0
.end method

.method public getNumberType$72641f5()I
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_3

    .line 614
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 615
    sget v0, Lcom/fasterxml/jackson/a/o;->a:I

    .line 632
    :goto_0
    return v0

    .line 617
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 618
    sget v0, Lcom/fasterxml/jackson/a/o;->b:I

    goto :goto_0

    .line 620
    :cond_2
    sget v0, Lcom/fasterxml/jackson/a/o;->c:I

    goto :goto_0

    .line 629
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 630
    sget v0, Lcom/fasterxml/jackson/a/o;->f:I

    goto :goto_0

    .line 632
    :cond_4
    sget v0, Lcom/fasterxml/jackson/a/o;->e:I

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_4

    .line 582
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 583
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 585
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 586
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_0

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_0

    .line 598
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 599
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_0

    .line 601
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    .line 604
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic getParsingContext()Lcom/fasterxml/jackson/a/q;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->h()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/a/j;
    .locals 6

    .prologue
    .line 377
    new-instance v0, Lcom/fasterxml/jackson/a/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->i()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->j()I

    move-result v4

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->k()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1

    .line 409
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->o:Z

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    return v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    .line 339
    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 340
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    .line 342
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
