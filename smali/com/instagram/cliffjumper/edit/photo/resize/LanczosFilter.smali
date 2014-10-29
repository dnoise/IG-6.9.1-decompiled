.class public Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "LanczosFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private final c:Ljava/nio/FloatBuffer;

.field private final d:Ljava/nio/FloatBuffer;

.field private final e:Ljava/nio/FloatBuffer;

.field private final f:Ljava/nio/FloatBuffer;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private final i:Ljava/nio/IntBuffer;

.field private final j:Ljava/nio/IntBuffer;

.field private k:Lcom/instagram/filterkit/b/b;

.field private l:Lcom/instagram/filterkit/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/c;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/c;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    .line 46
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    .line 47
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    .line 48
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    .line 49
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    .line 50
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    .line 51
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    .line 53
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    .line 54
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v11, 0x4000

    const/4 v3, 0x0

    const/16 v10, 0xde1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 65
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const-string v0, "LanczosX"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 67
    if-nez v0, :cond_13

    .line 68
    const-string v0, "LanczosXFixed"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 70
    :goto_0
    if-nez v4, :cond_0

    move-object v0, v3

    .line 209
    :goto_1
    return-object v0

    .line 74
    :cond_0
    const-string v0, "LanczosY"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    const-string v0, "LanczosYFixed"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 78
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v3

    .line 79
    goto :goto_1

    .line 82
    :cond_2
    new-instance v5, Lcom/instagram/filterkit/b/b;

    invoke-direct {v5, v4}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    .line 83
    new-instance v4, Lcom/instagram/filterkit/b/b;

    invoke-direct {v4, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    .line 84
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    .line 87
    :cond_3
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->d()I

    move-result v4

    .line 88
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v0

    .line 89
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v5

    .line 90
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v6

    .line 93
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v1, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 94
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "srcWidth"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 96
    int-to-float v0, v0

    int-to-float v7, v6

    div-float/2addr v0, v7

    .line 97
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 98
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "scale"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 99
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v1, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 100
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v8, "lanczosFactor"

    iget-object v9, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 101
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    mul-float/2addr v0, v11

    invoke-virtual {v7, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 102
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "srcLanczosFactor"

    iget-object v8, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 104
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "position"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 110
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "transformedTextureCoordinate"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 116
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "staticTextureCoordinate"

    sget-object v8, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v8, v8, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 122
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    const-string v7, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v8

    sget-object v9, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v0, v7, v8, v9}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 127
    invoke-virtual {p1, v6, v4}, Lcom/instagram/filterkit/d/c;->a(II)Lcom/instagram/filterkit/e/b;

    move-result-object v6

    .line 128
    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v0

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v7

    invoke-static {v1, v1, v0, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 129
    const-string v0, "LanczosFilter.resizeX:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    .line 130
    const v7, 0x8d40

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v8

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 131
    if-nez v0, :cond_4

    const-string v0, "LanczosFilter.resizeX:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    move v0, v2

    .line 132
    :goto_2
    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v7}, Lcom/instagram/filterkit/b/b;->b()V

    .line 133
    if-nez v0, :cond_5

    const-string v0, "LanczosFilter.resizeX:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    move v0, v2

    .line 134
    :goto_3
    const/4 v7, 0x5

    const/4 v8, 0x4

    invoke-static {v7, v1, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 135
    if-nez v0, :cond_6

    const-string v0, "LanczosFilter.resizeX:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    move v0, v2

    .line 137
    :goto_4
    if-eqz v0, :cond_a

    .line 138
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 139
    const/16 v0, 0x2801

    const/16 v1, 0x2601

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 140
    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 142
    invoke-static {v6}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;)V

    .line 143
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/d/e;)V

    move-object v0, v3

    .line 144
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 131
    goto :goto_2

    :cond_8
    move v0, v1

    .line 133
    goto :goto_3

    :cond_9
    move v0, v1

    .line 135
    goto :goto_4

    .line 147
    :cond_a
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 150
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 151
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v7, "srcHeight"

    iget-object v8, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 153
    int-to-float v0, v4

    int-to-float v4, v5

    div-float/2addr v0, v4

    .line 154
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 155
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v5, "scale"

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 156
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 157
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v5, "lanczosFactor"

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 158
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    mul-float/2addr v0, v11

    invoke-virtual {v4, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "srcLanczosFactor"

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 161
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "position"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 167
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "transformedTextureCoordinate"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 173
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "staticTextureCoordinate"

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v5, v5, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 179
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    const-string v4, "image"

    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v5

    sget-object v7, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v0, v4, v5, v7}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 183
    invoke-interface {v6}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v0

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 184
    const/16 v0, 0x2801

    const/16 v4, 0x2600

    invoke-static {v10, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 185
    const/16 v0, 0x2800

    const/16 v4, 0x2600

    invoke-static {v10, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 187
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v4

    .line 189
    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v5

    invoke-static {v1, v1, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 190
    const-string v0, "LanczosFilter.resizeY:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    .line 191
    :goto_5
    const v5, 0x8d40

    invoke-interface {v4}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v7

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 192
    if-nez v0, :cond_b

    const-string v0, "LanczosFilter.resizeY:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    move v0, v2

    .line 193
    :goto_6
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v5}, Lcom/instagram/filterkit/b/b;->b()V

    .line 194
    if-nez v0, :cond_c

    const-string v0, "LanczosFilter.resizeY:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    move v0, v2

    .line 195
    :goto_7
    const/4 v5, 0x5

    const/4 v7, 0x4

    invoke-static {v5, v1, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 196
    if-nez v0, :cond_d

    const-string v0, "LanczosFilter.resizeY:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    :cond_d
    :goto_8
    invoke-static {v6}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;)V

    .line 199
    invoke-virtual {p1, p2, v3}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 201
    if-eqz v2, :cond_12

    .line 202
    invoke-virtual {p1, v4, v3}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 203
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/d/e;)V

    move-object v0, v3

    .line 204
    goto/16 :goto_1

    :cond_e
    move v0, v1

    .line 190
    goto :goto_5

    :cond_f
    move v0, v1

    .line 192
    goto :goto_6

    :cond_10
    move v0, v1

    .line 194
    goto :goto_7

    :cond_11
    move v2, v1

    .line 196
    goto :goto_8

    .line 207
    :cond_12
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->b:Z

    move-object v0, v4

    .line 209
    goto/16 :goto_1

    :cond_13
    move v4, v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 216
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->k:Lcom/instagram/filterkit/b/b;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 220
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;->l:Lcom/instagram/filterkit/b/b;

    .line 222
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    return-void
.end method
