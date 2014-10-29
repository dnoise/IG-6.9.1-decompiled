.class public final Lcom/instagram/f/c/a;
.super Ljava/lang/Object;
.source "RequestedDirectShare.java"


# instance fields
.field private a:I

.field private b:Lcom/instagram/user/c/a;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/c/a;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/f/c/a;

    invoke-direct {v0}, Lcom/instagram/f/c/a;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_4

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "number_of_requests"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/instagram/f/c/a;->a(I)V

    goto :goto_0

    .line 30
    :cond_1
    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 32
    invoke-static {p0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/f/c/a;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 33
    :cond_2
    const-string v2, "requested_at"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/instagram/f/c/a;->a(J)V

    goto :goto_0

    .line 36
    :cond_3
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 42
    :cond_4
    return-object v0
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/instagram/f/c/a;->a:I

    .line 59
    return-void
.end method

.method private a(J)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/instagram/f/c/a;->c:J

    .line 68
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    .line 51
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/instagram/f/c/a;->a:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/instagram/f/c/a;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 77
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 73
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 75
    :cond_3
    check-cast p1, Lcom/instagram/f/c/a;

    .line 77
    .end local p1
    iget-object v2, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    goto :goto_0
.end method
