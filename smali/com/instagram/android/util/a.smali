.class public Lcom/instagram/android/util/a;
.super Ljava/lang/Object;
.source "AppStartupUtil.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/instagram/android/util/a;

    sput-object v0, Lcom/instagram/android/util/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 45
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 46
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 49
    const-string v8, "media"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 50
    const-string v1, "screen"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 100
    const-string v1, "MainTabActivity.INITIAL_TAB"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v0, "MainTabActivity.INITIAL_TAB_ARGUMENTS"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    :cond_1
    return-object v5

    .line 55
    :cond_2
    const-string v8, "user"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    const-string v1, "screen"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "id"

    const-string v2, "username"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v8, "direct"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 61
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "ds_has_comment"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "has_comment"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const-string v8, "direct_request"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 68
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-string v8, "inbox"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 71
    const-string v0, "screen"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_6
    const-string v8, "mainfeed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_7
    const-string v1, "explore"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v2

    .line 76
    goto/16 :goto_0

    .line 77
    :cond_8
    const-string v1, "share"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    const-string v0, "MainTabActivity.EXTRA_LAUNCH_CAMERA"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v0, v3

    goto/16 :goto_0

    .line 79
    :cond_9
    const-string v1, "news"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v0, "profile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v4

    .line 82
    goto/16 :goto_0

    .line 83
    :cond_a
    const-string v0, "editprofile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v0, "findfriends"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v0, "suggestedaccounts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    .line 92
    :cond_d
    const-string v0, "follow_destination"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    .line 96
    :cond_e
    sget-object v0, Lcom/instagram/android/util/a;->a:Ljava/lang/Class;

    move v0, v3

    goto/16 :goto_0
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 114
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1, v4}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    .line 156
    :goto_0
    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 157
    return-void

    .line 119
    :cond_0
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    const-string v2, "userid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_2
    const-string v2, "hashtag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/o/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_3
    const-string v2, "direct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v2, "InboxFragment.ADD_TO_BACKSTACK"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    new-instance v2, Lcom/instagram/base/a/a/a;

    invoke-direct {v2, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v3, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v3}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v2, v3, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 130
    const-string v0, "ds_has_comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 131
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v2

    invoke-interface {v2, p0, v1, v0, v4}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_4
    const-string v1, "direct_request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    const-string v1, "InboxFragment.ADD_TO_BACKSTACK"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v2}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 141
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/directshare/e/b;

    invoke-direct {v1}, Lcom/instagram/android/directshare/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :cond_5
    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v1}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v1, "editprofile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/ac;

    invoke-direct {v1}, Lcom/instagram/android/fragment/ac;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :cond_7
    const-string v1, "findfriends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :cond_8
    const-string v1, "suggestedaccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/dn;

    invoke-direct {v1}, Lcom/instagram/android/fragment/dn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :cond_9
    const-string v1, "follow_destination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 151
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/cd;

    invoke-direct {v1}, Lcom/instagram/android/fragment/cd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Received unknown starting bundle type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
