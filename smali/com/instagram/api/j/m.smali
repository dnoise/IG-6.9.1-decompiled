.class public final Lcom/instagram/api/j/m;
.super Lcom/instagram/api/j/j;
.source "ObjectMappedApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Lcom/fasterxml/jackson/databind/JsonNode;

.field private d:Ljava/lang/String;

.field private e:Lcom/instagram/service/b/a;

.field private f:Z

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/instagram/api/j/m;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V

    .line 79
    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/m;->e:Lcom/instagram/service/b/a;

    .line 80
    iget-object v0, p0, Lcom/instagram/api/j/m;->e:Lcom/instagram/service/b/a;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v0, p0, Lcom/instagram/api/j/m;->c:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 81
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/api/b/b;
    .locals 2
    .parameter

    .prologue
    .line 247
    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "time"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lcom/instagram/api/b/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/instagram/api/b/b;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method public static a(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/j/m;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")",
            "Lcom/instagram/api/j/m",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v0, Lcom/instagram/api/j/m;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/instagram/api/j/m;-><init>(Ljava/lang/String;B)V

    .line 40
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 42
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/m;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/m;->a(Z)V

    .line 45
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/instagram/api/j/m;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    .line 47
    :cond_0
    invoke-direct {v0}, Lcom/instagram/api/j/m;->o()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/instagram/api/j/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v1, v2

    .line 49
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/m;->d(Ljava/lang/String;)Lcom/instagram/api/j/m;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 239
    invoke-static {v0}, Lcom/instagram/api/j/m;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/api/b/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Lcom/instagram/api/j/m;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/instagram/api/j/m",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/instagram/api/j/m;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lcom/instagram/api/j/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 120
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Lcom/instagram/service/b/a;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/instagram/api/j/m;->e:Lcom/instagram/service/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lcom/instagram/api/j/m;->p()Lcom/instagram/service/b/a;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/instagram/service/b/a;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 90
    :goto_0
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    :goto_1
    return-object v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "ok"

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/instagram/api/j/m;->b:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/api/j/m;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/instagram/api/j/m;->f:Z

    .line 213
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "error_title"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/api/j/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/api/j/m;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/j/m;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/j/m;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/api/j/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/api/j/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/instagram/api/j/m;->f:Z

    return v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/instagram/api/j/m;->g:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "_messages"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/m;->a(Ljava/util/Iterator;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/m;->g:Ljava/util/Collection;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/j/m;->g:Ljava/util/Collection;

    .line 231
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/api/j/m;->c:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "checkpoint_url"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "checkpoint_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public final n()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/instagram/api/j/m;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
