.class public final Lcom/instagram/filterkit/d/d;
.super Ljava/lang/Object;
.source "InputTexture.java"

# interfaces
.implements Lcom/instagram/filterkit/e/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/instagram/filterkit/d/d;->a:I

    .line 18
    iput p2, p0, Lcom/instagram/filterkit/d/d;->b:I

    .line 19
    iput p3, p0, Lcom/instagram/filterkit/d/d;->c:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/d/d;->d:Z

    .line 44
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/instagram/filterkit/d/d;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/instagram/filterkit/d/d;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/instagram/filterkit/d/d;->c:I

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [I

    iget v1, p0, Lcom/instagram/filterkit/d/d;->a:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 40
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/instagram/filterkit/d/d;->d:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/instagram/filterkit/d/d;->e()V

    .line 50
    :cond_0
    return-void
.end method
