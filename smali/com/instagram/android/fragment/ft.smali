.class final Lcom/instagram/android/fragment/ft;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 376
    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->aw()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 377
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    sget v3, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/util/f;->a(Landroid/content/Context;Lcom/instagram/user/c/a;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    sget v3, Lcom/facebook/az;->directshare_receive_direct_posts:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    new-instance v0, Lcom/instagram/f/a/a/c;

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fo;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/fu;

    iget-object v4, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/fragment/fu;-><init>(Lcom/instagram/android/fragment/fo;B)V

    iget-object v4, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    iget-object v4, v4, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/f/a/a/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/c;->g()V

    goto :goto_0

    .line 386
    :cond_2
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fo;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/feed/c/a;->a(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->h(Lcom/instagram/android/fragment/fo;)Lcom/instagram/android/feed/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 388
    :cond_3
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    sget v3, Lcom/facebook/az;->suggest_user:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    new-instance v0, Lcom/instagram/feed/a/k;

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fo;->z()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/instagram/feed/a/l;->a:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/feed/a/k;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/instagram/feed/a/k;->g()V

    goto/16 :goto_0

    .line 391
    :cond_4
    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    sget v2, Lcom/facebook/az;->copy_profile_url:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "/%s/"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->copy_profile_url_confirmation:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
