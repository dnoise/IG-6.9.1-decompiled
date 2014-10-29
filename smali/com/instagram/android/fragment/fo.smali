.class public Lcom/instagram/android/fragment/fo;
.super Lcom/instagram/android/fragment/h;
.source "UserDetailFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/b/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/feed/a/n;",
        "Lcom/instagram/feed/a/i;",
        ">;",
        "Lcom/instagram/android/feed/a/b/ar;"
    }
.end annotation


# instance fields
.field protected ae:Lcom/instagram/user/c/a;

.field private final af:Lcom/instagram/android/fragment/fv;

.field private ag:Lcom/instagram/android/feed/c/a;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/instagram/android/c/a/z;

.field private al:I

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Lcom/instagram/user/follow/h;

.field private final ar:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/user/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final as:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/user/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private at:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    .line 74
    new-instance v0, Lcom/instagram/android/fragment/fv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/fv;-><init>(Lcom/instagram/android/fragment/fo;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->af:Lcom/instagram/android/fragment/fv;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->aj:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/instagram/android/fragment/fp;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fp;-><init>(Lcom/instagram/android/fragment/fo;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ar:Lcom/instagram/common/j/e;

    .line 115
    new-instance v0, Lcom/instagram/android/fragment/fq;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fq;-><init>(Lcom/instagram/android/fragment/fo;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->as:Lcom/instagram/common/j/e;

    .line 372
    new-instance v0, Lcom/instagram/android/fragment/ft;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ft;-><init>(Lcom/instagram/android/fragment/fo;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->at:Landroid/content/DialogInterface$OnClickListener;

    .line 525
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/instagram/android/fragment/fo;->al:I

    return p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fo;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fo;->am:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/instagram/android/fragment/fo;->ao:Z

    return p1
.end method

.method private aA()Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aB()V
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->aw()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->at:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 410
    return-void
.end method

.method private ax()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->aA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->aj:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-static {v1}, Lcom/instagram/android/i/b;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->aj:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ai:Ljava/lang/String;

    goto :goto_0
.end method

.method private az()Lcom/instagram/android/feed/a/n;
    .locals 6

    .prologue
    .line 269
    new-instance v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->Y()I

    move-result v2

    iget-boolean v3, p0, Lcom/instagram/android/fragment/fo;->ap:Z

    iget-object v4, p0, Lcom/instagram/android/fragment/fo;->aq:Lcom/instagram/user/follow/h;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/feed/a/n;-><init>(Lcom/instagram/android/fragment/a;IZLcom/instagram/user/follow/h;Lcom/instagram/android/feed/a/b/ar;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/fo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/fo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->aj:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->ax()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/fragment/fo;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/instagram/android/fragment/fo;->al:I

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/fo;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->aA()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->aB()V

    return-void
.end method

.method static synthetic h(Lcom/instagram/android/fragment/fo;)Lcom/instagram/android/feed/c/a;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ag:Lcom/instagram/android/feed/c/a;

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->F()V

    .line 196
    iget v0, p0, Lcom/instagram/android/fragment/fo;->al:I

    sget v1, Lcom/instagram/api/j/k;->d:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/fragment/fo;->am:Z

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fo;->am:Z

    .line 198
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->av()V

    .line 200
    :cond_1
    return-void
.end method

.method public H()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->af:Lcom/instagram/android/fragment/fv;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 186
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/g;

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ar:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->as:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 189
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->H()V

    .line 190
    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->az()Lcom/instagram/android/feed/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected final Y()I
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/instagram/m/c;->g:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fo;->ap:Z

    .line 144
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Lcom/instagram/android/feed/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ag:Lcom/instagram/android/feed/c/a;

    .line 146
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fo;->an:Z

    .line 150
    :cond_0
    sget-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    invoke-virtual {v0}, Lcom/instagram/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->aq:Lcom/instagram/user/follow/h;

    .line 152
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->at()V

    .line 153
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->ax()V

    .line 154
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->af:Lcom/instagram/android/fragment/fv;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 156
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/g;

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ar:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->as:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->av()V

    .line 160
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_0
.end method

.method public a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/activity/UrlHandlerActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 335
    :goto_0
    invoke-interface {v1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 338
    new-instance v0, Lcom/instagram/android/fragment/fr;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fr;-><init>(Lcom/instagram/android/fragment/fo;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 352
    :cond_0
    :goto_1
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/fragment/fs;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/fs;-><init>(Lcom/instagram/android/fragment/fo;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 365
    :cond_1
    return-void

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->am()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I

    move-result v1

    if-lez v1, :cond_3

    move-object v1, p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v1, p1

    goto :goto_0

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/z;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    const-string v0, "src"

    const-string v1, "profile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method protected final a(Lcom/instagram/common/l/a/e;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/feed/a/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/a/i;

    invoke-virtual {v0}, Lcom/instagram/feed/a/i;->k()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    const-string v1, "Not authorized to view user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final ak()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public final aq()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method protected as()V
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    .line 438
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 441
    :cond_0
    return-void
.end method

.method protected at()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    const-string v1, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ai:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ai:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v1, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ah:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ah:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->b(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User Detail Fragment started without user id or username"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final au()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final av()V
    .locals 6

    .prologue
    .line 217
    new-instance v0, Lcom/instagram/android/c/a/z;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/fw;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/fragment/fw;-><init>(Lcom/instagram/android/fragment/fo;B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/z;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/z;->a(Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fo;->c(Z)V

    .line 235
    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->ay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/z;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ah:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ak:Lcom/instagram/android/c/a/z;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/z;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final aw()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    sget v1, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget v1, Lcom/facebook/az;->copy_profile_url:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    sget v1, Lcom/facebook/az;->directshare_receive_direct_posts:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    sget v1, Lcom/facebook/az;->suggest_user:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fo;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/instagram/feed/a/h",
            "<",
            "Lcom/instagram/feed/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->au()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 241
    if-nez v1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/feed/a/m;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->af()Lcom/instagram/feed/f/a;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/instagram/feed/a/m;-><init>(Lcom/instagram/feed/f/a;ZLcom/instagram/user/c/a;)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/fragment/fo;->ao:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 478
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-static {v1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->load_more_private_user:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->geo_ip_blocked:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 492
    iget-object v1, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 493
    sget v1, Lcom/facebook/av;->geo_ip_blocked_extra_info:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 494
    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<a href=\"https://help.instagram.com/568747056560628\">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/az;->geo_ip_blocked_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    sget v1, Lcom/facebook/av;->geo_ip_blocked_help_center:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 502
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0
.end method

.method public final i()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 459
    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    if-nez v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-static {v2}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 465
    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->x()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 470
    goto :goto_0
.end method

.method public j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->aA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "self_profile"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "profile"

    goto :goto_0
.end method

.method public final w_()V
    .locals 3

    .prologue
    .line 449
    invoke-static {}, Lcom/instagram/o/f/d;->a()Lcom/instagram/o/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fo;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/fragment/fo;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public final x_()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/instagram/android/fragment/fo;->an:Z

    return v0
.end method
