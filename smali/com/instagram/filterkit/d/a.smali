.class final Lcom/instagram/filterkit/d/a;
.super Ljava/lang/Object;
.source "FramebufferTexture.java"

# interfaces
.implements Lcom/instagram/filterkit/e/b;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x8d40

    const/16 v2, 0x1908

    const/4 v4, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/instagram/filterkit/d/a;->a:I

    .line 28
    iput p2, p0, Lcom/instagram/filterkit/d/a;->b:I

    .line 29
    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->b(I)I

    move-result v3

    iput v3, p0, Lcom/instagram/filterkit/d/a;->c:I

    .line 30
    new-array v3, v4, [I

    .line 31
    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 32
    aget v3, v3, v1

    iput v3, p0, Lcom/instagram/filterkit/d/a;->d:I

    .line 33
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 34
    iget v2, p0, Lcom/instagram/filterkit/d/a;->d:I

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 35
    const v2, 0x8ce0

    iget v3, p0, Lcom/instagram/filterkit/d/a;->c:I

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 36
    invoke-static {v1, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/instagram/filterkit/d/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p2, p2}, Lcom/instagram/filterkit/d/a;-><init>(II)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/instagram/filterkit/d/a;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/instagram/filterkit/d/a;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/instagram/filterkit/d/a;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/instagram/filterkit/d/a;->b:I

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v3, [I

    iget v1, p0, Lcom/instagram/filterkit/d/a;->d:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 62
    new-array v0, v3, [I

    iget v1, p0, Lcom/instagram/filterkit/d/a;->c:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 63
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
