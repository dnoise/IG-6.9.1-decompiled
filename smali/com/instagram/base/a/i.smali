.class public abstract Lcom/instagram/base/a/i;
.super Lcom/instagram/base/a/b;
.source "ViewSwitcherFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/base/a/e;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 42
    return-void
.end method

.method private W()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/instagram/base/a/i;->d()Lcom/instagram/base/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/base/a/j;->c()V

    .line 32
    return-void
.end method


# virtual methods
.method public final V()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/instagram/base/a/i;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/instagram/base/a/i;->a:I

    .line 39
    invoke-virtual {p0}, Lcom/instagram/base/a/i;->d()Lcom/instagram/base/a/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/base/a/j;->b(I)V

    .line 40
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/instagram/base/a/i;->c()I

    move-result v0

    iput v0, p0, Lcom/instagram/base/a/i;->a:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/instagram/base/a/i;->b(Landroid/view/View;)V

    .line 25
    invoke-direct {p0}, Lcom/instagram/base/a/i;->W()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/instagram/base/a/i;->a(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/instagram/base/a/i;->d()Lcom/instagram/base/a/j;

    move-result-object v0

    iget v1, p0, Lcom/instagram/base/a/i;->a:I

    invoke-interface {v0, v1}, Lcom/instagram/base/a/j;->a(I)V

    .line 28
    return-void
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method protected abstract c()I
.end method

.method public abstract d()Lcom/instagram/base/a/j;
.end method
