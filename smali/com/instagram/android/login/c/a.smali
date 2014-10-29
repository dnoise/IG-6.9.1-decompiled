.class public final Lcom/instagram/android/login/c/a;
.super Lcom/instagram/api/j/g;
.source "CheckUsernameRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/android/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
    .locals 0
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
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/g/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 25
    return-void
.end method

.method private static a(Lcom/instagram/api/j/p;)Lcom/instagram/android/g/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/p",
            "<",
            "Lcom/instagram/android/g/a;",
            ">;)",
            "Lcom/instagram/android/g/a;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/instagram/api/j/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/a;

    .line 62
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/g/a;

    invoke-direct {v0}, Lcom/instagram/android/g/a;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const-string v0, "username"

    iget-object v1, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/login/c/a;->g()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/p",
            "<",
            "Lcom/instagram/android/g/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 74
    const-string v1, "username"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p3}, Lcom/instagram/android/login/c/a;->a(Lcom/instagram/api/j/p;)Lcom/instagram/android/g/a;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/instagram/android/g/a;->a(Ljava/lang/String;)V

    .line 99
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v1, "available"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {p3}, Lcom/instagram/android/login/c/a;->a(Lcom/instagram/api/j/p;)Lcom/instagram/android/g/a;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 86
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Lcom/instagram/android/g/a;->a(Z)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "error"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {p3}, Lcom/instagram/android/login/c/a;->a(Lcom/instagram/api/j/p;)Lcom/instagram/android/g/a;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lcom/instagram/android/g/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "users/check_username/"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
