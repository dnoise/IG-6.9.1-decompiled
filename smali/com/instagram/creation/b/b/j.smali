.class public final Lcom/instagram/creation/b/b/j;
.super Ljava/lang/Object;
.source "PendingMediaSerializationUtil.java"


# direct methods
.method public static a()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "PendingMediaModule"

    invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    .line 22
    const-class v1, Lcom/instagram/creation/b/a/b;

    new-instance v2, Lcom/instagram/creation/b/b/k;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 23
    const-class v1, Lcom/instagram/venue/model/Venue;

    new-instance v2, Lcom/instagram/creation/b/b/t;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/t;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 24
    const-class v1, Lcom/instagram/model/people/PeopleTag;

    new-instance v2, Lcom/instagram/creation/b/b/o;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 25
    const-class v1, Lcom/instagram/creation/b/a/j;

    new-instance v2, Lcom/instagram/creation/b/b/v;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 26
    const-class v1, Lcom/instagram/creation/b/a/a;

    new-instance v2, Lcom/instagram/creation/b/b/b;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 27
    const-class v1, Lcom/instagram/creation/b/a/f;

    new-instance v2, Lcom/instagram/creation/b/b/m;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/m;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 28
    const-class v1, Lcom/instagram/creation/b/a/i;

    new-instance v2, Lcom/instagram/creation/b/b/q;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 30
    const-class v1, Lcom/instagram/creation/b/a/b;

    new-instance v2, Lcom/instagram/creation/b/b/c;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 31
    const-class v1, Lcom/instagram/venue/model/Venue;

    new-instance v2, Lcom/instagram/creation/b/b/s;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 32
    const-class v1, Lcom/instagram/model/people/PeopleTag;

    new-instance v2, Lcom/instagram/creation/b/b/n;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 33
    const-class v1, Lcom/instagram/creation/b/a/j;

    new-instance v2, Lcom/instagram/creation/b/b/u;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/u;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 34
    const-class v1, Lcom/instagram/creation/b/a/a;

    new-instance v2, Lcom/instagram/creation/b/b/a;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 35
    const-class v1, Lcom/instagram/creation/b/a/f;

    new-instance v2, Lcom/instagram/creation/b/b/l;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 36
    const-class v1, Lcom/instagram/creation/b/a/i;

    new-instance v2, Lcom/instagram/creation/b/b/p;

    invoke-direct {v2}, Lcom/instagram/creation/b/b/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 38
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
