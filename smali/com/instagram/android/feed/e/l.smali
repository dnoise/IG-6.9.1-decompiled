.class final Lcom/instagram/android/feed/e/l;
.super Landroid/content/BroadcastReceiver;
.source "MediaLinkBroadcastHandler.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/e/k;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/e/k;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    const-string v0, "Media.COMMENT_MENTION_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "tag"

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/k;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    .line 49
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const-string v2, "Media.EXTRA_USERNAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "user_mention"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "Media.COMMENT_HASHTAG_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "hashtag"

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/k;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v0}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Media.EXTRA_HASHTAG_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v2}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    const-string v3, "media_hashtag"

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/fragment/cf;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "Media.NUMBER_LIKES_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "number_of_likes"

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/k;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    .line 68
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    const-string v1, "Media.EXTRA_MEDIA_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/instagram/android/fragment/fx;

    invoke-direct {v1}, Lcom/instagram/android/fragment/fx;-><init>()V

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/feed/d/l;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "media_likes"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "Media.USER_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v0}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/instagram/android/feed/e/k;->a(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V

    .line 78
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const-string v2, "Media.EXTRA_USER_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "Media.EXTRA_CLICK_POINT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto/16 :goto_0

    .line 84
    :cond_4
    const-string v0, "Media.NUMBER_COMMENTS_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "number_of_comments"

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/k;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    .line 87
    const-string v0, "Media.EXTRA_MEDIA_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v1}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v4}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/instagram/feed/g/a;->p_()Z

    move-result v4

    iget-object v5, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v5}, Lcom/instagram/android/feed/e/k;->a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/instagram/feed/g/a;->V()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;ZZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto/16 :goto_0

    .line 97
    :cond_5
    const-string v0, "PeopleTag.BROADCAST_TAG_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "PeopleTag.INTENT_EXTRA_USER_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "PeopleTag.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    iget-object v0, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v0}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v2}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/instagram/android/people/c/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V

    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/e/l;->a:Lcom/instagram/android/feed/e/k;

    invoke-static {v2}, Lcom/instagram/android/feed/e/k;->b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto/16 :goto_0
.end method
