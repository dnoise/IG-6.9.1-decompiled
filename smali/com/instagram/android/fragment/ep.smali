.class final Lcom/instagram/android/fragment/ep;
.super Lcom/instagram/common/a/a/j;
.source "ShortUrlFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/feed/b/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/eo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/feed/b/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/instagram/android/feed/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {p1}, Lcom/instagram/android/feed/b/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/eo;->a(Lcom/instagram/android/fragment/eo;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eo;->c(Z)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-static {v0}, Lcom/instagram/android/fragment/eo;->a(Lcom/instagram/android/fragment/eo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/eq;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/fragment/eq;-><init>(Lcom/instagram/android/fragment/ep;Lcom/instagram/android/feed/b/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/eo;->a(Lcom/instagram/android/fragment/eo;Z)Z

    .line 95
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/feed/b/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/eo;->a(Lcom/instagram/android/fragment/eo;Z)Z

    .line 104
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    check-cast p1, Lcom/instagram/android/feed/b/a/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ep;->a(Lcom/instagram/android/feed/b/a/c;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/feed/b/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->aj()V

    .line 89
    return-void
.end method
