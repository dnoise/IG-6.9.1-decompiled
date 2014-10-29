.class public Lcom/instagram/creation/video/e/c;
.super Lcom/instagram/creation/base/ui/h;
.source "VideoFilter.java"


# static fields
.field private static final e:[I


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:I

.field protected c:I

.field protected d:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:[I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/instagram/creation/video/e/c;->e:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xc1t 0x84t 0x0t 0x0t
        0xc2t 0x84t 0x0t 0x0t
        0xc3t 0x84t 0x0t 0x0t
        0xc4t 0x84t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/creation/base/ui/h;-><init>(ILjava/lang/String;I)V

    .line 48
    iput-object p1, p0, Lcom/instagram/creation/video/e/c;->a:Landroid/content/Context;

    .line 49
    iput-object p6, p0, Lcom/instagram/creation/video/e/c;->f:Ljava/util/List;

    .line 50
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/creation/video/e/c;->g:[I

    .line 51
    iput-object p5, p0, Lcom/instagram/creation/video/e/c;->h:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static f()Lcom/instagram/creation/video/e/d;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/instagram/creation/video/e/d;

    invoke-direct {v0}, Lcom/instagram/creation/video/e/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/instagram/creation/video/j/l;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/instagram/creation/video/e/c;->e()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 92
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 93
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 95
    iget v0, p0, Lcom/instagram/creation/video/e/c;->c:I

    iget-object v5, p2, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 97
    iget v0, p0, Lcom/instagram/creation/video/e/c;->b:I

    iget-object v5, p2, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move v0, v3

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/e/c;->g:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    sget-object v1, Lcom/instagram/creation/video/e/c;->e:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 102
    iget-object v1, p0, Lcom/instagram/creation/video/e/c;->g:[I

    aget v1, v1, v0

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 106
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final e()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    if-nez v1, :cond_1

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/instagram/creation/video/e/c;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/creation/video/jni/VideoBridge;->compileProgram(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    .line 59
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 61
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    const-string v2, "image"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 63
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    const-string v2, "u_filterStrength"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 65
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    const-string v2, "position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/creation/video/e/c;->c:I

    .line 66
    iget v1, p0, Lcom/instagram/creation/video/e/c;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 68
    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    const-string v2, "transformedTextureCoordinate"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/instagram/creation/video/e/c;->b:I

    .line 69
    iget v1, p0, Lcom/instagram/creation/video/e/c;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/creation/video/e/c;->d()V

    move v1, v0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/e/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/instagram/creation/video/e/c;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/e/a;

    .line 75
    iget v2, p0, Lcom/instagram/creation/video/e/c;->d:I

    iget-object v3, v0, Lcom/instagram/creation/video/e/a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 76
    iget-object v2, p0, Lcom/instagram/creation/video/e/c;->g:[I

    iget-object v3, p0, Lcom/instagram/creation/video/e/c;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/instagram/creation/video/e/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/instagram/creation/base/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "VideoFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error initializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/e/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " program: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/e/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    iget v0, p0, Lcom/instagram/creation/video/e/c;->d:I

    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/instagram/creation/video/e/c;->d:I

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/instagram/creation/video/e/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/instagram/creation/video/e/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
