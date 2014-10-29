.class public Lcom/instagram/creation/video/j/f;
.super Lcom/instagram/creation/video/j/g;
.source "FullRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:Lcom/instagram/creation/video/e/c;

.field protected b:Lcom/instagram/creation/video/e/c;

.field protected c:Z

.field protected d:Lcom/instagram/creation/video/gl/i;

.field protected e:Lcom/instagram/creation/video/gl/i;

.field protected f:Lcom/instagram/creation/video/j/l;

.field protected g:Lcom/instagram/creation/video/j/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/creation/video/j/g;-><init>()V

    .line 29
    invoke-static {}, Lcom/instagram/creation/video/e/e;->b()Lcom/instagram/creation/video/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;

    .line 30
    invoke-static {}, Lcom/instagram/creation/video/e/e;->a()Lcom/instagram/creation/video/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/instagram/creation/video/j/g;->a(I)V

    .line 35
    new-instance v0, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;

    .line 36
    new-instance v0, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;

    .line 38
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I

    .line 39
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I

    .line 41
    invoke-static {}, Lcom/instagram/creation/video/e/e;->c()Lcom/instagram/creation/video/j/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;

    .line 42
    invoke-static {}, Lcom/instagram/creation/video/e/e;->d()Lcom/instagram/creation/video/j/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/f;->g:Lcom/instagram/creation/video/j/l;

    .line 43
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/e/c;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;

    .line 80
    return-void
.end method

.method protected final b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/f;->c:Z

    .line 76
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/gl/i;->a(I)V

    .line 47
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/gl/i;->a(I)V

    .line 48
    return-void
.end method

.method protected final c(Lcom/instagram/creation/video/gl/g;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x8d40

    .line 57
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v0

    .line 59
    iget-boolean v1, p0, Lcom/instagram/creation/video/j/f;->c:Z

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->a()I

    move-result v1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 61
    iget-object v1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;

    iget-object v2, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    .line 62
    iget-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v0

    .line 65
    :cond_0
    invoke-interface {p1}, Lcom/instagram/creation/video/gl/g;->a()I

    move-result v1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 67
    iget-boolean v1, p0, Lcom/instagram/creation/video/j/f;->c:Z

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;

    iget-object v2, p0, Lcom/instagram/creation/video/j/f;->g:Lcom/instagram/creation/video/j/l;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;

    iget-object v2, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    goto :goto_0
.end method
