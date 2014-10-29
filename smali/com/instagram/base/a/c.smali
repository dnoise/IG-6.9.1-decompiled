.class public abstract Lcom/instagram/base/a/c;
.super Landroid/support/v4/app/ak;
.source "IgListFragment.java"

# interfaces
.implements Lcom/instagram/common/analytics/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Landroid/support/v4/app/ak;->F()V

    .line 19
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;)V

    .line 20
    return-void
.end method
