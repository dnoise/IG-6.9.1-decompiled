.class public final Lcom/instagram/feed/comments/a/a;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"


# instance fields
.field private final a:Lcom/instagram/feed/comments/a/g;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/comments/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/instagram/feed/comments/a/a;->a:Lcom/instagram/feed/comments/a/g;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_comment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Landroid/view/View;)V

    .line 146
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/feed/comments/a/a;->a:Lcom/instagram/feed/comments/a/g;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v1, Lcom/instagram/feed/comments/a/h;

    invoke-direct {v1}, Lcom/instagram/feed/comments/a/h;-><init>()V

    .line 133
    iput-object p0, v1, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    .line 134
    sget v0, Lcom/facebook/av;->row_comment_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 135
    sget v0, Lcom/facebook/av;->row_comment_textview_comment:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/facebook/av;->row_comment_textview_time_ago:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->d:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/facebook/av;->row_comment_button_action:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;

    .line 138
    sget v0, Lcom/facebook/av;->row_comment_progressbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;

    .line 139
    sget v0, Lcom/facebook/av;->row_caption_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->g:Landroid/view/View;

    .line 140
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_caption_comment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Landroid/view/View;)V

    .line 153
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 41
    iget-object v3, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    if-eqz p4, :cond_1

    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-static {v3, v0}, Lcom/instagram/common/y/f;->a(Landroid/view/View;I)V

    .line 45
    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->i()I

    move-result v0

    sget v3, Lcom/instagram/feed/d/d;->b:I

    if-ne v0, v3, :cond_0

    .line 46
    iget-object v3, p2, Lcom/instagram/feed/comments/a/h;->g:Landroid/view/View;

    if-eqz p4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 50
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v3, Lcom/instagram/feed/comments/a/b;

    invoke-direct {v3, p0, p3}, Lcom/instagram/feed/comments/a/b;-><init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v3, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;

    if-ne v0, v3, :cond_3

    .line 58
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;

    sget v3, Lcom/facebook/az;->failed:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 60
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;

    new-instance v3, Lcom/instagram/feed/comments/a/c;

    invoke-direct {v3, p0, p3}, Lcom/instagram/feed/comments/a/c;-><init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :goto_2
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->d:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Lcom/instagram/feed/d/b;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p3}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v3, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;

    if-ne v0, v3, :cond_4

    .line 75
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :goto_3
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 82
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    new-instance v1, Lcom/instagram/feed/comments/a/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/instagram/feed/comments/a/d;-><init>(Lcom/instagram/feed/comments/a/a;Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    return-void

    .line 41
    :cond_1
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto :goto_1

    .line 67
    :cond_3
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_4
    iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3
.end method
