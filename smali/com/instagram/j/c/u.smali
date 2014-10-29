.class final Lcom/instagram/j/c/u;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedYouFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/c/s;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/s;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 51
    const-string v0, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-static {v0}, Lcom/instagram/j/c/s;->b(Lcom/instagram/j/c/s;)V

    .line 53
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-static {v0}, Lcom/instagram/j/c/s;->c(Lcom/instagram/j/c/s;)V

    .line 54
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v1}, Lcom/instagram/j/c/s;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0}, Lcom/instagram/j/c/s;->W()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0}, Lcom/instagram/j/c/s;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    iget-object v1, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/n;)V

    .line 59
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0}, Lcom/instagram/j/c/s;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/g;

    iget-object v1, p0, Lcom/instagram/j/c/u;->a:Lcom/instagram/j/c/s;

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/g;->b(Lcom/instagram/j/c/n;)V

    .line 63
    :cond_1
    return-void
.end method
