.class public final Lcom/instagram/android/nux/g;
.super Ljava/lang/Object;
.source "FacebookLoginResponse.java"


# instance fields
.field public final a:I

.field public final b:Lcom/instagram/user/c/a;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/instagram/user/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/instagram/user/c/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/instagram/android/nux/g;->a:I

    .line 105
    iput-object p2, p0, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;

    .line 106
    iput-object p4, p0, Lcom/instagram/android/nux/g;->d:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/instagram/android/nux/g;->c:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/instagram/android/nux/g;->e:Ljava/lang/String;

    .line 109
    iput-object p6, p0, Lcom/instagram/android/nux/g;->f:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lcom/instagram/android/nux/g;->g:Ljava/util/List;

    .line 111
    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/nux/g;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    .line 33
    :cond_0
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    const-string v3, "token"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 40
    if-eqz v3, :cond_8

    .line 41
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v6

    .line 46
    :goto_1
    const-string v3, "fb_me"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 47
    if-eqz v4, :cond_7

    .line 48
    const-string v3, "name"

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 52
    :goto_2
    const-string v5, "email"

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    const-string v5, "username"

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 57
    if-eqz v4, :cond_5

    .line 58
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    .line 63
    :goto_3
    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v7

    .line 65
    :try_start_0
    const-string v0, "logged_in_user"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 69
    :cond_2
    if-eqz v0, :cond_4

    .line 70
    const-class v8, Lcom/instagram/user/c/a;

    invoke-virtual {v7, v0, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;
    :try_end_0
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v2, v0

    .line 76
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    const-string v0, "suggestions"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 80
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 84
    :cond_3
    new-instance v0, Lcom/instagram/android/nux/g;

    invoke-direct/range {v0 .. v7}, Lcom/instagram/android/nux/g;-><init>(ILcom/instagram/user/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    move-object v0, v2

    goto :goto_4

    :cond_5
    move-object v4, v2

    move-object v5, v0

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_2

    :cond_7
    move-object v4, v2

    move-object v3, v2

    move-object v5, v0

    goto :goto_3

    :cond_8
    move-object v6, v2

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/instagram/android/nux/g;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/nux/g;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 118
    iget v1, p0, Lcom/instagram/android/nux/g;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/instagram/android/nux/g;->a:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/instagram/android/nux/g;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/instagram/android/nux/g;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
