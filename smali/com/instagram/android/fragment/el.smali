.class public final Lcom/instagram/android/fragment/el;
.super Lcom/instagram/android/fragment/fo;
.source "SelfFragment.java"


# instance fields
.field private af:Lcom/instagram/android/d/n;

.field private ag:Lcom/instagram/common/d/j;

.field private ah:Lcom/instagram/common/d/h;

.field private ai:Lcom/instagram/feed/i/a;

.field private final aj:Lcom/instagram/common/d/a;

.field private ak:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;-><init>()V

    .line 38
    new-instance v0, Lcom/instagram/android/fragment/em;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/em;-><init>(Lcom/instagram/android/fragment/el;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->aj:Lcom/instagram/common/d/a;

    return-void
.end method

.method private ax()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->au()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ay()V
    .locals 2

    .prologue
    .line 154
    new-instance v1, Lcom/instagram/feed/i/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/instagram/feed/i/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    .line 155
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V

    .line 156
    return-void
.end method

.method private az()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->b()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    .line 161
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/instagram/android/fragment/fo;->F()V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ag:Lcom/instagram/common/d/j;

    const-string v1, "SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Lcom/instagram/common/d/j;->a(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/instagram/android/fragment/el;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/instagram/android/fragment/el;->ay()V

    .line 146
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/instagram/android/fragment/fo;->H()V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ah:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 94
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->load_more_empty_self:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/fo;->a(IILandroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->af:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/d/n;->a(IILandroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fo;->a(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/instagram/android/d/n;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/n;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->af:Lcom/instagram/android/d/n;

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->i(I)V

    .line 60
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->ag:Lcom/instagram/common/d/j;

    .line 61
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ag:Lcom/instagram/common/d/j;

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    iget-object v2, p0, Lcom/instagram/android/fragment/el;->aj:Lcom/instagram/common/d/a;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->ah:Lcom/instagram/common/d/h;

    .line 65
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ah:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 68
    sget-object v0, Lcom/instagram/m/c;->n:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/el;->ak:Z

    .line 70
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fo;->a(Lcom/instagram/a/b;)V

    .line 116
    iget-boolean v0, p0, Lcom/instagram/android/fragment/el;->ak:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/instagram/a/i;->a:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/fragment/en;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/en;-><init>(Lcom/instagram/android/fragment/el;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0
.end method

.method protected final as()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/instagram/android/fragment/fo;->as()V

    .line 76
    invoke-direct {p0}, Lcom/instagram/android/fragment/el;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/instagram/android/fragment/el;->ay()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->au()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/instagram/android/fragment/el;->az()V

    goto :goto_0
.end method

.method protected final at()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->ae:Lcom/instagram/user/c/a;

    .line 105
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->af:Lcom/instagram/android/d/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/el;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/n;->a(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fo;->e(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/el;->af:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1}, Lcom/instagram/android/d/n;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "self_profile"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/instagram/android/fragment/fo;->m_()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/el;->ai:Lcom/instagram/feed/i/a;

    .line 87
    return-void
.end method
