.class public final Lcom/instagram/f/a/a/g;
.super Lcom/instagram/api/k/a/b;
.source "ConfigureDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/b/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    .line 30
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 70
    invoke-virtual {v2, v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    const-string v0, "caption"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    .line 39
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {v1}, Lcom/instagram/f/a/a/g;->a(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_1
    const-string v1, "recipients"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "video_result"

    iget-object v1, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/f/a/a/g;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "direct_share/configure/?video=1"

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "direct_share/configure/"

    goto :goto_0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
