.class public final Lcom/instagram/android/c/a/ab;
.super Lcom/instagram/api/j/g;
.source "UserProfileSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/android/g/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/g/b/c;Lcom/instagram/api/j/a;)V
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
            "Lcom/instagram/android/g/b/c;",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 32
    iput-object p3, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    const-string v0, "gender"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "username"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "first_name"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "phone_number"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "email"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "external_url"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "biography"

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "is_private"

    iget-object v0, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v0}, Lcom/instagram/android/g/b/c;->e()Lcom/instagram/user/c/f;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-ne v0, v2, :cond_0

    const-string v0, "True"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 64
    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 2
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
            "Lcom/instagram/user/c/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 76
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/ab;->a:Lcom/instagram/android/g/b/c;

    invoke-virtual {v1}, Lcom/instagram/android/g/b/c;->k()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/user/c/i;->a()V

    .line 80
    :cond_0
    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 81
    invoke-virtual {p3, v0}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_1
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
    const-string v0, "accounts/edit_profile/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
