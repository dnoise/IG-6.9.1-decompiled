.class public final Lcom/facebook/i/m;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/facebook/i/n;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/facebook/i/m;->b:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/i/m;->d:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/facebook/i/m;->h:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/facebook/i/n;->a:Lcom/facebook/i/n;

    iput-object v0, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;

    .line 40
    return-void
.end method

.method private a(Lcom/facebook/i/m;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    iget v2, p0, Lcom/facebook/i/m;->b:I

    iget v3, p1, Lcom/facebook/i/m;->b:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/facebook/i/m;->d:J

    iget-wide v4, p1, Lcom/facebook/i/m;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/i/m;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/i/m;->h:Z

    iget-boolean v3, p1, Lcom/facebook/i/m;->h:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/i/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;

    iget-object v3, p1, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/i/m;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/facebook/i/m;->k()Z

    move-result v2

    invoke-direct {p1}, Lcom/facebook/i/m;->k()Z

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/facebook/i/m;->e:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/i/m;->g:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/facebook/i/m;->j:Z

    return v0
.end method

.method private j()Lcom/facebook/i/n;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;

    return-object v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/facebook/i/m;->l:Z

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/facebook/i/m;->b:I

    return v0
.end method

.method public final a(I)Lcom/facebook/i/m;
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/m;->a:Z

    .line 49
    iput p1, p0, Lcom/facebook/i/m;->b:I

    .line 50
    return-object p0
.end method

.method public final a(J)Lcom/facebook/i/m;
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/m;->c:Z

    .line 65
    iput-wide p1, p0, Lcom/facebook/i/m;->d:J

    .line 66
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/i/m;
    .locals 1
    .parameter

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/m;->e:Z

    .line 84
    iput-object p1, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/facebook/i/m;->d:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/facebook/i/m;->h:Z

    return v0
.end method

.method public final d()Lcom/facebook/i/m;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/facebook/i/m;->g:Z

    .line 100
    iput-boolean v0, p0, Lcom/facebook/i/m;->h:Z

    .line 101
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 218
    instance-of v0, p1, Lcom/facebook/i/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/i/m;

    .end local p1
    invoke-direct {p0, p1}, Lcom/facebook/i/m;->a(Lcom/facebook/i/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 227
    invoke-virtual {p0}, Lcom/facebook/i/m;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x87d

    .line 229
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/facebook/i/m;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 230
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/facebook/i/m;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 231
    mul-int/lit8 v3, v0, 0x35

    invoke-virtual {p0}, Lcom/facebook/i/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 232
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/facebook/i/m;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 233
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/facebook/i/m;->j()Lcom/facebook/i/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/i/n;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 234
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/facebook/i/m;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 235
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/facebook/i/m;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 236
    return v0

    :cond_0
    move v0, v2

    .line 231
    goto :goto_0

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/i/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/i/m;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {p0}, Lcom/facebook/i/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/i/m;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, " Leading Zero: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/facebook/i/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/facebook/i/m;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/facebook/i/m;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
