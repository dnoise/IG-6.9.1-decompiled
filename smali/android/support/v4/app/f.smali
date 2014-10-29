.class public Landroid/support/v4/app/f;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:I

.field f:Landroid/app/Dialog;

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    iput v0, p0, Landroid/support/v4/app/f;->a:I

    .line 74
    iput v0, p0, Landroid/support/v4/app/f;->b:I

    .line 75
    iput-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    .line 76
    iput-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    .line 85
    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/f;->h:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    .line 201
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    .line 205
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/app/f;->g:Z

    .line 206
    iget v0, p0, Landroid/support/v4/app/f;->e:I

    if-ltz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Landroid/support/v4/app/f;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/f;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(I)V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/f;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 213
    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ag;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    iput-boolean v1, p0, Landroid/support/v4/app/f;->h:Z

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    .line 165
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 166
    iput-boolean v1, p0, Landroid/support/v4/app/f;->g:Z

    .line 167
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    .line 170
    iget v0, p0, Landroid/support/v4/app/f;->e:I

    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    .line 183
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 102
    iput v1, p0, Landroid/support/v4/app/f;->a:I

    .line 103
    iget v0, p0, Landroid/support/v4/app/f;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v4/app/f;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/f;->b:I

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    .line 107
    iput p1, p0, Landroid/support/v4/app/f;->b:I

    .line 109
    :cond_2
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;)V

    .line 281
    iget-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    .line 286
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 303
    iget v0, p0, Landroid/support/v4/app/f;->H:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    .line 305
    if-eqz p1, :cond_0

    .line 306
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->a:I

    .line 307
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->b:I

    .line 308
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    .line 309
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    .line 310
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    .line 313
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 303
    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    .line 125
    invoke-virtual {p1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 127
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 128
    return-void
.end method

.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .parameter

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->c(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    .line 323
    iget v0, p0, Landroid/support/v4/app/f;->a:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/f;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 337
    :cond_1
    new-instance v1, Landroid/support/v4/app/e;

    invoke-direct {v1, v0, p0}, Landroid/support/v4/app/e;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    move-object v0, v1

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 331
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    .line 193
    return-void
.end method

.method public final c()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 363
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/f;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/f;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Landroid/support/v4/app/f;->b:I

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 383
    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/f;->E()Landroid/view/View;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 394
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/f;->n()Landroid/content/Context;

    move-result-object v0

    .line 396
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 397
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 399
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 400
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 401
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    if-eqz p1, :cond_0

    .line 403
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 422
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    :cond_0
    iget v0, p0, Landroid/support/v4/app/f;->a:I

    if-eqz v0, :cond_1

    .line 429
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/f;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    :cond_1
    iget v0, p0, Landroid/support/v4/app/f;->b:I

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/f;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    if-nez v0, :cond_3

    .line 435
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_4

    .line 438
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    :cond_4
    iget v0, p0, Landroid/support/v4/app/f;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 441
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/f;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    :cond_5
    return-void
.end method

.method public final k_()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->k_()V

    .line 413
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 417
    :cond_0
    return-void
.end method

.method public final l_()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->l_()V

    .line 448
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 451
    :cond_0
    return-void
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->m_()V

    .line 459
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    .line 464
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    .line 467
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V

    .line 291
    iget-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    .line 297
    :cond_0
    return-void
.end method
