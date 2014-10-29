.class public final Lcom/instagram/android/directshare/d/ad;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/an;

.field private final c:Lcom/instagram/android/feed/c/a;

.field private final d:Lcom/instagram/feed/d/l;

.field private e:Landroid/app/Dialog;

.field private f:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->b:Landroid/support/v4/app/an;

    .line 39
    new-instance v0, Lcom/instagram/android/feed/c/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ad;->b:Landroid/support/v4/app/an;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->c:Lcom/instagram/android/feed/c/a;

    .line 40
    iput-object p2, p0, Lcom/instagram/android/directshare/d/ad;->d:Lcom/instagram/feed/d/l;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/d/ad;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->f:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->directshare_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->f:[Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->f:[Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->f:[Ljava/lang/CharSequence;

    return-object v0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v3, Lcom/facebook/az;->directshare_hide:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->directshare_ignore_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/directshare/d/ad;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/ad;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/instagram/android/directshare/d/af;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/af;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    .line 113
    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->directshare_delete_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_delete_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_delete:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 120
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/instagram/android/directshare/d/ag;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/d/ag;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    .line 131
    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->directshare_hide_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_hide_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_hide:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/directshare/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/ad;->c()V

    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 141
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_title:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/directshare/d/ad;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v4}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/directshare/d/ad;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v4}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore:I

    new-instance v2, Lcom/instagram/android/directshare/d/ah;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/d/ah;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 168
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/directshare/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/ad;->d()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->d:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/android/feed/c/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->c:Lcom/instagram/android/feed/c/a;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/directshare/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/ad;->e()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/directshare/d/ad;)Landroid/support/v4/app/an;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->b:Landroid/support/v4/app/an;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ad;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/ad;->b()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/directshare/d/ai;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/directshare/d/ai;-><init>(Lcom/instagram/android/directshare/d/ad;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/ad;->e:Landroid/app/Dialog;

    .line 73
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->e:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/directshare/d/ae;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/ae;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ad;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 81
    return-void
.end method
