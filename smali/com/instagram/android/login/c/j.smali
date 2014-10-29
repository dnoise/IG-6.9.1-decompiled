.class public final Lcom/instagram/android/login/c/j;
.super Lcom/instagram/api/j/g;
.source "LookupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/android/login/c/k;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private d:Lcom/instagram/android/login/c/k;


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
            "Lcom/instagram/android/login/c/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 23
    new-instance v0, Lcom/instagram/android/login/c/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/c/k;-><init>(Lcom/instagram/android/login/c/j;)V

    iput-object v0, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const-string v0, "q"

    iget-object v1, p0, Lcom/instagram/android/login/c/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/android/login/c/j;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/login/c/j;->g()V

    .line 28
    return-void
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
            "Lcom/instagram/android/login/c/k;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 65
    const-string v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 67
    iget-object v1, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/k;->a(Lcom/instagram/user/c/a;)V

    .line 68
    iget-object v1, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    invoke-virtual {p3, v1}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 83
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v1, "has_valid_phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 72
    iget-object v1, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/k;->a(Z)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "can_email_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 76
    iget-object v1, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/k;->b(Z)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "can_sms_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 80
    iget-object v1, p0, Lcom/instagram/android/login/c/j;->d:Lcom/instagram/android/login/c/k;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/k;->c(Z)V

    goto :goto_0

    .line 83
    :cond_3
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
    .line 37
    const-string v0, "users/lookup/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
