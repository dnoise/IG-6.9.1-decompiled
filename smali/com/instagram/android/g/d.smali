.class final Lcom/instagram/android/g/d;
.super Lcom/instagram/api/j/b;
.source "Hashtag.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/g/c;


# direct methods
.method public constructor <init>(Lcom/instagram/android/g/c;Landroid/content/Context;Landroid/support/v4/app/an;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/g/d;->a:Lcom/instagram/android/g/c;

    .line 72
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/instagram/android/g/d;->a:Lcom/instagram/android/g/c;

    const-string v2, "media_count"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/android/g/c;->a(Lcom/instagram/android/g/c;I)I

    .line 89
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/instagram/android/g/d;->a:Lcom/instagram/android/g/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/g/c;->a(Lcom/instagram/android/g/c;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/g/d;->a:Lcom/instagram/android/g/c;

    invoke-static {v0}, Lcom/instagram/android/g/c;->a(Lcom/instagram/android/g/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-string v0, "tags/%s/info"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/g/d;->a:Lcom/instagram/android/g/c;

    invoke-static {v3}, Lcom/instagram/android/g/c;->a(Lcom/instagram/android/g/c;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
