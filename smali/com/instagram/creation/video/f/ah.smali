.class public abstract Lcom/instagram/creation/video/f/ah;
.super Lcom/instagram/creation/video/gl/z;
.source "VideoCoverFragmentBase.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ad;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/instagram/creation/video/j/f;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/f/ad;Lcom/instagram/creation/video/gl/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-object p1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    .line 241
    invoke-direct {p0, p2}, Lcom/instagram/creation/video/gl/z;-><init>(Lcom/instagram/creation/video/gl/j;)V

    .line 235
    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    .line 236
    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    .line 242
    new-instance v0, Lcom/instagram/creation/video/j/f;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    .line 243
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    invoke-virtual {p2, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    .line 244
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->h()Z

    move-result v2

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    .line 341
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/instagram/creation/video/f/ak;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ak;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-boolean v0, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->j()V

    .line 358
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/instagram/creation/video/f/ad;->d:Z

    .line 360
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/al;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/al;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method


# virtual methods
.method public H_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/k/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/k/a;->i()V

    .line 250
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iput-boolean v3, v0, Lcom/instagram/creation/video/f/ad;->b:Z

    .line 251
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/creation/video/f/ad;->c:Z

    .line 253
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->q()V

    .line 255
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v1

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v1, v2}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 257
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/f;->a(Lcom/instagram/creation/video/e/c;)V

    .line 259
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/f;->b(Lcom/instagram/creation/b/a/a;)V

    .line 262
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->i()V

    .line 264
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->V()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v1}, Lcom/instagram/creation/video/f/ad;->c(Lcom/instagram/creation/video/f/ad;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/ah;->a(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public final I_()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->r()V

    .line 330
    return-void
.end method

.method public final a()Lcom/instagram/creation/video/j/f;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->e:Lcom/instagram/creation/video/j/f;

    return-object v0
.end method

.method protected abstract a(I)V
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->q()V

    .line 335
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->s()V

    .line 311
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    .line 325
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/aj;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/aj;-><init>(Lcom/instagram/creation/video/f/ah;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ah;->r()V

    .line 278
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->d(Lcom/instagram/creation/video/f/ad;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/ai;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/ai;-><init>(Lcom/instagram/creation/video/f/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 292
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    if-eqz v1, :cond_0

    .line 304
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-boolean v1, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    if-eqz v1, :cond_2

    .line 296
    iget v1, p0, Lcom/instagram/creation/video/f/ah;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 297
    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->d:Z

    .line 299
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->c()V

    .line 300
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->d()V

    .line 302
    :cond_1
    iget v0, p0, Lcom/instagram/creation/video/f/ah;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/f/ah;->b:I

    .line 304
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected final k()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ah;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/f/ah;->c:Z

    .line 375
    return-void
.end method
