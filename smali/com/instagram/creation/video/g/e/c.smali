.class public Lcom/instagram/creation/video/g/e/c;
.super Ljava/lang/Object;
.source "TranscodeOutputSurfaceForJBMR2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private d:Landroid/view/Surface;

.field private e:Landroid/opengl/EGLDisplay;

.field private f:Landroid/opengl/EGLContext;

.field private g:Landroid/opengl/EGLSurface;

.field private h:Lcom/instagram/creation/video/g/e/e;

.field private i:Lcom/instagram/creation/video/g/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/instagram/creation/video/g/e/c;

    sput-object v0, Lcom/instagram/creation/video/g/e/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    .line 68
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    .line 69
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    .line 82
    iput-object p1, p0, Lcom/instagram/creation/video/g/e/c;->c:Landroid/view/Surface;

    .line 83
    invoke-direct {p0}, Lcom/instagram/creation/video/g/e/c;->f()V

    .line 84
    invoke-direct {p0}, Lcom/instagram/creation/video/g/e/c;->g()V

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/instagram/creation/video/g/e/c;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    .line 86
    return-void
.end method

.method private a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/instagram/creation/video/g/e/e;

    sget-object v1, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/g/e/e;-><init>(Lcom/instagram/creation/b/a/b;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;

    .line 152
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;

    invoke-virtual {v0, p2}, Lcom/instagram/creation/video/g/e/e;->a(Lcom/instagram/creation/video/e/c;)V

    .line 159
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;

    invoke-virtual {v1}, Lcom/instagram/creation/video/g/e/e;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;

    .line 172
    new-instance v0, Lcom/instagram/creation/video/g/e/d;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;

    invoke-direct {v0, v1, v2, p2}, Lcom/instagram/creation/video/g/e/d;-><init>(Landroid/graphics/SurfaceTexture;Lcom/instagram/creation/video/g/e/e;Lcom/instagram/creation/video/e/c;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;

    .line 178
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 180
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;

    .line 181
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    move v0, v1

    .line 244
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_0

    .line 246
    sget-object v0, Lcom/instagram/creation/video/g/e/c;->a:Ljava/lang/Class;

    const-string v4, "%s: EGL error: 0x%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 247
    goto :goto_0

    .line 249
    :cond_0
    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 97
    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 112
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 113
    new-array v6, v5, [I

    .line 114
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 124
    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v6, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    .line 126
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/instagram/creation/video/g/e/c;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-array v0, v5, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 136
    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/instagram/creation/video/g/e/c;->c:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    .line 138
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/instagram/creation/video/g/e/c;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    return-void

    .line 104
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x42t 0x31t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 120
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private g()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 193
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 195
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 198
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    .line 199
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;

    .line 200
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    .line 202
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;

    .line 203
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;

    .line 204
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;

    .line 205
    iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;

    .line 206
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 236
    return-void
.end method

.method public final b()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/d;->a()V

    .line 217
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/d;->b()V

    .line 221
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
