.class final enum Lcom/instagram/android/widget/aa;
.super Lcom/instagram/android/widget/x;
.source "SharingAccount.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/widget/x;-><init>(Ljava/lang/String;IILjava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 118
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-interface {p1, p2}, Lcom/instagram/model/a/b;->c(Z)V

    .line 108
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/instagram/model/a/b;->t()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/instagram/share/d/a;->b()V

    .line 113
    return-void
.end method
