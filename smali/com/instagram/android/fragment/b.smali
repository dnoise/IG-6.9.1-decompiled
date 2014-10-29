.class final Lcom/instagram/android/fragment/b;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/feed/d/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/instagram/feed/d/t;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v1

    .line 104
    iget-boolean v2, p1, Lcom/instagram/feed/d/t;->b:Z

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    :goto_0
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/a;->ai()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v0}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;)Z

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/b;->a(Lcom/instagram/feed/d/t;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/b;->b(Lcom/instagram/feed/d/t;)V

    return-void
.end method
