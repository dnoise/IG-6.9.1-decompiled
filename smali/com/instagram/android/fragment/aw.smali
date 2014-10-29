.class public Lcom/instagram/android/fragment/aw;
.super Lcom/instagram/ui/menu/e;
.source "FacebookAdvancedOptionsFragment.java"

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
.field private aa:Lcom/instagram/android/c/b/e;

.field private final ab:Lcom/instagram/android/fragment/bb;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/share/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Lcom/instagram/common/a/a/k;

.field private ae:Z

.field private af:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/instagram/android/fragment/aw;

    sput-object v0, Lcom/instagram/android/fragment/aw;->i:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    .line 50
    new-instance v0, Lcom/instagram/android/fragment/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/bb;-><init>(Lcom/instagram/android/fragment/aw;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/aw;->ab:Lcom/instagram/android/fragment/bb;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/aw;->ac:Ljava/util/List;

    .line 208
    return-void
.end method

.method private V()V
    .locals 5

    .prologue
    .line 102
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aw;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->x_problems:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/facebook/az;->facebook:I

    invoke-virtual {p0, v4}, Lcom/instagram/android/fragment/aw;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/fragment/aw;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method

.method private W()V
    .locals 6

    .prologue
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v2, Lcom/facebook/az;->share_photos_to:I

    invoke-direct {v0, v2}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v0, Lcom/instagram/ui/menu/h;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aw;->o()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/az;->share_photos_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/instagram/ui/menu/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/share/b/h;

    .line 135
    new-instance v4, Lcom/instagram/ui/menu/h;

    invoke-virtual {v0}, Lcom/instagram/share/b/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/instagram/share/b/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/instagram/ui/menu/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/instagram/ui/menu/g;

    invoke-static {}, Lcom/instagram/share/b/a;->i()Lcom/instagram/share/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/share/b/h;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/fragment/ay;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/ay;-><init>(Lcom/instagram/android/fragment/aw;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/ui/menu/g;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/instagram/ui/menu/a;

    sget v2, Lcom/facebook/az;->unlink:I

    new-instance v3, Lcom/instagram/android/fragment/az;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/az;-><init>(Lcom/instagram/android/fragment/aw;)V

    invoke-direct {v0, v2, v3}, Lcom/instagram/ui/menu/a;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/aw;->a(Ljava/util/Collection;)V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/aw;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/fragment/aw;->ac:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/aw;->W()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/aw;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/instagram/android/fragment/aw;->ae:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/aw;->V()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/aw;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->ac:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/aw;)Lcom/instagram/android/c/b/e;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->aa:Lcom/instagram/android/c/b/e;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/instagram/android/fragment/aw;->i:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/aw;)Lcom/instagram/common/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->ad:Lcom/instagram/common/a/a/k;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 203
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lcom/instagram/share/b/a;->i()Lcom/instagram/share/b/h;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/instagram/share/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/instagram/android/fragment/aw;->ac:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/aw;->W()V

    .line 72
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aw;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/aw;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/aw;->ad:Lcom/instagram/common/a/a/k;

    .line 74
    new-instance v0, Lcom/instagram/android/c/b/e;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/c/b/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/aw;->aa:Lcom/instagram/android/c/b/e;

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->aa:Lcom/instagram/android/c/b/e;

    new-instance v1, Lcom/instagram/android/fragment/ax;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ax;-><init>(Lcom/instagram/android/fragment/aw;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/b/e;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 99
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 112
    sget v0, Lcom/facebook/az;->x_options:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Facebook"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/aw;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1, v4}, Lcom/instagram/a/b;->a(Z)V

    .line 114
    iget-boolean v0, p0, Lcom/instagram/android/fragment/aw;->ae:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 115
    iget-boolean v0, p0, Lcom/instagram/android/fragment/aw;->ae:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 116
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "facebook_advanced_options"

    return-object v0
.end method

.method public final k_()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/instagram/ui/menu/e;->k_()V

    .line 188
    invoke-static {}, Lcom/instagram/share/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/instagram/android/fragment/aw;->ad:Lcom/instagram/common/a/a/k;

    iget-object v1, p0, Lcom/instagram/android/fragment/aw;->aa:Lcom/instagram/android/c/b/e;

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/fragment/aw;->af:Z

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/aw;->af:Z

    .line 192
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/share/b/g;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/aw;->ab:Lcom/instagram/android/fragment/bb;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method
