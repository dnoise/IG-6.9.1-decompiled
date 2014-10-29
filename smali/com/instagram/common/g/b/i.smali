.class final Lcom/instagram/common/g/b/i;
.super Landroid/os/Handler;
.source "IgImageCache.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/g/b/h;


# direct methods
.method private constructor <init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/instagram/common/g/b/i;->a:Lcom/instagram/common/g/b/h;

    .line 500
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/g/b/i;-><init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object v0, p0, Lcom/instagram/common/g/b/i;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/g/b/j;

    invoke-direct {v1, p0, p1}, Lcom/instagram/common/g/b/j;-><init>(Lcom/instagram/common/g/b/i;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 507
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/instagram/common/g/b/i;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->j(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/a/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/instagram/common/g/b/i;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->i(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/b/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/g/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/d;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/instagram/common/g/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
