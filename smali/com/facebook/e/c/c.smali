.class public final Lcom/facebook/e/c/c;
.super Ljava/lang/Object;
.source "LongStack.java"


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/e/c/c;->b:I

    .line 18
    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    .line 19
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 42
    iget-object v1, p0, Lcom/facebook/e/c/c;->a:[J

    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    .line 44
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v0, v0

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/facebook/e/c/c;->d()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/e/c/c;->b:I

    aput-wide p1, v0, v1

    .line 38
    return-void
.end method

.method public final b()J
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/facebook/e/c/c;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/e/c/c;->b:I

    .line 52
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v0, "<LongStack vector:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    iget v2, p0, Lcom/facebook/e/c/c;->b:I

    if-ne v0, v2, :cond_1

    .line 64
    const-string v2, ">>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lcom/facebook/e/c/c;->b:I

    if-ne v0, v2, :cond_2

    .line 70
    const-string v2, "<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "]>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
