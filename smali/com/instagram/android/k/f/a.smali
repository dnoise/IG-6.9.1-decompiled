.class public final Lcom/instagram/android/k/f/a;
.super Landroid/widget/FrameLayout;
.source "UserListHeader.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/instagram/android/k/f/a;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/k/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->follow_all_header:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget v0, Lcom/facebook/av;->content:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/f/a;->a:Landroid/view/View;

    .line 45
    sget v0, Lcom/facebook/av;->avatar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/k/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 46
    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/k/f/a;->c:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/facebook/av;->message:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/k/f/a;->d:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/facebook/av;->follow_all:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/f/a;->e:Landroid/view/View;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/k/f/a;->setUser(Lcom/instagram/user/c/a;)V

    .line 50
    invoke-direct {p0}, Lcom/instagram/android/k/f/a;->b()V

    .line 51
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    iget v0, p0, Lcom/instagram/android/k/f/a;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/k/f/a;->f:I

    if-nez v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/k/f/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/instagram/android/k/f/a;->f:I

    sget v2, Lcom/instagram/android/k/d/a;->b:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/facebook/ax;->found_x_contacts:I

    :goto_1
    iget v2, p0, Lcom/instagram/android/k/f/a;->g:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/instagram/android/k/f/a;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/instagram/android/k/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_2
    sget v0, Lcom/facebook/ax;->found_x_friends:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/instagram/android/k/f/a;->g:I

    .line 88
    invoke-direct {p0}, Lcom/instagram/android/k/f/a;->b()V

    .line 89
    return-void
.end method

.method public final setFollowAllEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    return-void
.end method

.method public final setOnFollowAll(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public final setType$1b988d18(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 77
    iput p1, p0, Lcom/instagram/android/k/f/a;->f:I

    .line 78
    invoke-direct {p0}, Lcom/instagram/android/k/f/a;->b()V

    .line 79
    return-void
.end method

.method public final setUser(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter "user"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/k/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
