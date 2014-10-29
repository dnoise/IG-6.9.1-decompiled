.class public final Lcom/instagram/api/j/n;
.super Lcom/instagram/api/j/h;
.source "StreamingApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/api/j/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/g",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/g;Lcom/instagram/api/j/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/api/j/g",
            "<TT;>;",
            "Lcom/instagram/api/j/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/j/h;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V

    .line 37
    iput-object p2, p0, Lcom/instagram/api/j/n;->a:Lcom/instagram/api/j/g;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/api/j/n;->a:Lcom/instagram/api/j/g;

    return-object v0
.end method

.method static synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/instagram/api/j/n;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 169
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 174
    :cond_2
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/j/j",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/instagram/api/j/n;->a()Lcom/instagram/api/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/instagram/api/j/n;->a()Lcom/instagram/api/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/j/a;->a()V

    .line 47
    :cond_0
    new-instance v0, Lcom/instagram/api/j/o;

    invoke-virtual {p0}, Lcom/instagram/api/j/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/api/j/o;-><init>(Lcom/instagram/api/j/n;Landroid/content/Context;)V

    return-object v0
.end method
