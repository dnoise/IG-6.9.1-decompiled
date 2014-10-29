.class public final Lcom/instagram/common/t/b;
.super Ljava/util/LinkedList;
.source "NavigationQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/instagram/common/t/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/fasterxml/jackson/a/e;

.field private d:Lcom/instagram/common/analytics/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/instagram/common/t/b;

    invoke-direct {v0}, Lcom/instagram/common/t/b;-><init>()V

    sput-object v0, Lcom/instagram/common/t/b;->b:Lcom/instagram/common/t/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/t/b;->a:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    iput-object v0, p0, Lcom/instagram/common/t/b;->c:Lcom/fasterxml/jackson/a/e;

    .line 40
    return-void
.end method

.method public static a()Lcom/instagram/common/t/b;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/instagram/common/t/b;->b:Lcom/instagram/common/t/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/analytics/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/common/t/b;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 55
    invoke-super {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/instagram/common/t/b;->d:Lcom/instagram/common/analytics/g;

    .line 58
    return-void
.end method

.method public final b()Lcom/instagram/common/analytics/g;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/common/t/b;->d:Lcom/instagram/common/analytics/g;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/t/b;->c:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 70
    invoke-virtual {p0}, Lcom/instagram/common/t/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 71
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 73
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 74
    const-string v1, "module"

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 75
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 76
    const-string v1, "click_point"

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 77
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/instagram/common/t/b;->a:Ljava/lang/String;

    .line 86
    :goto_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 81
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
