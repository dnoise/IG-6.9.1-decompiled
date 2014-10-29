.class public Lcom/instagram/user/follow/FollowButton;
.super Lcom/instagram/ui/widget/textview/a;
.source "FollowButton.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private final e:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/user/follow/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/user/follow/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/textview/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    sget-object v0, Lcom/facebook/bb;->FollowButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    sget v1, Lcom/facebook/bb;->FollowButton_followButtonStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    const-string v0, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->a()V

    .line 110
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    sget v0, Lcom/facebook/au;->rounded_layout_border_stroke:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    .line 114
    sget v0, Lcom/facebook/as;->grey_light:I

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    .line 118
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingLeft()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingRight()I

    move-result v1

    .line 120
    iget v2, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    invoke-virtual {p0, v2}, Lcom/instagram/user/follow/FollowButton;->setBackgroundResource(I)V

    .line 121
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/instagram/user/follow/FollowButton;->setPadding(IIII)V

    .line 122
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    if-ne v1, v2, :cond_1

    .line 205
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/facebook/az;->unfollow_public_user_x:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 214
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-ne v1, v2, :cond_0

    .line 208
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/facebook/az;->unfollow_private_user_x:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_2
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-direct {v1, p1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unfollow:I

    new-instance v2, Lcom/instagram/user/follow/e;

    invoke-direct {v2, p0, p3, p2, p4}, Lcom/instagram/user/follow/e;-><init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/user/follow/d;

    invoke-direct {v2, p0}, Lcom/instagram/user/follow/d;-><init>(Lcom/instagram/user/follow/FollowButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 237
    :cond_3
    return-void
.end method

.method private a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/instagram/user/follow/n;->a()Lcom/instagram/user/follow/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v2, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {v1}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 192
    if-eqz p3, :cond_0

    .line 193
    invoke-interface {p3, v0}, Lcom/instagram/user/follow/g;->a(Lcom/instagram/user/c/c;)V

    .line 195
    :cond_0
    return-void
.end method

.method private a(Lcom/instagram/user/c/c;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 240
    sget-object v0, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setEnabled(Z)V

    .line 243
    invoke-static {p1}, Lcom/instagram/user/follow/i;->b(Lcom/instagram/user/c/c;)I

    move-result v0

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    .line 244
    invoke-static {p1}, Lcom/instagram/user/follow/i;->a(Lcom/instagram/user/c/c;)I

    move-result v0

    iput v0, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    .line 245
    sget-object v0, Lcom/instagram/user/follow/f;->a:[I

    invoke-virtual {p1}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 260
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    invoke-virtual {v2}, Lcom/instagram/user/follow/h;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/follow/FollowButton;->e:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, p1}, Lcom/instagram/user/follow/h;->a(Lcom/instagram/user/c/c;)I

    move-result v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setImageResource(I)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingLeft()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getPaddingRight()I

    move-result v2

    .line 276
    iget v3, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    invoke-virtual {p0, v3}, Lcom/instagram/user/follow/FollowButton;->setBackgroundResource(I)V

    .line 277
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/instagram/user/follow/FollowButton;->setPadding(IIII)V

    .line 278
    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->b()V

    .line 279
    return-void

    :cond_2
    move v0, v1

    .line 240
    goto :goto_0

    .line 248
    :pswitch_0
    const-string v0, "..."

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 249
    goto :goto_1

    .line 251
    :pswitch_1
    sget v0, Lcom/facebook/az;->following_button_following:I

    goto :goto_1

    .line 254
    :pswitch_2
    sget v0, Lcom/facebook/az;->following_button_requested:I

    goto :goto_1

    .line 257
    :pswitch_3
    sget v0, Lcom/facebook/az;->following_button_follow:I

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/instagram/user/follow/FollowButton;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/user/follow/FollowButton;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 282
    iget v0, p0, Lcom/instagram/user/follow/FollowButton;->c:I

    .line 283
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    invoke-static {v0}, Lcom/instagram/user/follow/i;->a(I)I

    move-result v0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 289
    iget v1, p0, Lcom/instagram/user/follow/FollowButton;->d:I

    sget v2, Lcom/facebook/au;->rounded_layout_border_fill:I

    if-ne v1, v2, :cond_2

    .line 290
    sget v0, Lcom/facebook/as;->white:I

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 294
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setTextColor(I)V

    .line 296
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 300
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/follow/FollowButton;->b:Ljava/lang/String;

    .line 154
    iget-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    if-nez v0, :cond_3

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/user/follow/FollowButton;->a:Z

    .line 156
    if-eqz p3, :cond_3

    .line 157
    new-instance v0, Lcom/instagram/user/follow/b;

    invoke-virtual {p0}, Lcom/instagram/user/follow/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/instagram/user/follow/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;)V

    .line 159
    invoke-virtual {v0}, Lcom/instagram/user/follow/b;->g()V

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/c;)V

    .line 165
    new-instance v0, Lcom/instagram/user/follow/c;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/instagram/user/follow/c;-><init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    invoke-virtual {p0, v0}, Lcom/instagram/user/follow/FollowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Lcom/instagram/ui/widget/textview/a;->drawableStateChanged()V

    .line 305
    invoke-direct {p0}, Lcom/instagram/user/follow/FollowButton;->b()V

    .line 306
    return-void
.end method
