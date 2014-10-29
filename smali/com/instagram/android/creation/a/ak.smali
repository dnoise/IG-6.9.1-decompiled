.class final Lcom/instagram/android/creation/a/ak;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/ah;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->b(Lcom/instagram/android/creation/a/ah;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/av;->row_caption_followshare:I

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v3}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    iget-object v3, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v3}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    invoke-static {v0}, Lcom/instagram/android/creation/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->b(Lcom/instagram/android/creation/a/ah;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/instagram/creation/b/a/b;->h(Z)V

    .line 186
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;

    move-result-object v0

    iget-object v3, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v3}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/c/a;->e(Lcom/instagram/creation/b/a/b;)V

    .line 187
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/k;->setResult(I)V

    .line 188
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    .line 190
    const-string v0, "FollowersShareFragment.INTENT_ACTION_SHARE_EVENT"

    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/instagram/android/creation/a/ak;->a:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->b(Lcom/instagram/android/creation/a/ah;)I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Z)V

    .line 192
    return-void

    .line 180
    :cond_0
    sget v0, Lcom/facebook/av;->row_caption_directshare:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 184
    goto :goto_1

    :cond_2
    move v1, v2

    .line 191
    goto :goto_2
.end method
