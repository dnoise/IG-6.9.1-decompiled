.class public final Lcom/instagram/android/util/b;
.super Ljava/lang/Object;
.source "DialogNavigator.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;

.field private b:Landroid/support/v4/app/f;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/s;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "dialog"

    iput-object v0, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/f;Landroid/os/Bundle;)Lcom/instagram/android/util/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;

    .line 74
    iput-object p2, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;

    .line 75
    return-object p0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 42
    instance-of v1, v0, Lcom/instagram/common/analytics/g;

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/g;

    iget-object v2, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    invoke-virtual {v2}, Landroid/support/v4/app/s;->g()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/util/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->g(Landroid/os/Bundle;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    iget-object v1, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    iget-object v1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 56
    iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;

    iget-object v2, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 59
    return-void
.end method
