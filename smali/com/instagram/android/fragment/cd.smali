.class public final Lcom/instagram/android/fragment/cd;
.super Lcom/instagram/android/fragment/ey;
.source "FollowDestinationFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/a/b/f;


# instance fields
.field private ac:Lcom/instagram/android/widget/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public final W()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final X()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final Y()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected final Z()Lcom/instagram/android/a/m;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/fragment/cd;->i:Lcom/instagram/android/a/m;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/instagram/android/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/a/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->z()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/a/n;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(I)Lcom/instagram/android/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/cd;->aa:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/android/a/n;->a(Lcom/instagram/android/a/b/f;)Lcom/instagram/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/n;->e()Lcom/instagram/android/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/cd;->i:Lcom/instagram/android/a/m;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cd;->i:Lcom/instagram/android/a/m;

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/instagram/android/fragment/cd;->ac:Lcom/instagram/android/widget/e;

    invoke-virtual {v1}, Lcom/instagram/android/widget/e;->d()Lcom/instagram/android/widget/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 71
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f99
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ey;->a(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/instagram/android/widget/e;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->Z()Lcom/instagram/android/a/m;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/widget/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cd;->ac:Lcom/instagram/android/widget/e;

    .line 31
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cd;->aa()V

    .line 32
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    sget v0, Lcom/facebook/az;->people:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 81
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 82
    new-instance v0, Lcom/instagram/android/fragment/ce;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ce;-><init>(Lcom/instagram/android/fragment/cd;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public final b()Lcom/instagram/android/widget/e;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/fragment/cd;->ac:Lcom/instagram/android/widget/e;

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "follow_destination"

    return-object v0
.end method
