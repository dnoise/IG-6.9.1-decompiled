.class final Lcom/instagram/android/creation/a/a;
.super Ljava/lang/Object;
.source "ChildFragmentShareModeSelectorDelegate.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/facebook/av;->view_switcher_button_first:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->followers:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    sget v0, Lcom/facebook/av;->view_switcher_button_second:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->direct:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->view_switcher_text_selected_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 26
    return-void
.end method

.method static synthetic b(I)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Lcom/instagram/android/creation/a/a;->c(I)V

    return-void
.end method

.method private static c(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    new-instance v3, Landroid/content/Intent;

    const-string v0, "MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v4, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    if-ne p0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-static {v3}, Lcom/instagram/common/y/d;->b(Landroid/content/Intent;)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/creation/a/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/b;-><init>(Lcom/instagram/android/creation/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/creation/a/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/c;-><init>(Lcom/instagram/android/creation/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    iget-object v3, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v1, v2

    .line 49
    goto :goto_1
.end method
