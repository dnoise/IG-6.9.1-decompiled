.class final Lcom/instagram/common/g/b/n;
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
    .line 472
    iput-object p1, p0, Lcom/instagram/common/g/b/n;->a:Lcom/instagram/common/g/b/h;

    .line 473
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/g/b/n;-><init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 478
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/g/b/m;

    .line 481
    invoke-static {v0}, Lcom/instagram/common/g/b/m;->a(Lcom/instagram/common/g/b/m;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/g/b/m;

    .line 486
    invoke-static {v0}, Lcom/instagram/common/g/b/m;->b(Lcom/instagram/common/g/b/m;)V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
