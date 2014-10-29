.class final Lcom/instagram/service/b/b;
.super Lcom/instagram/service/b/c;
.source "CustomObjectMapper.java"


# instance fields
.field final synthetic a:Lcom/instagram/service/b/a;

.field private d:Lcom/instagram/user/c/i;


# direct methods
.method public constructor <init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;Lcom/instagram/user/c/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/service/b/b;->a:Lcom/instagram/service/b/a;

    .line 76
    invoke-direct {p0, p3, p2}, Lcom/instagram/service/b/c;-><init>(Ljava/lang/Class;Lcom/instagram/service/b/a;)V

    .line 77
    iput-object p4, p0, Lcom/instagram/service/b/b;->d:Lcom/instagram/user/c/i;

    .line 78
    return-void
.end method


# virtual methods
.method public final createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "delegate"

    .prologue
    .line 83
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 84
    .end local p2
    const-string v0, "pk"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/instagram/service/b/b;->d:Lcom/instagram/user/c/i;

    invoke-interface {v1, v0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 87
    invoke-static {p2, v0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/instagram/service/b/b;->d:Lcom/instagram/user/c/i;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 94
    :goto_0
    return-object v1

    .line 91
    :cond_0
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->G()V

    goto :goto_0
.end method
