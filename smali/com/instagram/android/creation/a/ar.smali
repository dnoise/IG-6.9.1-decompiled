.class public final Lcom/instagram/android/creation/a/ar;
.super Lcom/instagram/base/a/b;
.source "ShareLaterFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/widget/v;


# instance fields
.field private a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

.field private b:Landroid/os/Handler;

.field private c:Lcom/instagram/sharelater/ShareLaterMedia;

.field private d:Lcom/instagram/android/widget/s;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Lcom/facebook/b/e;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/widget/x;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instagram/api/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->b:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/instagram/android/creation/a/au;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/au;-><init>(Lcom/instagram/android/creation/a/ar;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->i:Lcom/instagram/api/j/a;

    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/android/widget/IgAutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    .line 188
    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/sharelater/ShareLaterMedia;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 203
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->d()V

    .line 204
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/api/j/a;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->i:Lcom/instagram/api/j/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/ar;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 135
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/a/ar;->f:I

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 138
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 144
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/creation/a/ar;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 146
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;

    .line 150
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 99
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ar;->a(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    sget v0, Lcom/facebook/aw;->share_later:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v0, Lcom/facebook/av;->metadata_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v2}, Lcom/instagram/sharelater/ShareLaterMedia;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setUrl(Ljava/lang/String;)V

    .line 75
    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    .line 76
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v2}, Lcom/instagram/sharelater/ShareLaterMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->autocomplete_list_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setDropDownMaxNumberItemsDisplayed$2549578(I)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v0}, Lcom/instagram/sharelater/ShareLaterMedia;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget v0, Lcom/facebook/av;->caption_video_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-static {v0, v2}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;Lcom/instagram/model/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/instagram/android/widget/s;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/instagram/android/widget/s;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    .line 87
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, p0}, Lcom/instagram/android/widget/s;->setOnSharingToggleListener(Lcom/instagram/android/widget/v;)V

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v2, v0, v4, v0, v0}, Lcom/instagram/android/widget/s;->setPadding(IIII)V

    .line 90
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 91
    sget v0, Lcom/facebook/av;->share_later_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/instagram/android/widget/r;->a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V

    .line 122
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V

    .line 123
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string v1, "ShareLaterMedia.SHARE_LATER_MEDIA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/sharelater/ShareLaterMedia;

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    .line 58
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ar;->a(I)V

    .line 59
    new-instance v0, Lcom/instagram/android/creation/a/as;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    invoke-direct {v0, p0, p0, v1}, Lcom/instagram/android/creation/a/as;-><init>(Lcom/instagram/android/creation/a/ar;Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;

    .line 66
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    sget v0, Lcom/facebook/az;->share:I

    new-instance v1, Lcom/instagram/android/creation/a/at;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/at;-><init>(Lcom/instagram/android/creation/a/ar;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;

    .line 115
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->d()V

    .line 116
    return-void
.end method

.method public final a(Lcom/instagram/android/widget/x;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;

    invoke-virtual {p1, v0, p0, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V

    .line 198
    invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V

    .line 199
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "share_later"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 216
    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;

    .line 217
    iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;

    .line 218
    return-void
.end method
