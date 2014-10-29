.class final Lcom/instagram/user/b/a;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "LocalUserDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 69
    :cond_0
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/instagram/user/c/a;

    invoke-direct {v0}, Lcom/instagram/user/c/a;-><init>()V

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 30
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_3
    const-string v2, "username"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_4
    const-string v2, "full_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_5
    const-string v2, "biography"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_6
    const-string v2, "blocking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Z)V

    goto :goto_0

    .line 40
    :cond_7
    const-string v2, "external_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_8
    const-string v2, "geo_media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 44
    :cond_9
    const-string v2, "usertags_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 46
    :cond_a
    const-string v2, "follower_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 47
    invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 48
    :cond_b
    const-string v2, "following_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 49
    invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 50
    :cond_c
    const-string v2, "follow_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 51
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/user/c/c;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    goto/16 :goto_0

    .line 52
    :cond_d
    const-string v2, "last_follow_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/user/c/c;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V

    goto/16 :goto_0

    .line 54
    :cond_e
    const-string v2, "is_staff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 55
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Z)V

    goto/16 :goto_0

    .line 56
    :cond_f
    const-string v2, "media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 57
    invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 58
    :cond_10
    const-string v2, "privacy_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/user/c/f;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    goto/16 :goto_0

    .line 60
    :cond_11
    const-string v2, "profile_pic_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_12
    const-string v2, "is_verified"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 63
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Z)V

    goto/16 :goto_0

    .line 64
    :cond_13
    const-string v2, "usertag_review_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Z)V

    goto/16 :goto_0
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/user/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method
