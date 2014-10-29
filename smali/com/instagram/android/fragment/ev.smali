.class public final Lcom/instagram/android/fragment/ev;
.super Lcom/instagram/android/fragment/eu;
.source "SingleMediaFeedFragment.java"


# instance fields
.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Lcom/instagram/model/a/a;

.field private aj:Landroid/content/IntentFilter;

.field private ak:Z

.field private final al:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/instagram/android/fragment/eu;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/instagram/android/fragment/ev;->ae:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->af:Z

    .line 45
    iput-object v1, p0, Lcom/instagram/android/fragment/ev;->ag:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->ah:Z

    .line 51
    new-instance v0, Lcom/instagram/android/fragment/ew;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ew;-><init>(Lcom/instagram/android/fragment/ev;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ev;->al:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ev;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/fragment/ev;->ae:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/instagram/android/fragment/eu;->F()V

    .line 123
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ev;->al:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/android/fragment/ev;->aj:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/instagram/android/fragment/eu;->G()V

    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ev;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->af:Z

    .line 132
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ev;->aj:Landroid/content/IntentFilter;

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->ah:Z

    .line 68
    sget-object v0, Lcom/instagram/m/c;->b:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->ak:Z

    .line 70
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/eu;->a(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ev;->af:Z

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.KEY_REFERRER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ev;->ag:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/ev;->ae:Ljava/lang/String;

    .line 95
    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ev;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/ev;->ai:Lcom/instagram/model/a/a;

    .line 100
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ev;->c(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/eu;->a(Lcom/instagram/a/b;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/fragment/ev;->ai:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_1

    .line 114
    sget v0, Lcom/facebook/az;->photo:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ev;->ai:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    .line 116
    sget v0, Lcom/facebook/az;->video:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "src"

    const-string v1, "single"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public final ad()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ev;->af:Z

    return v0
.end method

.method public final ao()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ev;->ah:Z

    return v0
.end method

.method public final ap()Z
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 188
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ev;->ak:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/eu;->aq()Z

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final b(Lcom/instagram/feed/a/i;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/eu;->b(Lcom/instagram/feed/a/i;Z)V

    .line 162
    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 163
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ev;->ai:Lcom/instagram/model/a/a;

    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 167
    :cond_0
    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/instagram/feed/a/h",
            "<",
            "Lcom/instagram/feed/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/instagram/android/fragment/ex;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ev;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/ex;-><init>(Lcom/instagram/android/fragment/ev;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/instagram/android/fragment/ev;->ag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/instagram/android/fragment/ev;->ag:Ljava/lang/String;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "feed_single_item"

    goto :goto_0
.end method
