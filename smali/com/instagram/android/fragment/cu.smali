.class final Lcom/instagram/android/fragment/cu;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-static {v0}, Lcom/instagram/android/fragment/cr;->d(Lcom/instagram/android/fragment/cr;)Z

    .line 565
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 566
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v1

    .line 568
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/cr;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 581
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    iget-object v0, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-static {v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    sget-object v2, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/cu;->a:Lcom/instagram/android/fragment/cr;

    invoke-static {v3}, Lcom/instagram/android/fragment/cr;->e(Lcom/instagram/android/fragment/cr;)Lcom/facebook/b/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method
