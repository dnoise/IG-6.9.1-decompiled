.class final Lcom/instagram/common/g/c/c;
.super Landroid/os/Handler;
.source "IgVideoCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/instagram/common/g/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 366
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/g/c/d;

    .line 368
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 370
    :pswitch_0
    invoke-interface {v0}, Lcom/instagram/common/g/c/d;->f()V

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-interface {v0}, Lcom/instagram/common/g/c/d;->g()V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
