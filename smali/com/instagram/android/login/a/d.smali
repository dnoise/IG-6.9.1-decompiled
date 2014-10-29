.class public Lcom/instagram/android/login/a/d;
.super Lcom/instagram/api/j/a;
.source "FacebookRecoveryCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/login/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/support/v4/app/s;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    .line 31
    iput-object p3, p0, Lcom/instagram/android/login/a/d;->b:Landroid/support/v4/app/s;

    .line 32
    iput-object p1, p0, Lcom/instagram/android/login/a/d;->c:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/a/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/instagram/android/login/c/f;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/instagram/android/login/c/f;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/a/f;-><init>(Lcom/instagram/android/login/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/g;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/a/g;-><init>(Lcom/instagram/android/login/a/d;Lcom/instagram/android/login/c/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/a/d;)Landroid/support/v4/app/s;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->b:Landroid/support/v4/app/s;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    sget v0, Lcom/facebook/az;->request_error:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/a/e;-><init>(Lcom/instagram/android/login/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 51
    :cond_2
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/instagram/android/login/c/f;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/android/login/c/f;)V

    return-void
.end method
