.class public Lcom/instagram/android/login/a/a;
.super Lcom/instagram/api/j/a;
.source "CreateAccountCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/support/v4/app/s;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/instagram/android/login/a/a;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/instagram/android/login/a/a;->a:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;

    .line 45
    iput-object p4, p0, Lcom/instagram/android/login/a/a;->d:Landroid/app/Activity;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/instagram/android/login/a/c;

    invoke-direct {v0}, Lcom/instagram/android/login/a/c;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/a/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 73
    return-void
.end method

.method protected a(Lcom/instagram/api/j/j;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p1}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/a/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/n/a;->b(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/instagram/p/b;->aD:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "instagram_id"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 54
    iget-object v0, p0, Lcom/instagram/android/login/a/a;->d:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V

    .line 55
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->j()V

    .line 56
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-virtual {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/a/a;

    .line 79
    iget-object v1, p0, Lcom/instagram/android/login/a/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/login/a/b;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/a/b;-><init>(Lcom/instagram/android/login/a/a;Lcom/instagram/base/a/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 89
    return-void
.end method
