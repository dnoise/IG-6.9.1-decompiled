.class public final Lcom/instagram/android/login/c/b;
.super Lcom/instagram/api/j/b;
.source "CreateAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private d:Lcom/instagram/android/login/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    sget v0, Lcom/facebook/av;->request_id_create_account:I

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 36
    sput p3, Lcom/instagram/android/login/c/b;->a:I

    .line 37
    return-void
.end method

.method private d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Lcom/instagram/user/c/a;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    const-string v1, "created_user"

    invoke-virtual {p1, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    const-string v0, "created_user"

    const-class v1, Lcom/instagram/user/c/a;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;
    :try_end_0
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable parse created user account"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/login/c/b;->e(Lcom/instagram/api/j/j;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/instagram/api/j/j;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/login/c/b;->k()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 116
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 117
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/android/login/a;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/login/c/b;->d:Lcom/instagram/android/login/a;

    .line 41
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 42
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v1, p0, Lcom/instagram/android/login/c/b;->d:Lcom/instagram/android/login/a;

    sget v0, Lcom/instagram/android/login/c/b;->a:I

    sget v2, Lcom/instagram/android/login/c/d;->b:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/instagram/android/login/a;->a(Lcom/instagram/common/a/c/b;Z)Lcom/instagram/common/a/c/b;

    .line 48
    iget-object v0, p0, Lcom/instagram/android/login/c/b;->d:Lcom/instagram/android/login/a;

    iget-object v0, v0, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "profile_pic"

    iget-object v1, p0, Lcom/instagram/android/login/c/b;->d:Lcom/instagram/android/login/a;

    iget-object v1, v1, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/instagram/android/d/o;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v2, "profile_pic"

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 55
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/login/c/b;->d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
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
            "Lcom/instagram/user/c/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/instagram/android/login/c/c;->a:[I

    sget v1, Lcom/instagram/android/login/c/b;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    const-string v0, "accounts/create/"

    .line 84
    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    const-string v0, "accounts/create_with_code/"

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
