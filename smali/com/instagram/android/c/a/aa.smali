.class public final Lcom/instagram/android/c/a/aa;
.super Lcom/instagram/api/j/b;
.source "UserForEditingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/android/g/b/c;",
        ">;"
    }
.end annotation


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
            "Lcom/instagram/android/g/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 24
    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/android/g/b/c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/g/b/c;",
            ">;)",
            "Lcom/instagram/android/g/b/c;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/instagram/android/g/b/c;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/g/b/c;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/instagram/api/j/j;->a(Ljava/lang/Object;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const-string v0, "edit"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p1}, Lcom/instagram/android/c/a/aa;->d(Lcom/instagram/api/j/j;)Lcom/instagram/android/g/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "accounts/current_user/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
