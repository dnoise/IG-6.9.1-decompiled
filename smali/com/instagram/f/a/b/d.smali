.class final Lcom/instagram/f/a/b/d;
.super Ljava/lang/Object;
.source "InboxResponse.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/realtimeclient/RealtimePatchRange;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/d;
    .locals 3
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/instagram/f/a/b/d;

    invoke-direct {v0}, Lcom/instagram/f/a/b/d;-><init>()V

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "range"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 57
    invoke-static {p0}, Lcom/instagram/f/a/b/d;->d(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/f/a/b/d;->b:Lcom/instagram/realtimeclient/RealtimePatchRange;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "items"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 63
    invoke-static {p0}, Lcom/instagram/f/a/b/d;->b(Lcom/fasterxml/jackson/a/l;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/f/a/b/d;->a:Ljava/util/Map;

    goto :goto_0

    .line 66
    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/f/a/b/d;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/f/a/b/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/f/a/b/d;)Lcom/instagram/realtimeclient/RealtimePatchRange;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/f/a/b/d;->b:Lcom/instagram/realtimeclient/RealtimePatchRange;

    return-object v0
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_0

    .line 75
    invoke-static {p0}, Lcom/instagram/f/a/b/d;->c(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchTuple;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 81
    :cond_1
    return-object v0
.end method

.method private static c(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchTuple;
    .locals 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 88
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 90
    new-instance v2, Lcom/instagram/realtimeclient/RealtimePatchTuple;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchTuple;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method

.method private static d(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchRange;
    .locals 3
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 95
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 99
    new-instance v2, Lcom/instagram/realtimeclient/RealtimePatchRange;

    invoke-direct {v2, v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
