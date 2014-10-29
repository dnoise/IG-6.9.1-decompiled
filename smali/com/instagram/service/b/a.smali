.class public final Lcom/instagram/service/b/a;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "CustomObjectMapper.java"


# static fields
.field private static a:Lcom/instagram/service/b/a;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 41
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 47
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "MediaModule"

    new-instance v2, Lcom/fasterxml/jackson/a/w;

    invoke-direct {v2}, Lcom/fasterxml/jackson/a/w;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    .line 51
    const-class v1, Lcom/instagram/user/c/a;

    new-instance v2, Lcom/instagram/service/b/b;

    const-class v3, Lcom/instagram/user/c/a;

    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v4

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/instagram/service/b/b;-><init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;Lcom/instagram/user/c/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 54
    invoke-virtual {p0, v0}, Lcom/instagram/service/b/a;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 55
    return-void
.end method

.method public static a()Lcom/instagram/service/b/a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/instagram/service/b/a;->b()V

    .line 31
    :cond_0
    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/instagram/service/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/instagram/service/b/a;

    invoke-direct {v0}, Lcom/instagram/service/b/a;-><init>()V

    sput-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit v1

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
