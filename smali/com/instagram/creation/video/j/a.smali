.class public abstract Lcom/instagram/creation/video/j/a;
.super Lcom/instagram/creation/video/gl/z;
.source "AbstractFinalRenderController.java"

# interfaces
.implements Lcom/instagram/creation/video/j/b;


# instance fields
.field protected a:Z

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/instagram/creation/video/gl/j;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/z;-><init>(Lcom/instagram/creation/video/gl/j;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final G_()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->g()V

    .line 32
    return-void
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    .line 26
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    .line 27
    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->a()V

    .line 28
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/a;->a:Z

    .line 47
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
