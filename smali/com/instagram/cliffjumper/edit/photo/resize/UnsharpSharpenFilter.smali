.class public Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "UnsharpSharpenFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/instagram/cliffjumper/util/a;

.field private static final c:Ljava/nio/FloatBuffer;

.field private static final d:Ljava/nio/FloatBuffer;

.field private static final e:Ljava/nio/FloatBuffer;


# instance fields
.field private final f:Ljava/nio/FloatBuffer;

.field private g:Lcom/instagram/filterkit/b/b;

.field private h:Lcom/instagram/filterkit/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 27
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/e;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/e;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    .line 40
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    .line 41
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->d:Ljava/nio/FloatBuffer;

    .line 42
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->e:Ljava/nio/FloatBuffer;

    .line 52
    const-wide v0, -0x401700001dafffddL

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 53
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    const-wide/high16 v3, 0x3ff0

    const-wide v5, 0x401921fb54442d18L

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide v5, 0x3fe99999a0000000L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    mul-double/2addr v0, v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 59
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 64
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->f:Ljava/nio/FloatBuffer;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->f:Ljava/nio/FloatBuffer;

    .line 72
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

    .line 76
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    const-string v1, "GaussianBlur"

    invoke-static {v1}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 78
    const-string v2, "UnsharpSharpen"

    invoke-static {v2}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v2

    .line 79
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v3, Lcom/instagram/filterkit/b/b;

    invoke-direct {v3, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    .line 83
    new-instance v1, Lcom/instagram/filterkit/b/b;

    invoke-direct {v1, v2}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    .line 84
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->f:Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3f80

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 89
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "pixelWidth"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 92
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "initialGaussian"

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 94
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "position"

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 100
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "transformedTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 106
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "staticTextureCoordinate"

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v3, v3, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 111
    const-string v1, "UnsharpSharpenFilter.blurX:setCoordinates"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 114
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v3

    sget-object v4, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 118
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v2, "blurVector"

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 120
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v2

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v3

    invoke-static {v6, v6, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 122
    const-string v2, "UnsharpSharpenFilter.blurX:glViewport"

    invoke-virtual {p1, v2}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 123
    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v2

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 124
    const-string v2, "UnsharpSharpenFilter.blurX:glBindFramebuffer"

    invoke-virtual {p1, v2}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 125
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v2}, Lcom/instagram/filterkit/b/b;->b()V

    .line 126
    const-string v2, "UnsharpSharpenFilter.blurX:prepareToRender"

    invoke-virtual {p1, v2}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 127
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 128
    const-string v2, "UnsharpSharpenFilter.blurX:glDrawArrays"

    invoke-virtual {p1, v2}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 132
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v3, "image"

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v4

    sget-object v5, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {v2, v3, v4, v5}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 136
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    const-string v3, "blurVector"

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 138
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v3

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->d()I

    move-result v4

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 140
    const-string v3, "UnsharpSharpenFilter.blur:glViewport"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 141
    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v3

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 142
    const-string v3, "UnsharpSharpenFilter.blur:glBindFramebuffer"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 143
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v3}, Lcom/instagram/filterkit/b/b;->b()V

    .line 144
    const-string v3, "UnsharpSharpenFilter.blur:prepareToRender"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 145
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 146
    const-string v3, "UnsharpSharpenFilter.blur:glDrawArrays"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 152
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "original"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 153
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "blurred"

    invoke-interface {v2}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "position"

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 161
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "transformedTextureCoordinate"

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 167
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    const-string v3, "staticTextureCoordinate"

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 172
    const-string v1, "UnsharpSharpenFilter.mask:setCoordinates"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 174
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v3

    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v4

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 177
    const-string v3, "UnsharpSharpenFilter.blur:glViewport"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 178
    invoke-interface {v1}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v3

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 179
    const-string v3, "UnsharpSharpenFilter.blur:glBindFramebuffer"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 180
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v3}, Lcom/instagram/filterkit/b/b;->b()V

    .line 181
    const-string v3, "UnsharpSharpenFilter.mask:prepareToRender"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 182
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 183
    const-string v3, "UnsharpSharpenFilter.blur:glDrawArrays"

    invoke-virtual {p1, v3}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 185
    invoke-virtual {p1, v2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 186
    invoke-virtual {p1, p2, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 188
    iput-boolean v6, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->b:Z

    move-object v0, v1

    .line 190
    goto/16 :goto_0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 197
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->g:Lcom/instagram/filterkit/b/b;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 201
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;->h:Lcom/instagram/filterkit/b/b;

    .line 203
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
