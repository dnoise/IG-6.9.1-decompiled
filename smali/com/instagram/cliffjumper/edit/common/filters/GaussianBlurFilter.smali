.class public Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "GaussianBlurFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private final c:Ljava/nio/FloatBuffer;

.field private final d:Ljava/nio/FloatBuffer;

.field private final e:Ljava/nio/IntBuffer;

.field private final f:Ljava/nio/IntBuffer;

.field private final g:Ljava/nio/IntBuffer;

.field private h:Lcom/instagram/filterkit/b/b;

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/h;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/h;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    .line 41
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    .line 42
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    .line 43
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    .line 44
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    .line 45
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    .line 42
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    .line 43
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    .line 44
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    .line 45
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x8d40

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 62
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    const-string v1, "GaussianBlur"

    invoke-static {v1}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    const-string v1, "GaussianBlurFixed"

    invoke-static {v1}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 147
    :goto_0
    return-object v0

    .line 70
    :cond_1
    new-instance v2, Lcom/instagram/filterkit/b/b;

    invoke-direct {v2, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    .line 71
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "kernelSize"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 77
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "initialGaussian"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 79
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 80
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "width"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 81
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->d()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 82
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "height"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 84
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "position"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 90
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "transformedTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 96
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "staticTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 101
    const-string v1, "GaussianBlurFilter.blurX:setCoordinates"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 104
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v3

    sget-object v4, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 109
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 110
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v2, "blurAlongX"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 112
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v3

    invoke-static {v6, v6, v1, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 114
    const-string v1, "GaussianBlurFilter.blurX:glViewport"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 115
    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v1

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 116
    const-string v1, "GaussianBlurFilter.blurX:glBindFramebuffer"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 117
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/b;->b()V

    .line 118
    const-string v1, "GaussianBlurFilter.blurX:prepareToRender"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 119
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 120
    const-string v1, "GaussianBlurFilter.blurX:glDrawArrays"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 123
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "image"

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v4

    sget-object v5, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v1, v3, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 128
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v6, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 129
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "blurAlongX"

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 131
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v3

    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v4

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 134
    const-string v3, "GaussianBlurFilter.blur:glViewport"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 135
    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v3

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 136
    const-string v3, "GaussianBlurFilter.blur:glBindFramebuffer"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 137
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v3}, Lcom/instagram/filterkit/b/b;->b()V

    .line 138
    const-string v3, "GaussianBlurFilter.blur:prepareToRender"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 139
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 140
    const-string v3, "GaussianBlurFilter.blur:glDrawArrays"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 142
    invoke-virtual {p1, v2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 143
    invoke-virtual {p1, p2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 145
    iput-boolean v6, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->b:Z

    move-object v0, v1

    .line 147
    goto/16 :goto_0
.end method

.method public final a(F)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 151
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    .line 152
    const-wide/high16 v0, -0x4020

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    const-wide/high16 v3, 0x3ff0

    const-wide v5, 0x401921fb54442d18L

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    iget v5, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 155
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    mul-double/2addr v0, v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 156
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c:Ljava/nio/FloatBuffer;

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->B_()V

    .line 161
    return-void
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V

    .line 166
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->h:Lcom/instagram/filterkit/b/b;

    .line 170
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    return-void
.end method
