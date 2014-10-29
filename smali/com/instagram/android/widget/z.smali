.class final enum Lcom/instagram/android/widget/z;
.super Lcom/instagram/android/widget/x;
.source "SharingAccount.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/widget/x;-><init>(Ljava/lang/String;IILjava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {p1}, Lcom/instagram/android/activity/TwitterAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 86
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-interface {p1, p2}, Lcom/instagram/model/a/b;->a(Z)V

    .line 76
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/instagram/model/a/b;->q()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/instagram/share/f/a;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/share/f/a;->a(Z)V

    .line 81
    return-void
.end method
