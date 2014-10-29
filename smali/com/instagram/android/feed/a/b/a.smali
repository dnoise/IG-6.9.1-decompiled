.class public Lcom/instagram/android/feed/a/b/a;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/android/feed/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/an;

.field private final d:Landroid/support/v4/app/s;

.field private final e:Lcom/instagram/android/feed/a/b/f;

.field private final f:Lcom/instagram/feed/g/a;

.field private final g:Lcom/instagram/android/fragment/ab;

.field private final h:Lcom/instagram/android/feed/a/b/m;

.field private final i:Lcom/instagram/android/feed/a/b/x;

.field private final j:Z

.field private final k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/instagram/android/feed/a/b/a;

    sput-object v0, Lcom/instagram/android/feed/a/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/fragment/a;Lcom/instagram/android/feed/a/b/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->z()Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;

    .line 67
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;

    .line 68
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;

    .line 69
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/a;->g:Lcom/instagram/android/fragment/ab;

    .line 70
    iput-object p2, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;

    .line 71
    new-instance v0, Lcom/instagram/android/feed/a/b/m;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/s;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;

    .line 73
    new-instance v0, Lcom/instagram/android/feed/a/b/x;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->i:Lcom/instagram/android/feed/a/b/x;

    .line 74
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->ao()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->j:Z

    .line 75
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->ap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->k:Z

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/b/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/g;
    .locals 2
    .parameter

    .prologue
    .line 233
    new-instance v1, Lcom/instagram/android/feed/a/b/g;

    invoke-direct {v1}, Lcom/instagram/android/feed/a/b/g;-><init>()V

    .line 234
    sget v0, Lcom/facebook/av;->row_feed_textview_comments:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->c:Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    .line 236
    sget v0, Lcom/facebook/av;->row_feed_textview_explore_attribution:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    .line 238
    sget v0, Lcom/facebook/av;->row_feed_textview_likes:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    .line 239
    sget v0, Lcom/facebook/av;->row_feedback_photo_profile_metalabel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->f:Landroid/view/ViewStub;

    .line 240
    sget v0, Lcom/facebook/av;->row_feed_button_like:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->i:Landroid/widget/ImageView;

    .line 241
    sget v0, Lcom/facebook/av;->row_feed_button_comment:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->j:Landroid/widget/ImageView;

    .line 242
    sget v0, Lcom/facebook/av;->row_feed_button_options:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/ui/MediaOptionsButton;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->k:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    .line 243
    sget v0, Lcom/facebook/av;->row_feed_view_group_buttons:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->h:Landroid/view/View;

    .line 244
    invoke-static {p0}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/r;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->a:Lcom/instagram/android/feed/a/b/r;

    .line 245
    invoke-static {p0}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    .line 246
    return-object v1
.end method

.method private a(Lcom/instagram/feed/d/l;)Z
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z

    if-nez v0, :cond_0

    .line 268
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z

    return v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/an;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/fragment/ab;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->g:Lcom/instagram/android/fragment/ab;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/s;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/feed/a/b/f;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    .prologue
    .line 219
    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/instagram/android/feed/a/b/a;->a:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "newView"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    sget v1, Lcom/facebook/aw;->row_feed_photo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/instagram/android/feed/a/b/a;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/g;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v2, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    iget-object v2, v2, Lcom/instagram/android/feed/a/b/ac;->a:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {}, Lcom/facebook/e/c/k;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/e/c/k;->a()V

    throw v0
.end method

.method public final a(Landroid/view/View;Lcom/instagram/feed/d/l;IZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/instagram/android/feed/a/b/g;

    .line 89
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;

    iget-object v2, v6, Lcom/instagram/android/feed/a/b/g;->a:Lcom/instagram/android/feed/a/b/r;

    invoke-direct {p0, p2}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/feed/d/l;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;Z)V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->i:Lcom/instagram/android/feed/a/b/x;

    iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V

    .line 96
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->j()I

    move-result v0

    if-lez v0, :cond_4

    .line 97
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/feed/d/w;->a(Landroid/content/Context;)Lcom/instagram/feed/d/w;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/feed/d/w;->a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 101
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_0
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->j:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/feed/d/w;->a(Landroid/content/Context;)Lcom/instagram/feed/d/w;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/feed/d/w;->b(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_1
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->s()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    .line 117
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/feed/d/w;->a(Landroid/content/Context;)Lcom/instagram/feed/d/w;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/feed/d/w;->e(Lcom/instagram/feed/d/l;)Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->setTextLayout(Landroid/text/Layout;)V

    .line 120
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    invoke-virtual {v0, v7}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->setVisibility(I)V

    .line 125
    :goto_2
    invoke-direct {p0, p2}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    .line 129
    :cond_0
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 131
    :cond_1
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_3
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_2
    :goto_4
    iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->i:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/facebook/au;->feed_button_like_background_liked:I

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/feed/a/b/b;

    invoke-direct {v1, p0, p2, p3}, Lcom/instagram/android/feed/a/b/b;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/feed/a/b/c;

    invoke-direct {v1, p0, p2, p3}, Lcom/instagram/android/feed/a/b/c;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->k:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    new-instance v1, Lcom/instagram/android/feed/a/b/d;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/instagram/android/feed/a/b/d;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->k:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    iget-object v1, v1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setEnabled(Z)V

    .line 199
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->k:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    iget-object v1, v1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setClickable(Z)V

    .line 202
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_a

    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_a

    const/4 v0, 0x1

    move v1, v0

    .line 204
    :goto_6
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v7, v1

    :cond_3
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    new-instance v1, Lcom/instagram/android/feed/a/b/e;

    invoke-direct {v1, p0, v6}, Lcom/instagram/android/feed/a/b/e;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/android/feed/a/b/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->a(Lcom/instagram/feed/widget/e;)V

    .line 216
    return-void

    .line 103
    :cond_4
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 122
    :cond_6
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Lcom/instagram/ui/widget/textview/IgTextLayoutView;

    invoke-virtual {v0, v8}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->setVisibility(I)V

    goto/16 :goto_2

    .line 134
    :cond_7
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/instagram/o/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 143
    :cond_8
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 147
    :cond_9
    sget v0, Lcom/facebook/au;->feed_button_like_background:I

    goto/16 :goto_5

    :cond_a
    move v1, v7

    .line 202
    goto :goto_6
.end method

.method public final a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;

    invoke-direct {p0, p2}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/feed/d/l;)Z

    move-result v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;Z)V

    .line 254
    return-void
.end method
