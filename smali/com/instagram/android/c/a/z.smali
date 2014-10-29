.class public final Lcom/instagram/android/c/a/z;
.super Lcom/instagram/api/j/g;
.source "UserDetailRequest.java"


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
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;


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
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 31
    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/c/a/z;->g()V

    .line 51
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 1
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
    .line 68
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 71
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/instagram/android/c/a/z;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/user/c/i;->a()V

    .line 81
    :cond_0
    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 82
    invoke-virtual {p3, v0}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/c/a/z;->g()V

    .line 57
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "users/%s/info/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/android/c/a/z;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "users/%s/usernameinfo/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/c/a/z;->d:Ljava/lang/String;

    return-object v0
.end method
