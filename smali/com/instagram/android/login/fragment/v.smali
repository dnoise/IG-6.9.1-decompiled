.class public final Lcom/instagram/android/login/fragment/v;
.super Lcom/instagram/base/a/b;
.source "PasswordResetFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field public final a:Lcom/instagram/api/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Landroid/view/View;

.field private final ab:Landroid/content/BroadcastReceiver;

.field public final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/instagram/common/a/a/k;

.field private e:Lcom/instagram/user/c/a;

.field private f:Z

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Lcom/instagram/android/login/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->c:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/instagram/android/login/fragment/w;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/w;-><init>(Lcom/instagram/android/login/fragment/v;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->ab:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/instagram/android/login/fragment/x;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/x;-><init>(Lcom/instagram/android/login/fragment/v;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->a:Lcom/instagram/api/j/f;

    .line 124
    new-instance v0, Lcom/instagram/android/login/fragment/y;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/y;-><init>(Lcom/instagram/android/login/fragment/v;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/user/c/a;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->e:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/v;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/android/login/fragment/v;->e:Lcom/instagram/user/c/a;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    sget v0, Lcom/facebook/av;->user_profile_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 114
    invoke-virtual {p2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 116
    sget v0, Lcom/facebook/av;->username_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iput-boolean v2, p0, Lcom/instagram/android/login/fragment/v;->f:Z

    .line 121
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/a/f;->b(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/v;Landroid/view/View;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/login/fragment/v;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/v;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/instagram/android/login/fragment/v;->f:Z

    return p1
.end method

.method private b()V
    .locals 8

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/o/e;->a(Ljava/lang/CharSequence;)V

    .line 181
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/instagram/p/b;->au:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 138
    iget-object v7, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/common/a/a/k;

    new-instance v0, Lcom/instagram/android/login/c/m;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->V()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->W()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/instagram/common/z/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/login/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/login/fragment/z;

    invoke-direct {v1, p0, p0}, Lcom/instagram/android/login/fragment/z;-><init>(Lcom/instagram/android/login/fragment/v;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/m;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/v;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->b()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/view/View;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_reset_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/v;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/android/login/d;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 254
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/v;->a(I)V

    .line 255
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/view/View;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/v;->a(I)V

    .line 265
    return-void
.end method

.method public final H()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/instagram/base/a/b;->H()V

    .line 294
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 295
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 190
    sget v0, Lcom/facebook/aw;->fragment_password_reset:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    sget v0, Lcom/facebook/av;->new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    .line 193
    sget v0, Lcom/facebook/av;->confirm_new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    .line 195
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 197
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 200
    new-instance v0, Lcom/instagram/android/login/d;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->o()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/login/d;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    .line 203
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    new-instance v2, Lcom/instagram/android/login/fragment/ab;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ab;-><init>(Lcom/instagram/android/login/fragment/v;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ac;-><init>(Lcom/instagram/android/login/fragment/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 233
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->e:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->e:Lcom/instagram/user/c/a;

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/login/fragment/v;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V

    .line 237
    :cond_0
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 270
    sget-object v0, Lcom/instagram/p/b;->at:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 272
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/common/a/a/k;

    .line 274
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/android/login/fragment/v;->f:Z

    .line 277
    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->e:Lcom/instagram/user/c/a;

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->ab:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ActivityInTab.BROADCAST_BACK_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 289
    return-void

    .line 279
    :cond_0
    new-instance v0, Lcom/instagram/android/c/a/z;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/login/fragment/v;->a:Lcom/instagram/api/j/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/z;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/z;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    sget v0, Lcom/facebook/az;->change_password:I

    iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->b:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    invoke-virtual {v1}, Lcom/instagram/android/login/d;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/v;->f:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 325
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "password_reset"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 243
    iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    .line 244
    iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->i:Lcom/instagram/android/login/d;

    .line 245
    iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->h:Landroid/widget/EditText;

    .line 246
    iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;

    .line 247
    return-void
.end method
