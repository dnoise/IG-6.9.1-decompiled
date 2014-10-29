.class public final Lcom/instagram/android/k/e/c;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/instagram/android/k/e/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/android/k/e/b;Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 191
    invoke-static {p0}, Lcom/instagram/android/k/e/b;->b(Lcom/instagram/android/k/e/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "phone_numbers"

    invoke-static {p0}, Lcom/instagram/android/k/e/b;->b(Lcom/instagram/android/k/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/instagram/android/k/e/b;->c(Lcom/instagram/android/k/e/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "first_name"

    invoke-static {p0}, Lcom/instagram/android/k/e/b;->c(Lcom/instagram/android/k/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_1
    invoke-static {p0}, Lcom/instagram/android/k/e/b;->d(Lcom/instagram/android/k/e/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "last_name"

    invoke-static {p0}, Lcom/instagram/android/k/e/b;->d(Lcom/instagram/android/k/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_2
    invoke-static {p0}, Lcom/instagram/android/k/e/b;->a(Lcom/instagram/android/k/e/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 201
    const-string v0, "email_addresses"

    invoke-static {p0}, Lcom/instagram/android/k/e/b;->a(Lcom/instagram/android/k/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 204
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 185
    check-cast p1, Lcom/instagram/android/k/e/b;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/android/k/e/c;->a(Lcom/instagram/android/k/e/b;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
