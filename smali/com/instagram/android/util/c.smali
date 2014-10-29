.class public final Lcom/instagram/android/util/c;
.super Ljava/lang/Object;
.source "FragmentNavigatorUtil.java"

# interfaces
.implements Lcom/instagram/o/f/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v1, "RecommendedUserFragment.IS_AYML_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/dn;

    invoke-direct {v2}, Lcom/instagram/android/fragment/dn;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public final a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;ZZZ)Lcom/instagram/base/a/a/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "CommentThreadFragment.MEDIA_ID"

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "CommentThreadFragment.SHOW_KEYBOARD"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v1, "CommentThreadFragment.IS_SPONSORED"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "CommentThreadFragment.IS_ORGANIC"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v1, "CommentThreadFragment.IS_SELF_MEDIA"

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {v2}, Lcom/instagram/android/feed/comments/a/a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/util/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v1, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/fo;

    invoke-direct {v2}, Lcom/instagram/android/fragment/fo;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "mediaId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "scroll"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string v1, "opened_via_push"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/directshare/d/c;

    invoke-direct {v2}, Lcom/instagram/android/directshare/d/c;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v0, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    const-string v0, "com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    sget v0, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/instagram/common/analytics/g;

    if-eqz v2, :cond_0

    .line 78
    check-cast v0, Lcom/instagram/common/analytics/g;

    invoke-interface {v0}, Lcom/instagram/common/analytics/g;->j_()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v2, "com.instagram.android.fragment.KEY_REFERRER"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/ev;

    invoke-direct {v2}, Lcom/instagram/android/fragment/ev;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;
    .locals 2
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/instagram/m/c;->a:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/cd;

    invoke-direct {v1}, Lcom/instagram/android/fragment/cd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bp;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/fo;

    invoke-direct {v2}, Lcom/instagram/android/fragment/fo;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/util/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/util/c;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v1, "HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/cf;

    invoke-direct {v2}, Lcom/instagram/android/fragment/cf;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method
