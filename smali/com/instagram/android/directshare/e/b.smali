.class public final Lcom/instagram/android/directshare/e/b;
.super Lcom/instagram/base/a/b;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/user/e/a/a/e;


# instance fields
.field private a:Lcom/instagram/android/directshare/e/a;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/instagram/user/follow/h;

.field private e:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/android/c2dm/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/instagram/android/directshare/e/o;

.field private g:Lcom/instagram/android/directshare/e/m;

.field private h:Lcom/instagram/common/d/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 63
    new-instance v0, Lcom/instagram/android/directshare/e/o;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/e/o;-><init>(Lcom/instagram/android/directshare/e/b;B)V

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/o;

    .line 64
    new-instance v0, Lcom/instagram/android/directshare/e/m;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/e/m;-><init>(Lcom/instagram/android/directshare/e/b;B)V

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->g:Lcom/instagram/android/directshare/e/m;

    .line 332
    return-void
.end method

.method private V()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 298
    sget v0, Lcom/facebook/az;->directshare_requested_direct_shares_ignore_all_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/e/b;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 302
    new-instance v2, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/instagram/android/directshare/e/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/directshare/e/h;-><init>(Lcom/instagram/android/directshare/e/b;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1, v3}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 314
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    .line 411
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_all_msg:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_all_positive:I

    new-instance v2, Lcom/instagram/android/directshare/e/j;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/e/j;-><init>(Lcom/instagram/android/directshare/e/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 427
    return-void
.end method

.method private X()V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 436
    return-void
.end method

.method private Y()V
    .locals 7

    .prologue
    .line 439
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ax;->directshare_requested_direct_shares_header:I

    iget-object v3, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v3}, Lcom/instagram/android/directshare/e/a;->getCount()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v6}, Lcom/instagram/android/directshare/e/a;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->c()V

    return-void
.end method

.method private a(Lcom/instagram/f/c/a;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 384
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_title:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/directshare/e/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_msg:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/directshare/e/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore:I

    new-instance v2, Lcom/instagram/android/directshare/e/i;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/directshare/e/i;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 408
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/directshare/e/b;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/directshare/e/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/f;-><init>(Lcom/instagram/android/directshare/e/b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->a()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->d()V

    .line 219
    iget-object v1, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/e/a;->a(Ljava/util/List;)V

    .line 220
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->Y()V

    .line 221
    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 222
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->b()V

    .line 223
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->V()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 230
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 232
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->W()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/directshare/e/b;)Lcom/instagram/android/directshare/e/a;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->Y()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->X()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 5

    .prologue
    .line 169
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 170
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/instagram/f/a/a/m;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/directshare/e/n;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/directshare/e/n;-><init>(Lcom/instagram/android/directshare/e/b;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/m;->g()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->d()V

    .line 178
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 179
    return-void
.end method

.method public final G()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 237
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 239
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 130
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 132
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/f/c/a;

    .line 184
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 186
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 256
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "INTENT_ACTION_PENDING_REQUESTS_UPDATED"

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->g:Lcom/instagram/android/directshare/e/m;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->h:Lcom/instagram/common/d/h;

    .line 260
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->h:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 261
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;

    .line 101
    sget-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->d:Lcom/instagram/user/follow/h;

    .line 103
    new-instance v0, Lcom/instagram/android/directshare/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->d:Lcom/instagram/user/follow/h;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/directshare/e/a;-><init>(Landroid/content/Context;Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/follow/h;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    .line 104
    new-instance v0, Lcom/instagram/android/directshare/e/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/e/c;-><init>(Lcom/instagram/android/directshare/e/b;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/j/e;

    .line 125
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 145
    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->row_requested_direct_share_footer:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 153
    sget v1, Lcom/facebook/av;->requested_direct_share_header_text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/directshare/e/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/e;-><init>(Lcom/instagram/android/directshare/e/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 285
    sget v0, Lcom/facebook/az;->directshare_requested_direct_shares_title:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 287
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 288
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/directshare/e/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/g;-><init>(Lcom/instagram/android/directshare/e/b;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 295
    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/f/c/a;

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/e/b;->a(Lcom/instagram/f/c/a;)V

    .line 191
    return-void
.end method

.method public final g(I)V
    .locals 6
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/f/c/a;

    .line 196
    new-instance v1, Lcom/instagram/f/a/a/c;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->z()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/directshare/e/k;

    sget-object v5, Lcom/instagram/android/directshare/e/l;->b:Lcom/instagram/android/directshare/e/l;

    invoke-direct {v4, p0, v0, v5}, Lcom/instagram/android/directshare/e/k;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/l;)V

    invoke-virtual {v0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/f/a/a/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/instagram/f/a/a/c;->g()V

    .line 202
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/a/a;->a(Lcom/instagram/f/c/a;Z)V

    .line 203
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "direct_share_requests"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;

    .line 251
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 244
    iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->h:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 245
    return-void
.end method
