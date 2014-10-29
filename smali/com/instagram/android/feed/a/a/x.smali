.class public final Lcom/instagram/android/feed/a/a/x;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/s;

.field private final d:Landroid/support/v4/app/an;

.field private final e:Lcom/instagram/feed/g/a;

.field private final f:Lcom/instagram/android/feed/a/a;

.field private final g:Landroid/view/View;

.field private final h:Lcom/instagram/feed/d/l;

.field private final i:I

.field private final j:Lcom/instagram/common/a/a/k;

.field private final k:Lcom/instagram/common/a/a/g;

.field private l:Landroid/app/Dialog;

.field private m:[Ljava/lang/CharSequence;

.field private final n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/android/feed/a/a;Landroid/view/View;Lcom/instagram/feed/d/l;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->j:Lcom/instagram/common/a/a/k;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->m:[Ljava/lang/CharSequence;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->n:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/x;->a:Landroid/support/v4/app/Fragment;

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->c:Landroid/support/v4/app/s;

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->d:Landroid/support/v4/app/an;

    .line 82
    iput-object p2, p0, Lcom/instagram/android/feed/a/a/x;->e:Lcom/instagram/feed/g/a;

    .line 83
    iput-object p3, p0, Lcom/instagram/android/feed/a/a/x;->f:Lcom/instagram/android/feed/a/a;

    .line 84
    iput-object p5, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    .line 85
    iput-object p4, p0, Lcom/instagram/android/feed/a/a/x;->g:Landroid/view/View;

    .line 86
    iput p6, p0, Lcom/instagram/android/feed/a/a/x;->i:I

    .line 87
    new-instance v0, Lcom/instagram/common/a/a/g;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->d:Landroid/support/v4/app/an;

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->k:Lcom/instagram/common/a/a/g;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/x;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->m:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->e:Lcom/instagram/feed/g/a;

    invoke-static {v2, v3}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    sget v2, Lcom/facebook/az;->starred_hide_this:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget v2, Lcom/facebook/az;->learn_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->m:[Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->m:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->m:[Ljava/lang/CharSequence;

    return-object v0

    .line 99
    :cond_2
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    .line 101
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    sget v3, Lcom/facebook/az;->share:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget v3, Lcom/facebook/az;->delete_media:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v3

    sget-object v4, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v3, v4, :cond_3

    .line 106
    sget v3, Lcom/facebook/az;->add_people:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->c()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    if-ne v3, v4, :cond_5

    .line 119
    :cond_4
    sget v3, Lcom/facebook/az;->copy_share_url:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_5
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    sget v2, Lcom/facebook/az;->flag_reason_remove_from_popular:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_6
    sget v3, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/user/c/a;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    sget v3, Lcom/facebook/az;->photo_options:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/x;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/facebook/az;->share_url_has_been_copied:I

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    return-void

    .line 352
    :cond_0
    sget v0, Lcom/facebook/az;->video_share_url_has_been_copied:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/common/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->j:Lcom/instagram/common/a/a/k;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/s;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->c:Landroid/support/v4/app/s;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/feed/a/a/x;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/instagram/android/feed/a/a/x;->i:I

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/g/a;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->e:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/an;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->d:Landroid/support/v4/app/an;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/common/a/a/g;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->k:Lcom/instagram/common/a/a/g;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/android/feed/a/a;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->f:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/android/feed/a/a/x;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/feed/a/a/x;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/instagram/android/feed/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 134
    const-string v0, "action_menu"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->h:Lcom/instagram/feed/d/l;

    iget v2, p0, Lcom/instagram/android/feed/a/a/x;->i:I

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->e:Lcom/instagram/feed/g/a;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 140
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/x;->b()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/a/a/aa;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/feed/a/a/aa;-><init>(Lcom/instagram/android/feed/a/a/x;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/x;->l:Landroid/app/Dialog;

    .line 145
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->l:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/feed/a/a/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/y;-><init>(Lcom/instagram/android/feed/a/a/x;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 152
    return-void
.end method
