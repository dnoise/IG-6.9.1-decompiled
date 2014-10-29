.class final enum Lcom/instagram/android/widget/y;
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
    const/4 v2, 0x0

    .line 32
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/widget/x;-><init>(Ljava/lang/String;IILjava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    .line 58
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-interface {p1, p2}, Lcom/instagram/model/a/b;->b(Z)V

    .line 47
    return-void
.end method

.method public final a(Lcom/instagram/model/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/instagram/model/a/b;->s()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 52
    return-void
.end method
