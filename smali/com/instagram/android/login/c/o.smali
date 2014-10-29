.class public final Lcom/instagram/android/login/c/o;
.super Lcom/instagram/api/j/b;
.source "SendPasswordResetRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;


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
            "Ljava/lang/String;",
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


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/login/c/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    const-string v0, "device_id"

    invoke-virtual {p0}, Lcom/instagram/android/login/c/o;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "guid"

    invoke-virtual {p0}, Lcom/instagram/android/login/c/o;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 61
    :cond_0
    const-string v0, "user_email"

    iget-object v1, p0, Lcom/instagram/android/login/c/o;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/login/c/o;->a:Ljava/lang/String;

    .line 33
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 34
    return-void
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/login/c/o;->d:Ljava/lang/String;

    .line 38
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 39
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "accounts/send_password_reset/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
