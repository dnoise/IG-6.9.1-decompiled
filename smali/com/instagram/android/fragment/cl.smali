.class public final Lcom/instagram/android/fragment/cl;
.super Lcom/instagram/ui/menu/e;
.source "LinkedAccountsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# instance fields
.field private i:Lcom/instagram/android/fragment/co;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    .line 33
    new-instance v0, Lcom/instagram/android/fragment/co;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/co;-><init>(Lcom/instagram/android/fragment/cl;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cl;->i:Lcom/instagram/android/fragment/co;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cl;)Lcom/instagram/android/fragment/co;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/fragment/cl;->i:Lcom/instagram/android/fragment/co;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/instagram/android/widget/x;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cl;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->unlink_account:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/cl;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cl;->n()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unlink:I

    new-instance v2, Lcom/instagram/android/fragment/cn;

    invoke-direct {v2, p0, p2, p1}, Lcom/instagram/android/fragment/cn;-><init>(Lcom/instagram/android/fragment/cl;Lcom/instagram/android/widget/x;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cl;Landroid/view/View;Lcom/instagram/android/widget/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/cl;->a(Landroid/view/View;Lcom/instagram/android/widget/x;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cl;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/cl;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/cl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/cl;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cl;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/widget/x;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    .line 75
    new-instance v3, Lcom/instagram/ui/menu/b;

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z

    move-result v6

    new-instance v7, Lcom/instagram/android/fragment/cm;

    invoke-direct {v7, p0, v0}, Lcom/instagram/android/fragment/cm;-><init>(Lcom/instagram/android/fragment/cl;Lcom/instagram/android/widget/x;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/instagram/ui/menu/b;-><init>(IIZLandroid/view/View$OnClickListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/instagram/ui/menu/e;->F()V

    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/cl;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cl;->a(Ljava/util/Collection;)V

    .line 39
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/instagram/android/fragment/cl;->i:Lcom/instagram/android/fragment/co;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 58
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x7f99
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/instagram/ui/menu/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    sget v0, Lcom/facebook/az;->linked_accounts:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 68
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 69
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "sharing_settings"

    return-object v0
.end method
