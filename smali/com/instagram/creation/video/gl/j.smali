.class public final Lcom/instagram/creation/video/gl/j;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Z

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLConfig;

.field private g:Ljavax/microedition/khronos/egl/EGLContext;

.field private h:Ljavax/microedition/khronos/egl/EGLSurface;

.field private i:Lcom/instagram/creation/video/gl/z;

.field private volatile j:I

.field private volatile k:Z

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Lcom/instagram/creation/video/gl/p;

.field private o:Lcom/instagram/creation/video/gl/g;

.field private p:Lcom/instagram/creation/video/gl/g;

.field private q:Lcom/instagram/creation/video/gl/j;

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/Object;

.field private volatile t:Z

.field private final u:Ljava/lang/Object;

.field private volatile v:Z

.field private volatile w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    .line 49
    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    .line 56
    new-instance v0, Lcom/instagram/creation/video/gl/k;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/gl/k;-><init>(Lcom/instagram/creation/video/gl/j;)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    .line 73
    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    .line 84
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    .line 86
    sget v0, Lcom/instagram/creation/video/gl/o;->a:I

    iput v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    .line 87
    iput p2, p0, Lcom/instagram/creation/video/gl/j;->m:I

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    .line 91
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    .line 92
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 93
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/instagram/creation/video/gl/j;->m:I

    return v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/instagram/creation/video/gl/j;->m:I

    return p1
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 442
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->q:Lcom/instagram/creation/video/gl/j;

    if-nez v0, :cond_0

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->q:Lcom/instagram/creation/video/gl/j;

    iget-object v0, v0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 441
    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private a(Lcom/instagram/creation/video/gl/g;)V
    .locals 1
    .parameter

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/g;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/gl/j;)Lcom/instagram/creation/video/gl/p;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->j()V

    .line 203
    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    .line 206
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    .line 207
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    .line 208
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    .line 210
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No renderer defined for GL context. Make sure to set it in the controller constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/gl/j;->m:I

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->a(I)V

    .line 216
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->H_()V

    .line 218
    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    .line 222
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v2, :cond_4

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    .line 231
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_3
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->I_()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 236
    :try_start_4
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->d()V

    .line 242
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    .line 243
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 245
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_7

    .line 246
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->i()V

    .line 251
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->g()Z

    move-result v0

    if-nez v0, :cond_7

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    monitor-enter v1

    .line 259
    :try_start_6
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 260
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 228
    :cond_4
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 231
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 243
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 262
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 263
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 265
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->a(Lcom/instagram/creation/video/gl/g;)V

    .line 267
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_9
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot swap buffers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 273
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 275
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->n()V

    .line 278
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->e()V

    goto/16 :goto_0

    .line 282
    :cond_7
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 226
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private i()V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 387
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    .line 389
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 390
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglGetDisplay failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 396
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglInitialize failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->k()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 402
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/gl/j;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    .line 408
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 409
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 414
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 421
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_6

    .line 422
    const-string v0, "GLRenderContext"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_4
    return-void

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 425
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createWindowSurface failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private k()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 449
    new-array v5, v4, [I

    .line 450
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 451
    invoke-static {}, Lcom/instagram/creation/video/gl/j;->l()[I

    move-result-object v2

    .line 452
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglChooseConfig failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 456
    aget-object v0, v3, v6

    .line 458
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l()[I
    .locals 1

    .prologue
    .line 462
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private m()V
    .locals 5

    .prologue
    .line 478
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 481
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 482
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 483
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 484
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 488
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL error = 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    .line 287
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    .line 290
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    if-ne v0, v1, :cond_0

    .line 109
    iput p1, p0, Lcom/instagram/creation/video/gl/j;->j:I

    .line 110
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/instagram/creation/video/gl/j;->j:I

    goto :goto_0
.end method

.method public final a(Landroid/graphics/SurfaceTexture;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    .line 126
    iput p2, p0, Lcom/instagram/creation/video/gl/j;->m:I

    .line 128
    :cond_1
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/i;)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/m;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/gl/m;-><init>(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/i;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/p;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set renderer after GL context has been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    .line 105
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/z;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    .line 98
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    .line 296
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/l;

    const/16 v2, 0x280

    invoke-direct {v1, p0, v2}, Lcom/instagram/creation/video/gl/l;-><init>(Lcom/instagram/creation/video/gl/j;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/n;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/gl/n;-><init>(Lcom/instagram/creation/video/gl/j;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    .line 358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->b()V

    .line 360
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    .line 361
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    .line 370
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 371
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 497
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0

    .line 501
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v0, :cond_0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    .line 155
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_1

    .line 160
    :try_start_4
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 163
    :cond_1
    :goto_2
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing controller"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing renderer"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 136
    :catch_2
    move-exception v0

    .line 137
    :try_start_5
    const-string v1, "GLRenderContext"

    const-string v2, "runSafe threw an exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 139
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v0, :cond_2

    .line 141
    :try_start_6
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 148
    :cond_2
    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 153
    :goto_4
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    .line 155
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 158
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_1

    .line 160
    :try_start_9
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 142
    :catch_4
    move-exception v0

    .line 143
    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing controller"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 149
    :catch_5
    move-exception v0

    .line 150
    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing renderer"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 156
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 139
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v1, :cond_3

    .line 141
    :try_start_a
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 148
    :cond_3
    :goto_5
    :try_start_b
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v1}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 153
    :goto_6
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    const/4 v2, 0x1

    :try_start_c
    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    .line 155
    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 158
    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v1, :cond_4

    .line 160
    :try_start_d
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 163
    :cond_4
    :goto_7
    throw v0

    .line 142
    :catch_6
    move-exception v1

    .line 143
    const-string v2, "GLRenderContext"

    const-string v3, "Error while finishing controller"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 149
    :catch_7
    move-exception v1

    .line 150
    const-string v2, "GLRenderContext"

    const-string v3, "Error while finishing renderer"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 156
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v1

    goto :goto_7
.end method
