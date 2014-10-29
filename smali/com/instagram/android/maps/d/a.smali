.class public final Lcom/instagram/android/maps/d/a;
.super Lcom/instagram/base/a/c;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/feed/a/b/v;
.implements Lcom/instagram/base/a/e;


# static fields
.field private static ac:Ljava/lang/Integer;

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected aa:Lcom/instagram/android/maps/a/a;

.field ab:Landroid/os/Handler;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private final ae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/instagram/android/maps/e/d;

.field private ag:Lcom/instagram/android/maps/e/d;

.field private ah:Z

.field private ai:Landroid/content/BroadcastReceiver;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    .line 54
    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    .line 63
    new-instance v0, Lcom/instagram/android/maps/d/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/b;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    .line 84
    new-instance v0, Lcom/instagram/android/maps/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/d;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/instagram/android/maps/d/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/e;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/j/d;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ab:Landroid/os/Handler;

    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Z)V

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    .line 130
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->c(Ljava/util/Collection;)V

    .line 132
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    goto :goto_0
.end method

.method private declared-synchronized W()V
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 162
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private X()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    if-nez v0, :cond_1

    .line 331
    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 332
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->e()Z

    .line 336
    :cond_0
    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    sget v0, Lcom/facebook/av;->layout_geogrid_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    sget v0, Lcom/facebook/av;->layout_geogrid_button_select_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    sget v0, Lcom/facebook/av;->layout_geogrid_button_unselect_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    return-void

    .line 241
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    .line 242
    goto :goto_1

    :cond_2
    move v2, v1

    .line 243
    goto :goto_2
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->W()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/support/v4/app/s;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;",
            "Landroid/support/v4/app/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    sget-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    .line 356
    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    sget-object v1, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 358
    const-string v1, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    sget-object v2, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/maps/d/a;

    invoke-direct {v2}, Lcom/instagram/android/maps/d/a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 363
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->V()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/maps/d/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/maps/d/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->W()V

    .line 181
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 182
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 320
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 326
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 327
    return-void
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    .line 307
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 309
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 310
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ab:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/d/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/f;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget v0, Lcom/facebook/aw;->layout_geogrid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    sget v1, Lcom/facebook/av;->layout_geogrid_button_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/d/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/g;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    sget v1, Lcom/facebook/av;->layout_geogrid_button_unselect_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/d/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/h;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/instagram/android/maps/d/a;->a(Landroid/view/View;)V

    .line 219
    new-instance v1, Lcom/instagram/android/maps/d/i;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/maps/d/i;-><init>(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V

    iput-object v1, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    .line 228
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v2, Lcom/instagram/feed/d/t;

    iget-object v3, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    .line 146
    iget-object v3, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/android/g/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/a/a;->a(Ljava/util/List;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/d/a;->a(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    .line 155
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    .line 156
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/ax;->x_photos:I

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 263
    :goto_0
    if-eqz v2, :cond_3

    .line 264
    new-instance v2, Lcom/instagram/android/maps/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v4

    sget v5, Lcom/instagram/android/maps/e/f;->a:I

    invoke-direct {v2, v4, v5}, Lcom/instagram/android/maps/c/a;-><init>(Landroid/support/v4/app/k;I)V

    invoke-interface {p1, v3, v2}, Lcom/instagram/a/b;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v2

    .line 266
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/e/a;->g()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 258
    goto :goto_0

    :cond_2
    move v0, v1

    .line 266
    goto :goto_1

    .line 268
    :cond_3
    invoke-interface {p1, v3}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 269
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 272
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    new-instance v1, Lcom/instagram/android/maps/d/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/j;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/i;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_2
.end method

.method public final a(Lcom/instagram/feed/d/ai;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/ai;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/ai;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video_thumbnail"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 347
    return-void

    .line 343
    :cond_0
    const-string v0, "photo_thumbnail"

    goto :goto_0
.end method

.method protected final d()Lcom/instagram/android/maps/a/a;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/instagram/android/maps/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/maps/a/a;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, "feed_geomedia"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    .line 237
    invoke-super {p0}, Lcom/instagram/base/a/c;->m_()V

    .line 238
    return-void
.end method

.method public final s_()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method
