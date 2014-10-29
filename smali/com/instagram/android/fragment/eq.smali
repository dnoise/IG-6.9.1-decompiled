.class final Lcom/instagram/android/fragment/eq;
.super Ljava/lang/Object;
.source "ShortUrlFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/b/a/c;

.field final synthetic b:Lcom/instagram/android/fragment/ep;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ep;Lcom/instagram/android/feed/b/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/fragment/eq;->b:Lcom/instagram/android/fragment/ep;

    iput-object p2, p0, Lcom/instagram/android/fragment/eq;->a:Lcom/instagram/android/feed/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/fragment/eq;->b:Lcom/instagram/android/fragment/ep;

    iget-object v0, v0, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/activity/a;

    .line 75
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/eq;->b:Lcom/instagram/android/fragment/ep;

    iget-object v2, v2, Lcom/instagram/android/fragment/ep;->a:Lcom/instagram/android/fragment/eo;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/eo;->p()Landroid/support/v4/app/s;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/eq;->a:Lcom/instagram/android/feed/b/a/c;

    invoke-virtual {v3}, Lcom/instagram/android/feed/b/a/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/base/a/a/a;->a()V

    .line 79
    invoke-virtual {v0}, Lcom/instagram/base/activity/a;->k()V

    .line 80
    return-void
.end method
