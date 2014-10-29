.class public abstract Lcom/instagram/android/login/a/i;
.super Lcom/instagram/api/j/a;
.source "ValidateAccountCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/support/v4/app/s;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/instagram/android/login/a/i;->a:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lcom/instagram/android/login/a/i;->b:Landroid/support/v4/app/s;

    .line 28
    iput-object p1, p0, Lcom/instagram/android/login/a/i;->c:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/instagram/android/login/a/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/a/k;-><init>(Lcom/instagram/android/login/a/i;)V

    .line 53
    iget-object v1, p0, Lcom/instagram/android/login/a/i;->b:Landroid/support/v4/app/s;

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/a/k;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 55
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/a/i;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/login/a/i;->b:Landroid/support/v4/app/s;

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/a/a;

    .line 61
    iget-object v1, p0, Lcom/instagram/android/login/a/i;->a:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/login/a/j;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/a/j;-><init>(Lcom/instagram/android/login/a/i;Lcom/instagram/base/a/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    .line 71
    return-void
.end method
