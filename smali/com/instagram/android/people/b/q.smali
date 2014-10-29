.class public final Lcom/instagram/android/people/b/q;
.super Lcom/instagram/base/a/b;
.source "PhotosOfYouOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private a:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private b:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 128
    sget v0, Lcom/instagram/android/c/a/j;->a:I

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 133
    :goto_0
    new-instance v0, Lcom/instagram/android/c/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/people/b/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/people/b/u;-><init>(Lcom/instagram/android/people/b/q;B)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/instagram/android/c/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/i;->g()V

    .line 135
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/people/b/q;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/q;->a(I)V

    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->radio_check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->i()Z

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 94
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/people/b/q;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->c()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 6

    .prologue
    .line 98
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/people/b/q;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->learn_more_photos_of_you:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    sget v1, Lcom/facebook/az;->people_tagging_learn_more_photos:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/people/b/q;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v3, Lcom/instagram/android/people/b/t;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/b/t;-><init>(Lcom/instagram/android/people/b/q;)V

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v3, Lcom/facebook/az;->people_tagging_review_description:I

    invoke-virtual {p0, v3}, Lcom/instagram/android/people/b/q;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 123
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    sget v0, Lcom/facebook/aw;->fragment_user_tag_options:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    sget v0, Lcom/facebook/av;->tag_option_automatically:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 65
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget v0, Lcom/facebook/av;->tag_option_automatically_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/b/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/r;-><init>(Lcom/instagram/android/people/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/facebook/av;->tag_option_manually:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 76
    iget-object v0, p0, Lcom/instagram/android/people/b/q;->b:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget v0, Lcom/facebook/av;->tag_option_manually_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/b/s;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/s;-><init>(Lcom/instagram/android/people/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/instagram/android/people/b/q;->c()V

    .line 88
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    sget v0, Lcom/facebook/az;->options:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 140
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 141
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "photos_of_you_options"

    return-object v0
.end method
