.class public final Lcom/instagram/android/directshare/widget/k;
.super Ljava/lang/Object;
.source "DirectShareUserRowViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(Lcom/instagram/android/directshare/widget/l;Lcom/instagram/user/c/a;Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 19
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    .line 23
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->d:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->N()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    return-void

    :cond_0
    move v0, v1

    .line 23
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v2, :cond_2

    .line 28
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->directshare_row_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/instagram/android/directshare/widget/l;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/widget/l;-><init>(Lcom/instagram/android/directshare/widget/k;)V

    .line 43
    sget v0, Lcom/facebook/av;->row_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 44
    sget v0, Lcom/facebook/av;->row_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/facebook/av;->row_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->c:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/facebook/av;->recipient_toggle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->d:Landroid/widget/CheckBox;

    .line 47
    sget v0, Lcom/facebook/av;->user_row_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->e:Landroid/view/View;

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    return-object v1
.end method
