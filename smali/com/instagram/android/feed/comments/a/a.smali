.class public final Lcom/instagram/android/feed/comments/a/a;
.super Lcom/instagram/base/a/c;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/feed/comments/a/g;
.implements Lcom/instagram/feed/g/a;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private aa:Lcom/instagram/common/a/a/g;

.field private ab:Lcom/instagram/feed/d/l;

.field private ac:Lcom/instagram/feed/comments/a/i;

.field private ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

.field private ae:Landroid/widget/ImageView;

.field private af:Landroid/app/Dialog;

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private final aj:Lcom/instagram/common/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/d",
            "<",
            "Lcom/instagram/feed/d/t;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Landroid/database/DataSetObserver;

.field private final al:Landroid/text/TextWatcher;

.field private am:Lcom/instagram/android/feed/e/k;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->i:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/instagram/android/feed/comments/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/b;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Lcom/instagram/common/j/d;

    .line 160
    new-instance v0, Lcom/instagram/android/feed/comments/a/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/k;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    .line 167
    new-instance v0, Lcom/instagram/android/feed/comments/a/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/l;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    .line 763
    return-void
.end method

.method private W()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private X()Z
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.SHOW_KEYBOARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v1, Lcom/instagram/android/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 497
    :cond_0
    return-void
.end method

.method private Z()Lcom/instagram/feed/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/feed/a/h",
            "<",
            "Lcom/instagram/feed/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lcom/instagram/android/feed/comments/a/f;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/f;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 366
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 368
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 370
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 362
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Ljava/lang/String;)V

    .line 355
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->f(I)V

    .line 358
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->f(Lcom/instagram/feed/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/feed/d/b;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/comments/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/b;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ar;->comment_report_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->flag_comment_title:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/comments/a/j;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/instagram/android/feed/comments/a/j;-><init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;ILcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 747
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-static {p1, v1, v0, p0}, Lcom/instagram/android/feed/comments/b/a;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;Lcom/instagram/android/feed/comments/a/a;)V

    .line 439
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 626
    const-string v0, "@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    const-string v2, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/instagram/android/feed/comments/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->W()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->Y()V

    return-void
.end method

.method private d(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 460
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->learn_more:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/d;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/d;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/c;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/feed/comments/a/c;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 479
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    return-object v0
.end method

.method private e(Lcom/instagram/feed/d/b;)[Ljava/lang/CharSequence;
    .locals 3
    .parameter

    .prologue
    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    sget v1, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    sget v1, Lcom/facebook/az;->delete_and_report_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_0
    :goto_0
    sget v1, Lcom/facebook/az;->reply_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    sget v1, Lcom/facebook/az;->view_profile:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    sget v1, Lcom/facebook/az;->copy_text:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 655
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    .line 647
    :cond_1
    sget v1, Lcom/facebook/az;->report_comment:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f(I)V
    .locals 4
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/comments/a/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/comments/a/n;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->f(I)V

    return-void
.end method

.method private f(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 686
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->delete_comment_are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete:I

    new-instance v2, Lcom/instagram/android/feed/comments/a/i;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/feed/comments/a/i;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 702
    return-void
.end method

.method static synthetic g(Lcom/instagram/android/feed/comments/a/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 558
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 376
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/feed/comments/a/a;->ai:I

    .line 377
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 379
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 383
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 386
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/view/View;)V

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->a()V

    .line 397
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->W()Z

    .line 398
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/feed/comments/a/a;->ai:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    .line 407
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ak:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 411
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/EditText;)V

    .line 422
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->b()V

    .line 424
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 428
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    .line 431
    :cond_2
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 432
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 263
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 264
    return-void
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ah:Z

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    sget v0, Lcom/facebook/aw;->layout_comment_thread:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 291
    sget v0, Lcom/facebook/av;->layout_comment_thread_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    .line 293
    sget v0, Lcom/facebook/av;->layout_comment_thread_button_send:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    .line 295
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->Y()V

    .line 297
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/o;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 312
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/p;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    .line 320
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/q;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/q;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setBackButtonListener(Lcom/instagram/android/feed/comments/ui/a;)V

    .line 330
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    new-instance v2, Lcom/instagram/android/feed/comments/a/r;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/r;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setSimpleChangedLayoutListener(Lcom/instagram/android/feed/comments/ui/b;)V

    .line 337
    return-object v1
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    .line 191
    new-instance v0, Lcom/instagram/feed/comments/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/instagram/feed/comments/a/i;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;Lcom/instagram/feed/comments/a/g;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    .line 192
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_SPONSORED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ag:Z

    .line 193
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_ORGANIC"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ah:Z

    .line 194
    new-instance v0, Lcom/instagram/android/feed/e/k;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/k;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->am:Lcom/instagram/android/feed/e/k;

    .line 195
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/common/a/a/g;

    .line 197
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->aa:Lcom/instagram/common/a/a/g;

    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/a;->Z()Lcom/instagram/feed/a/h;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/comments/a/m;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/comments/a/m;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/feed/a/h;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 214
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->aj:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 217
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 218
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ac:Lcom/instagram/feed/comments/a/i;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 246
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 247
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 483
    sget v0, Lcom/facebook/az;->comments:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 484
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 485
    new-instance v0, Lcom/instagram/android/feed/comments/a/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/comments/a/e;-><init>(Lcom/instagram/android/feed/comments/a/a;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 491
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/feed/d/b;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 591
    new-instance v1, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/instagram/android/feed/comments/a/g;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/android/feed/comments/a/g;-><init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    .line 622
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->af:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 623
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-static {p1}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    .line 456
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V

    .line 457
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 583
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-static {p1, v0, p0}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 584
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 660
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/feed/d/b;)V

    .line 683
    :goto_0
    return-void

    .line 663
    :cond_0
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    .line 664
    new-instance v1, Lcom/instagram/android/feed/comments/a/h;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/comments/a/h;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    .line 677
    sget v2, Lcom/facebook/az;->comment_failed_to_post:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->try_again:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public final c(Lcom/instagram/feed/d/b;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/a;->d(Lcom/instagram/feed/d/b;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v0, "checkpoint_required"

    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p1}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->d(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CommentThreadFragment.IS_SELF_MEDIA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "self_comments"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "comments"

    goto :goto_0
.end method

.method public final k_()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/instagram/base/a/c;->k_()V

    .line 235
    return-void
.end method

.method public final l_()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/instagram/base/a/c;->l_()V

    .line 240
    return-void
.end method

.method public final m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-super {p0}, Lcom/instagram/base/a/c;->m_()V

    .line 252
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    .line 253
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->al:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 255
    iput-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ad:Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    .line 256
    iput-object v2, p0, Lcom/instagram/android/feed/comments/a/a;->ae:Landroid/widget/ImageView;

    .line 257
    return-void
.end method

.method public final n_()V
    .locals 4

    .prologue
    .line 522
    new-instance v0, Lcom/instagram/feed/comments/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/feed/comments/c/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;I)V

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/a;->ab:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/c/c;->a(Lcom/instagram/feed/d/l;)V

    .line 524
    return-void
.end method

.method public final o_()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/comments/a/a;->g(I)V

    .line 227
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    :cond_0
    return-void
.end method

.method public final p_()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/instagram/android/feed/comments/a/a;->ag:Z

    return v0
.end method
