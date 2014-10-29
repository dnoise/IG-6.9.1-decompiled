.class public final Lcom/instagram/api/b/b;
.super Ljava/lang/Object;
.source "SystemMessage.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Float;)Lcom/instagram/api/b/b;
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/instagram/api/b/b;

    invoke-direct {v0}, Lcom/instagram/api/b/b;-><init>()V

    .line 37
    iput-object p0, v0, Lcom/instagram/api/b/b;->a:Ljava/lang/String;

    .line 38
    iput-object p1, v0, Lcom/instagram/api/b/b;->b:Ljava/lang/Float;

    .line 40
    return-object v0
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_2

    .line 47
    invoke-static {p0}, Lcom/instagram/api/b/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/b/b;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/instagram/api/b/b;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instagram/api/b/b;->b()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/api/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/api/b/b;->b:Ljava/lang/Float;

    return-object v0
.end method
