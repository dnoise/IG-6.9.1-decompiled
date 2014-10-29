.class public final Lcom/fasterxml/jackson/a/w;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/a/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/fasterxml/jackson/a/w;


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/a/w;

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/a/w;->g:Lcom/fasterxml/jackson/a/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 48
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/fasterxml/jackson/a/w;->a:I

    .line 55
    iput p2, p0, Lcom/fasterxml/jackson/a/w;->b:I

    .line 56
    iput p3, p0, Lcom/fasterxml/jackson/a/w;->c:I

    .line 57
    iput-object p4, p0, Lcom/fasterxml/jackson/a/w;->f:Ljava/lang/String;

    .line 58
    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    iput-object p5, p0, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    .line 59
    if-nez p6, :cond_1

    const-string p6, ""

    :cond_1
    iput-object p6, p0, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/w;)I
    .locals 2
    .parameter

    .prologue
    .line 124
    if-ne p1, p0, :cond_1

    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget v0, p0, Lcom/fasterxml/jackson/a/w;->a:I

    iget v1, p1, Lcom/fasterxml/jackson/a/w;->a:I

    sub-int/2addr v0, v1

    .line 131
    if-nez v0, :cond_0

    .line 132
    iget v0, p0, Lcom/fasterxml/jackson/a/w;->b:I

    iget v1, p1, Lcom/fasterxml/jackson/a/w;->b:I

    sub-int/2addr v0, v1

    .line 133
    if-nez v0, :cond_0

    .line 134
    iget v0, p0, Lcom/fasterxml/jackson/a/w;->c:I

    iget v1, p1, Lcom/fasterxml/jackson/a/w;->c:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/fasterxml/jackson/a/w;->g:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/fasterxml/jackson/a/w;

    .end local p1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/w;->a(Lcom/fasterxml/jackson/a/w;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p1, p0, :cond_1

    .line 113
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 110
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lcom/fasterxml/jackson/a/w;

    .line 113
    .end local p1
    iget v2, p1, Lcom/fasterxml/jackson/a/w;->a:I

    iget v3, p0, Lcom/fasterxml/jackson/a/w;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/fasterxml/jackson/a/w;->b:I

    iget v3, p0, Lcom/fasterxml/jackson/a/w;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/fasterxml/jackson/a/w;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/w;->c:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/w;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/a/w;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/a/w;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/a/w;->c:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget v1, p0, Lcom/fasterxml/jackson/a/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lcom/fasterxml/jackson/a/w;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Lcom/fasterxml/jackson/a/w;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/w;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
