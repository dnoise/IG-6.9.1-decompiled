.class public final Lcom/instagram/android/login/c/e;
.super Lcom/instagram/api/j/b;
.source "FacebookVerifyAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/android/login/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 28
    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/android/login/c/f;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)",
            "Lcom/instagram/android/login/c/f;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/instagram/android/login/c/f;

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v3, Lcom/instagram/user/c/a;

    invoke-virtual {v0, v2, v3}, Lcom/instagram/service/b/a;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/instagram/android/login/c/f;-><init>(Lcom/instagram/user/c/a;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/instagram/api/j/b;->a(Lcom/instagram/common/a/c/b;)V

    .line 71
    const-string v0, "fb_access_token"

    iget-object v1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/login/c/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "user_email"

    iget-object v1, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->g()V

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/instagram/android/login/c/e;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->g()V

    .line 59
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p1}, Lcom/instagram/android/login/c/e;->d(Lcom/instagram/api/j/j;)Lcom/instagram/android/login/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->g()V

    .line 65
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "fb/verify_access_token/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
