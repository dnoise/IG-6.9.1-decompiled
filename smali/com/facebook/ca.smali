.class public final Lcom/facebook/ca;
.super Lcom/facebook/bu;
.source "Session.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Lcom/facebook/bu;-><init>(Landroid/app/Activity;)V

    .line 1743
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Lcom/facebook/bu;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1752
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/cf;)Lcom/facebook/bu;
    .locals 1
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Lcom/facebook/cf;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/facebook/cg;)Lcom/facebook/bu;
    .locals 1
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Lcom/facebook/cg;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/List;)Lcom/facebook/bu;
    .locals 1
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Ljava/util/List;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/cf;)Lcom/facebook/ca;
    .locals 0
    .parameter

    .prologue
    .line 1815
    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Lcom/facebook/cf;)Lcom/facebook/bu;

    .line 1816
    return-object p0
.end method

.method public final b(Lcom/facebook/cg;)Lcom/facebook/ca;
    .locals 0
    .parameter

    .prologue
    .line 1775
    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Lcom/facebook/cg;)Lcom/facebook/bu;

    .line 1776
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/ca;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ca;"
        }
    .end annotation

    .prologue
    .line 1802
    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Ljava/util/List;)Lcom/facebook/bu;

    .line 1803
    return-object p0
.end method
