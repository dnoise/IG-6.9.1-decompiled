.class public Lcom/fasterxml/jackson/a/j;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/j;


# instance fields
.field final b:J

.field final c:J

.field final d:I

.field final e:I

.field final transient f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/a/j;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JJII)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    .line 51
    iput-wide p2, p0, Lcom/fasterxml/jackson/a/j;->b:J

    .line 52
    iput-wide p4, p0, Lcom/fasterxml/jackson/a/j;->c:J

    .line 53
    iput p6, p0, Lcom/fasterxml/jackson/a/j;->d:I

    .line 54
    iput p7, p0, Lcom/fasterxml/jackson/a/j;->e:I

    .line 55
    return-void
.end method

.method private a()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/j;->b:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p1, p0, :cond_1

    .line 133
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 125
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 126
    :cond_2
    instance-of v2, p1, Lcom/fasterxml/jackson/a/j;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 127
    :cond_3
    check-cast p1, Lcom/fasterxml/jackson/a/j;

    .line 129
    .end local p1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 130
    iget-object v2, p1, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    iget-object v3, p1, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 133
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/a/j;->d:I

    iget v3, p1, Lcom/fasterxml/jackson/a/j;->d:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/fasterxml/jackson/a/j;->e:I

    iget v3, p1, Lcom/fasterxml/jackson/a/j;->e:I

    if-ne v2, v3, :cond_6

    iget-wide v2, p0, Lcom/fasterxml/jackson/a/j;->c:J

    iget-wide v4, p1, Lcom/fasterxml/jackson/a/j;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/j;->a()J

    move-result-wide v2

    invoke-direct {p1}, Lcom/fasterxml/jackson/a/j;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/a/j;->d:I

    xor-int/2addr v0, v1

    .line 115
    iget v1, p0, Lcom/fasterxml/jackson/a/j;->e:I

    add-int/2addr v0, v1

    .line 116
    iget-wide v1, p0, Lcom/fasterxml/jackson/a/j;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 117
    iget-wide v1, p0, Lcom/fasterxml/jackson/a/j;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 118
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 98
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/fasterxml/jackson/a/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/fasterxml/jackson/a/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
