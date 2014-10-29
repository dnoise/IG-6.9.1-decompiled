.class final Lcom/instagram/android/feed/a/a/s;
.super Landroid/os/Handler;
.source "FeedVideoPlayer.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/m;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/m;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/s;-><init>(Lcom/instagram/android/feed/a/a/m;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/feed/a/a/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/s;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 486
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 528
    :goto_0
    return-void

    .line 489
    :pswitch_0
    const/4 v1, 0x0

    .line 491
    :try_start_0
    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/instagram/common/g/c/a;->b(Ljava/lang/String;)Lcom/instagram/common/g/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    :try_start_1
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/common/g/c/e;->a()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/l/a/c;->a(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 498
    :cond_0
    invoke-static {v0}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/instagram/android/feed/a/a/m;->j()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set video for uri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    invoke-static {v0}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw p1

    .line 500
    :pswitch_1
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/l/a/c;->a(Ljava/io/FileDescriptor;)V

    .line 506
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    invoke-static {}, Lcom/instagram/android/feed/a/a/m;->j()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to play local video "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 509
    :catch_2
    move-exception v0

    .line 510
    invoke-static {}, Lcom/instagram/android/feed/a/a/m;->j()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to play local video "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 515
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->e()V

    goto/16 :goto_0

    .line 520
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;Z)Z

    goto/16 :goto_0

    .line 524
    :pswitch_4
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->k(Lcom/instagram/android/feed/a/a/m;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 525
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/s;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    sget v1, Lcom/instagram/android/widget/o;->d:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V

    goto/16 :goto_0

    .line 498
    :catchall_1
    move-exception p1

    goto/16 :goto_2

    .line 496
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
