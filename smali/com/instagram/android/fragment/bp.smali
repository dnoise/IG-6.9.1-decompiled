.class public Lcom/instagram/android/fragment/bp;
.super Lcom/instagram/ui/menu/e;
.source "FindFriendsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# static fields
.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private aa:Landroid/os/Handler;

.field private final ab:Lcom/instagram/android/fragment/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/instagram/android/fragment/bp;

    sput-object v0, Lcom/instagram/android/fragment/bp;->i:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/bp;->aa:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/instagram/android/fragment/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/bw;-><init>(Lcom/instagram/android/fragment/bp;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/bp;->ab:Lcom/instagram/android/fragment/bw;

    .line 104
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/android/fragment/bp;->aa:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/bv;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bv;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bp;)Lcom/instagram/android/fragment/bw;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/bp;->ab:Lcom/instagram/android/fragment/bw;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bp;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bp;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 168
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/bp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bp;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bp;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 172
    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/instagram/android/fragment/bp;->i:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/instagram/android/fragment/bp;->ab:Lcom/instagram/android/fragment/bw;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 145
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V

    .line 146
    return-void

    .line 134
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/bp;->V()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Lcom/instagram/ui/menu/f;

    sget v2, Lcom/facebook/az;->find_friends_item_from_my_contact_list:I

    new-instance v3, Lcom/instagram/android/fragment/bq;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bq;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bp;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/instagram/ui/menu/f;

    sget v2, Lcom/facebook/az;->find_friends_item_vkontakte_friends:I

    new-instance v3, Lcom/instagram/android/fragment/br;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/br;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    new-instance v1, Lcom/instagram/ui/menu/f;

    sget v2, Lcom/facebook/az;->find_friends_item_facebook_friends:I

    new-instance v3, Lcom/instagram/android/fragment/bs;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bs;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/instagram/ui/menu/f;

    sget v2, Lcom/facebook/az;->find_friends_item_suggested_users:I

    new-instance v3, Lcom/instagram/android/fragment/bt;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bt;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/instagram/ui/menu/f;

    sget v2, Lcom/facebook/az;->find_friends_follow_people:I

    new-instance v3, Lcom/instagram/android/fragment/bu;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bu;-><init>(Lcom/instagram/android/fragment/bp;)V

    invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/bp;->a(Ljava/util/Collection;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    sget v0, Lcom/facebook/az;->find_friends_menu_label:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 177
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bp;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "find_friends"

    return-object v0
.end method
